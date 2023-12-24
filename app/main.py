from flask import Flask, render_template, request, redirect, url_for
import mysql.connector
import getpass

app = Flask(__name__)


while(True):
    try:
        sqlHost = input("Enter the MySQL host address: ")
        sqlDB = input("Enter database name: ")
        sqlUser = input("Username: ")
        sqlPass = getpass.getpass()

        db = mysql.connector.connect(
        host = sqlHost,
        user = sqlUser,
        password = sqlPass,
        database = sqlDB,
        )
        break
    except Exception as e:
        print(f"\nError: {e}")

@app.route('/')
def home():
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT tournament_id, tournament_name FROM tournaments")
    results = cursor.fetchall()
    cursor.close()
#    db.close()
    return render_template('index.html', tournaments=results)

@app.route('/tournaments')
def all_tournaments():
    cursor = db.cursor()
    cursor.execute('SELECT * FROM tournaments')
    tournaments = cursor.fetchall()
    cursor.close()
#    db.close()
    if tournaments is None:
        return 'Tournaments not found!'
    return render_template('tournaments.html', tournaments=tournaments)

@app.route('/tournament/<string:tournament_id>')
def tournament_detail(tournament_id):
    cursor = db.cursor()
    cursor.execute('SELECT * FROM matchs WHERE tournament_id = %s', (tournament_id,))
    tournament = cursor.fetchall()
    cursor.close()
#    db.close()
    if tournament is None:
        return 'Tournament not found!'
    return render_template('tournament.html', tournament=tournament, tournament_id=tournament_id)

@app.route('/goals/<string:match_id>')
def goals(match_id):
    cursor = db.cursor()
    cursor.execute('SELECT * FROM goal WHERE match_id = %s', (match_id,))
    goals = cursor.fetchall()
    cursor.close()
#    db.close()
    if goals is None:
        return 'Goals not found!'
    return render_template('goals.html', goals=goals)

@app.route('/add_goal/<string:match_id>', methods=['GET', 'POST'])
def add_goal(match_id):
    if request.method == 'POST':
        team_name = request.form['team_name']
        first_name = request.form['first_name']
        second_name = request.form['second_name']
        minute = request.form['minute']
        match_period = request.form['match_period']
        own_goal = request.form['own_goal']
        minute = minute + "'"
        
        cursor = db.cursor()
        cursor.execute('SELECT tournament_id,tournament_name,match_name,match_date,stage_name,home_team_name,away_team_name, home_team_score, away_team_score FROM matchs WHERE match_id = %s', (match_id,))
        result = cursor.fetchone()
        cursor.close()
        if result:
            tournament_id, tournament_name, match_name, match_date, stage_name, home_team_name, away_team_name, home_team_score, away_team_score = result
        else:
            print(f"No match found with match_id {match_id}")
        
        if((team_name == "home") and (own_goal == "1")):
            team_name = home_team_name
            away_team_score += 1
        elif((team_name == "home") and (own_goal == "0")):
            team_name = home_team_name
            home_team_score += 1
        elif((team_name == "away") and (own_goal == "1")):
            team_name = away_team_name
            home_team_score += 1
        else:
            team_name = away_team_name
            away_team_score += 1
        score = str(home_team_score) + "-" + str(away_team_score)
        goal_id = 'U'+ team_name[0] + first_name[0] + second_name[0] + minute[:2]
        # Save goal to the database
        cursor = db.cursor()
        sql = "INSERT INTO goal (goal_id,tournament_id,tournament_name,match_id,match_name,match_date,stage_name,team_name,family_name,given_name,minute_label,match_period,own_goal) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
        val = (goal_id, tournament_id, tournament_name, match_id, match_name, match_date, stage_name, team_name, second_name, first_name, minute, match_period, own_goal)
        cursor.execute(sql, val)
        db.commit()
        cursor.close()
        # Update match score on the database
        cursor = db.cursor()
        cursor.execute("UPDATE matchs SET score = %s, home_team_score = %s, away_team_score = %s WHERE match_id = %s ", (score, home_team_score, away_team_score, match_id))
        db.commit()
        cursor.close()
        # Redirect to the goals page after submission       
        return goals(match_id)

    return render_template('add_goal.html', match_id=match_id)

@app.route('/delete_goal/<string:match_id>', methods=['POST'])
def delete_goal(match_id):
    
    goal_id = request.form['goal_id']
    cursor = db.cursor()
    cursor.execute('SELECT home_team_name,away_team_name, home_team_score, away_team_score FROM matchs WHERE match_id = %s', (match_id,))
    result = cursor.fetchone()
    cursor.close()
    home_team_name, away_team_name, home_team_score, away_team_score = result
    
    cursor = db.cursor()
    cursor.execute('SELECT team_name, own_goal FROM goal WHERE goal_id = %s', (goal_id,))
    result = cursor.fetchone()
    cursor.close()
    team_name, own_goal = result
    
    if((team_name == home_team_name) and (own_goal == 1)):
        away_team_score -= 1
    elif((team_name == home_team_name) and (own_goal == 0)):
        home_team_score -= 1
    elif((team_name == away_team_name) and (own_goal == 1)):
        home_team_score -= 1
    else:
        away_team_score -= 1
    score = str(home_team_score) + "-" + str(away_team_score)
    # Update match score on the database
    cursor = db.cursor()
    cursor.execute("UPDATE matchs SET score = %s, home_team_score = %s, away_team_score = %s WHERE match_id = %s ", (score, home_team_score, away_team_score, match_id))
    db.commit()
    cursor.close()
    
    cursor = db.cursor()
    cursor.execute('DELETE FROM goal where goal_id = %s', (goal_id,))
    db.commit()
    
    cursor.close()
    
    # Redirect back to the goals page after deletion
    
    return goals(match_id)

@app.route('/search_team/<string:tournament_id>', methods=['POST'])
def search_team(tournament_id):
    team_name = request.form.get('team_name')
    team_name = team_name.capitalize()

    cursor = db.cursor()
    if(team_name == ""):
        cursor.execute('SELECT * FROM matchs WHERE tournament_id = %s', (tournament_id,))
    else:
        cursor.execute('SELECT * FROM matchs WHERE tournament_id = %s AND (home_team_name = %s OR away_team_name = %s)', (tournament_id, team_name, team_name))

    tournament = cursor.fetchall()
    cursor.close()

    return render_template('tournament.html', tournament=tournament, tournament_id=tournament_id)


@app.route('/awards')
def awards():
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT * FROM awards")
    awards_data = cursor.fetchall()

    cursor.execute("SELECT * FROM award_winners")
    award_winners_data = cursor.fetchall()
    print(award_winners_data)
    return render_template('awards.html', awards=awards_data, winners=award_winners_data)

if __name__ == '__main__':
    app.run(debug=True)
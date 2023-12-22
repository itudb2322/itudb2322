from flask import Flask, render_template
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

@app.route('/tournament/<string:tournament_id>')
def tournament_detail(tournament_id):
    cursor = db.cursor()
    cursor.execute('SELECT * FROM tournaments WHERE tournament_id = %s', (tournament_id,))
    tournament = cursor.fetchone()
    cursor.close()
#    db.close()
    if tournament is None:
        return 'Tournament not found!'
    return render_template('tournament.html', tournament=tournament)

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
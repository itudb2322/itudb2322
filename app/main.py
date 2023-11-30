from flask import Flask, render_template
import mysql.connector

app = Flask(__name__)

db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="1113",
    database="fıfa"
)

@app.route('/')
def home():
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT tournament_id, tournament_name FROM tournaments")
    results = cursor.fetchall()
    cursor.close()
    db.close()
    return render_template('index.html', tournaments=results)

@app.route('/tournament/<string:tournament_id>')
def tournament_detail(tournament_id):
    cursor = db.cursor()
    cursor.execute('SELECT * FROM tournaments WHERE tournament_id = %s', (tournament_id,))
    tournament = cursor.fetchone()
    cursor.close()
    db.close()
    if tournament is None:
        return 'Tournament not found!'
    return render_template('tournament.html', tournament=tournament)


if __name__ == '__main__':
    app.run(debug=True)



from flask import Flask, request, jsonify
from flask_cors import CORS
import mysql.connector

app = Flask(__name__)
CORS = CORS(app)

if __name__ == "__main__":
    app.run(debug=True)

def get_db():
    conn = mysql.connector.connect(host='localhost', username='root', password='461project', database='movies')
    return conn

#default function to be used on the tables page
def get_default():
    conn = get_db()
    cursor = conn.cursor()    
    cursor.execute('SELECT ML.movie_id, ML.language_id, L.language_name \
                    FROM movies.movie_languages as ML \
                    JOIN movies.language as L \
                    ON ML.language_id = L.language_id;')

    result = []
    for i in cursor.fetchall():
        movie = {}
        movie["movie_id"] = i[0]
        movie["lang_id"] = i[1]
        movie["lang_name"] = i[2]
        result.append(movie)
    return jsonify(result)

def get_movie_genre():
    conn = get_db()
    cursor = conn.cursor()  
    cursor.execute('SELECT MG.movie_id, MG.genre_id, G.genre_name \
                    FROM movies.movie_genres as MG \
                    JOIN movies.genre as G \
                    ON MG.genre_id = G.genre_id;')

    result = []
    for i in cursor.fetchall():
        movie_genre = {}
        movie_genre["movie_id"] = i[0]
        movie_genre["genre_id"] = i[1]
        movie_genre["genre_name"] = i[2]
        result.append(movie_genre)
    return jsonify(result)

def get_movie_company():
    conn = get_db()
    cursor = conn.cursor()  
    cursor.execute('SELECT MG.movie_id, MG.genre_id, G.genre_name, M.title, MC.company_id, PC.company_name \
                    FROM movies.movie_genres as MG \
                    JOIN movies.genre as G ON MG.genre_id = G.genre_id \
                    JOIN movies.movie as M ON M.movie_id = MG.movie_id \
                    JOIN movies.movie_company as MC ON MC.movie_id = M.movie_id \
                    JOIN movies.production_company as PC ON PC.company_id = MC.company_id;')
    result = []
    for i in cursor.fetchall():
        movieInfo = {}
        movieInfo["movie_id"] = i[0]
        movieInfo["genre_id"] = i[1]
        movieInfo["genre_name"] = i[2]
        movieInfo["movie_title"] = i[3]
        movieInfo["company_id"] = i[4]
        movieInfo["company_name"] = i[5]
        result.append(movieInfo)
    return jsonify(result)

def get_movie_cast():
    conn = get_db()
    cursor = conn.cursor()  
    cursor.execute('SELECT MC.movie_id, M.title, MC.person_id, MP.person_name, MC.character_name \
                    FROM movies.movie_cast as MC \
                    JOIN movies.person as MP on MP.person_id = MC.person_id \
                    JOIN movies.movie as M ON M.movie_id = MC.movie_id \
                    ORDER BY movie_id;')
    result = []
    for i in cursor.fetchall():
        movieInfo = {}
        movieInfo["movie_id"] = i[0]
        movieInfo["movie_title"] = i[1]
        movieInfo["person_id"] = i[2]
        movieInfo["person_name"] = i[3]
        movieInfo["character_name"] = i[4]
        result.append(movieInfo)
    return jsonify(result)

#_____________# api routes for functions_________________________________

# default route for default function(loads movie_id, lang_id, lang_name)
@app.route('/api/tables/default', methods=['GET'])
def api_get_default():
    return get_default()

# route for getting minimal movie genre data
@app.route('/api/tables/movie_genre', methods=['GET'])
def api_get_movie_genre():
    return get_movie_genre()

# route for getting movie and genre data full
@app.route('/api/tables/movie_company', methods=['GET'])
def api_get_movie_company():
    return get_movie_company()

# route for getting movie cast information
@app.route('/api/tables/movie_cast', methods=['GET'])
def api_get_movie_cast():
    return get_movie_cast()


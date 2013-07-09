#!flask/bin/python
import json
import sqlite3

from random import randint

from flask import g
from flask import Flask
from flask import jsonify
from flask import render_template


app = Flask(__name__)

########################
# DATABASE
########################

# I'm always a bit shit when it comes to Databases.

DATABASE = 'words.db'

def connect_db():
    return sqlite3.connect(DATABASE)

@app.before_request
def before_request():
    g.db = connect_db()

def get_db():
	db = getattr(g, '_database', None)
	if db is None:
		db = g.database = connect_db()
	return db


def init_db():
    with app.app_context():
        db = get_db()
        with app.open_resource('schema.sql', mode='r') as f:
            db.cursor().executescript(f.read())
        db.commit()


def query_db(query, args=(), one=False):
    cur = get_db().execute(query, args)
    rv = cur.fetchall()
    cur.close()
    return (rv[0] if rv else None) if one else rv


@app.teardown_appcontext
def close_connection(exception):
	db = getattr(g,'_database', None)
	if db is not None:
		db.close()


########################
# ROUTING
########################
@app.route('/')
def index():
	return render_template('index.html')

@app.route('/p/<int:request_no>')
def return_paragraph_json(request_no):
	# Some rules:
	# - sentences will have between 13 and 18 words from the DB
	# - this will return 4-6 sentences
	collection = []

	for x in range(0, request_no): # paragraph loop
		sentences = []
		for x in range(0, randint(3,6)): # sentence loop
			req = "SELECT * FROM words ORDER BY RANDOM() LIMIT " + str(randint(13,18))
			cur = g.db.execute(req)
			# totally lifted from flask website. I'd do this way worse on my own
			words = [dict(word=row[1], length=row[2]) for row in cur.fetchall()]
			sentence = dict(words=words, ending=".")
			sentences.append(dict(sentence=sentence))
		p = dict(sentences=sentences)
		collection.append(dict(p=p))


	return json.dumps(dict(collection=collection))


@app.route('/s/<int:request_no>')
def return_sentence_json(request_no):
	# Some rules:
	# - sentences will have between 13 and 18 words from the DB
	# - this will return 4-6 sentences
	collection = []
	sentences = []
	for x in range(0, request_no): # sentence loop
		req = "SELECT * FROM words ORDER BY RANDOM() LIMIT " + str(randint(13,18))
		cur = g.db.execute(req)
		# totally lifted from flask website. I'd do this way worse on my own
		words = [dict(word=row[1], length=row[2]) for row in cur.fetchall()]
		sentence = dict(words=words, ending=".")
		sentences.append(dict(sentence=sentence))

	p = dict(sentences=sentences)
	collection.append(dict(p=p))


	return json.dumps(dict(collection=collection))

@app.route('/w/<int:request_no>')
def return_word_json(request_no):
	# Some rules:
	# - sentences will have between 13 and 18 words from the DB
	# - this will return 4-6 sentences
	collection = []
	sentences = []

	req = "SELECT * FROM words ORDER BY RANDOM() LIMIT " + str(request_no)
	cur = g.db.execute(req)
	# totally lifted from flask website. I'd do this way worse on my own
	words = [dict(word=row[1], length=row[2]) for row in cur.fetchall()]
	sentence = dict(words=words, ending=".")
	sentences.append(dict(sentence=sentence))
	p = dict(sentences=sentences)
	collection.append(dict(p=p))


	return json.dumps(dict(collection=collection))


if __name__ == '__main__':
	app.run(debug = True)
	init_db()
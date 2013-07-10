#!flask/bin/python
import json
import sqlite3
import random

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

all_words = []
all_endings = []
all_injections = []

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

		global all_words
		global all_endings
		global all_injections

		req = "SELECT * FROM words ORDER BY word"
		cur = db.execute(req)
		# totally lifted from flask website. I'd do this way worse on my own
		all_words = [dict(word=row[1], length=row[2]) for row in cur.fetchall()]
		print all_words
		req = "SELECT * FROM endings ORDER BY ending"
		cur = db.execute(req)
		# totally lifted from flask website. I'd do this way worse on my own
		all_endings = [dict(ending=row[1], length=row[2]) for row in cur.fetchall()]

		req = "SELECT * FROM injections ORDER BY injection"
		cur = db.execute(req)
		# totally lifted from flask website. I'd do this way worse on my own
		all_injections = [dict(injection=row[1], length=row[2]) for row in cur.fetchall()]



def query_db(query, args=(), one=False):
    cur = get_db().execute(query, args)
    rv = cur.fetchall()
    cur.close()
    return (rv[0] if rv else None) if one else rv

def check_db():
	if not all_words:
		init_db()

@app.teardown_appcontext
def close_connection(exception):
	db = getattr(g,'_database', None)
	if db is not None:
		db.close()



########################
# HELPERS
########################
def get_words(word_count):
	with app.app_context():
		return random.sample(all_words, word_count)

def get_ending():
	return random.choice(all_endings)


########################
# ROUTING
########################
@app.route('/')
def index():
	check_db()
	return render_template('index.html')

@app.route('/p/<int:request_no>')
def return_paragraph_json(request_no):
	check_db()
	# Some rules:
	# - sentences will have between 13 and 18 words from the DB
	# - this will return 4-6 sentences
	collection = []
	for x in range(0, request_no): # paragraph loop
		sentences = []
		for x in range(0, randint(3,6)): # sentence loop
			# totally lifted from flask website. I'd do this way worse on my own
			words = get_words(randint(13,18))
			sentence = dict(words=words, ending=get_ending())
			sentences.append(dict(sentence=sentence))
		p = dict(sentences=sentences)
		collection.append(dict(p=p))

	return json.dumps(dict(collection=collection))


@app.route('/s/<int:request_no>')
def return_sentence_json(request_no):
	check_db()
	# Some rules:
	# - sentences will have between 13 and 18 words from the DB
	collection = []
	sentences = []
	for x in range(0, request_no): # sentence loop
		req = "SELECT * FROM words ORDER BY RANDOM() LIMIT " + str(randint(13,18))
		cur = g.db.execute(req)
		# totally lifted from flask website. I'd do this way worse on my own
		words = [dict(word=row[1], length=row[2]) for row in cur.fetchall()]
		sentence = dict(words=words, ending=get_ending())
		sentences.append(dict(sentence=sentence))

	p = dict(sentences=sentences)
	collection.append(dict(p=p))


	return json.dumps(dict(collection=collection))

@app.route('/w/<int:request_no>')
def return_word_json(request_no):
	check_db()
	collection = []
	sentences = []

	req = "SELECT * FROM words ORDER BY RANDOM() LIMIT " + str(request_no)
	cur = g.db.execute(req)
	# totally lifted from flask website. I'd do this way worse on my own
	words = [dict(word=row[1], length=row[2]) for row in cur.fetchall()]
	sentence = dict(words=words, ending=get_ending())
	sentences.append(dict(sentence=sentence))
	p = dict(sentences=sentences)
	collection.append(dict(p=p))


	return json.dumps(dict(collection=collection))


if __name__ == '__main__':
	app.run(debug = True)
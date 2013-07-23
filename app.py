#!flask/bin/python
import json
import sqlite3
import random

from random import randint

from flask import Flask
from flask import g
from flask import jsonify
from flask import render_template
from flask import request

app = Flask(__name__)

########################
# DATABASE
########################

# I'm always a bit shit when it comes to Databases.

DATABASE = 'words.db'
S3LOCATION = 'http://canadipsum.s3.amazonaws.com/bg/'

all_words = []
all_endings = []
all_injections = []
all_backgrounds = []

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
		global all_backgrounds

		req = "SELECT * FROM words ORDER BY word"
		cur = db.execute(req)
		# totally lifted from flask website. I'd do this way worse on my own
		all_words = [dict(word=row[1], length=row[2]) for row in cur.fetchall()]
		req = "SELECT * FROM endings ORDER BY ending"
		cur = db.execute(req)
		# totally lifted from flask website. I'd do this way worse on my own
		all_endings = [dict(ending=row[1], length=row[2]) for row in cur.fetchall()]

		req = "SELECT * FROM injections ORDER BY injection"
		cur = db.execute(req)
		# totally lifted from flask website. I'd do this way worse on my own
		all_injections = [dict(injection=row[1], length=row[2]) for row in cur.fetchall()]

		req = "SELECT * FROM backgrounds ORDER BY author"
		cur = db.execute(req)
		# totally lifted from flask website. I'd do this way worse on my own
		all_backgrounds = [dict(filename=row[1], url=row[2], author=row[3], source=row[4]) for row in cur.fetchall()]



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

def upcase_first_letter(s):
    return s[0].upper() + s[1:]

def get_words(word_count):
	with app.app_context():
		return random.sample(all_words, word_count)

def get_ending():
	return random.choice(all_endings)

def get_injection():
	return random.choice(all_injections)

def get_background():
	return random.choice(all_backgrounds)

def construct_paragraph_dict(request_no):
	check_db()
	# Some rules:
	# - sentences will have between 13 and 18 words from the DB
	# - this will return 4-6 sentences
	collection = []
	for x in range(0, request_no):
		sentences = []
		for y in range(0, randint(3,6)):
			# totally lifted from flask website. I'd do this way worse on my own
			words = get_words(randint(13,18))
			sentence = dict(words=words, ending=get_ending(), injection=get_injection(), randPos=randint(0,len(words)-1))
			sentences.append(dict(sentence=sentence))
		p = dict(sentences=sentences)
		collection.append(dict(p=p))

	return dict(collection=collection)


def construct_sentence_dict(request_no):
	check_db()
	# Some rules:
	# - sentences will have between 13 and 18 words from the DB
	collection = []
	sentences = []
	for x in range(0, request_no):
		req = "SELECT * FROM words ORDER BY RANDOM() LIMIT " + str(randint(13,18))
		cur = g.db.execute(req)
		# totally lifted from flask website. I'd do this way worse on my own
		words = [dict(word=row[1], length=row[2]) for row in cur.fetchall()]
		sentence = dict(words=words, ending=get_ending(), injection=get_injection(), randPos=randint(0,len(words)-1))
		sentences.append(dict(sentence=sentence))

	p = dict(sentences=sentences)
	collection.append(dict(p=p))

	return dict(collection=collection)


def construct_word_dict(request_no):
	check_db()

	collection = []
	sentences = []

	req = "SELECT * FROM words ORDER BY RANDOM() LIMIT " + str(request_no)
	cur = g.db.execute(req)
	# totally lifted from flask website. I'd do this way worse on my own
	words = [dict(word=row[1], length=row[2]) for row in cur.fetchall()]
	sentence = dict(words=words, ending=get_ending(), injection=get_injection(), randPos=randint(0,len(words)-1))
	sentences.append(dict(sentence=sentence))
	p = dict(sentences=sentences)
	collection.append(dict(p=p))

	return dict(collection=collection)


def dict_to_paragraphs(collection):
	paragraphs = collection['collection']
	return_val = ""
	for para_dict in paragraphs:
		return_val += "<p>"

		for sentence_dict in para_dict['p']['sentences']:
			new_word_collection = sentence_dict['sentence']['words']
			random_word_no = sentence_dict['sentence']['randPos']
			# commenting out the following line, cause it's breaking stuff
			# new_word_collection[random_word_no]['word'] += sentence_dict['sentence']['injection']['injection']

			sentence = ' '.join(str(word_dict['word']) for word_dict in new_word_collection)
			sentence = upcase_first_letter(sentence)

			return_val += sentence
			ending_dict = sentence_dict['sentence']['ending']
			return_val += ending_dict['ending']+ ' '
		return_val +="</p>"

	return return_val

########################
# ROUTING
########################
@app.route('/', methods=['POST', 'GET'])
def index():
	check_db()
	if request.method == 'POST':
		collection = None
		request_no = int(request.form['numb'])
		request_type = request.form['type']
		result = ""
		if request_type == "s":
			result = dict_to_paragraphs(construct_sentence_dict(request_no))
		elif request_type == "w":
			result = dict_to_paragraphs(construct_word_dict(request_no))
		else:
			result = dict_to_paragraphs(construct_paragraph_dict(request_no))

		return render_template('index.html', result=result, background=get_background(), amz=S3LOCATION)

	return render_template('index.html', background=get_background(), amz=S3LOCATION)

@app.route('/p/<int:request_no>')
def return_paragraphs(request_no):
	if request_no > int(100):
		return "Too many paragraphs. Why would you need that many? Seriously. Max request is 100 paragraphs.", 500

	return json.dumps(construct_paragraph_dict(request_no))


@app.route('/s/<int:request_no>')
def return_sentences(request_no):
	if request_no > int(50):
		return "Too many sentences. Why would you need that many? Seriously. Max request size is 50 sentences.", 500
	return json.dumps(construct_sentence_dict(request_no))

@app.route('/w/<int:request_no>')
def return_words(request_no):
	if request_no > int(200):
		return "Too many words. Why would you need that many? Seriously. Max request size is 200 words", 500
	return json.dumps(construct_word_dict(request_no))


if __name__ == '__main__':
	app.run(debug = True)
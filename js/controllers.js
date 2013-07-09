String.prototype.capitalize = function() {
    return this.charAt(0).toUpperCase() + this.slice(1);
}

function WordCtrl($scope) {

	$scope.amount = 1;
	$scope.returnType = 'paragraph';
	// This will eventually be dynamically populated via a call to the DB
	$scope.paragraphs = [];

	$scope.requestParagraphs = function(){
		// pass amount and type to a get request url
		// from server: gets JSON string and stores it in the paragraphs

		// for now...
		$scope.paragraphs = [
			{ "p": {
				"sentences" :[
					{ "sentence": {
						"words": [
						{ 
							"word": "allophone",
							"length": 9
						},
						{ 
							"word": "eh",
							"length": 2
						},
						{ 
							"word": "anglophone",
							"length": 10
						},
						{ 
							"word": "francophone",
							"length": 11
						},
						{ 
							"word": "joual",
							"length": 5
						},
						{ 
							"word": "back bacon",
							"length": 10
						},
						{ 
							"word": "brown bread",
							"length": 11
						}
						],
						"ending": "."
					}
				}
				]
			}
		},
		{ "p": {
				"sentences" :[
					{ "sentence": {
						"words": [
						{ 
							"word": "Timbits",
							"length": 9
						},
						{ 
							"word": "serviette",
							"length": 2
						},
						{ 
							"word": "runners",
							"length": 10
						},
						{ 
							"word": "toonie",
							"length": 11
						},
						{ 
							"word": "tuque",
							"length": 5
						},
						{ 
							"word": "washroom",
							"length": 10
						},
						{ 
							"word": "poutine",
							"length": 11
						},
						{
							"word": "Bluenoser",
							"length": 6
						}
						],
						"ending": "."
					}
				}
				]
			}
		},
		{ "p": {
				"sentences" :[
					{ "sentence": {
						"words": [
						{ 
							"word": "Cape Bretoner",
							"length": 9
						},
						{ 
							"word": "Crappy Tire",
							"length": 2
						},
						{ 
							"word": "double-double",
							"length": 10
						},
						{ 
							"word": "down south",
							"length": 11
						},
						{ 
							"word": "Farmer Tan",
							"length": 5
						},
						{ 
							"word": "Flat",
							"length": 10
						},
						{ 
							"word": "Flippin",
							"length": 11
						}
						],
						"ending": "."
					}},
					{ "sentence": {
						"words": [
						{ 
							"word": "Gino",
							"length": 9
						},
						{ 
							"word": "Goal Suck",
							"length": 2
						},
						{ 
							"word": "Gorby",
							"length": 10
						},
						{ 
							"word": "GTA",
							"length": 11
						},
						{ 
							"word": "Habs",
							"length": 5
						},
						{ 
							"word": "half-sack",
							"length": 10
						},
						{ 
							"word": "The Hammer",
							"length": 11
						},
						{ 
							"word": "Housecoat",
							"length": 11
						},
						{ 
							"word": "Hoodie",
							"length": 11
						}
						],
						"ending": "."
					}}
				
				]
			}
		}
		];

	};

	// loops through a paragraph's sentences and stitches them together.
	$scope.renderSentences = function(paragraph){
		var returnVal = [];
		for(sentence in paragraph.p.sentences){
			if (paragraph.p.sentences.hasOwnProperty(sentence)) {
				returnVal.push(renderSentence(paragraph.p.sentences[sentence].sentence));
			}
		}
		return returnVal.join(" ");
	};

	// workhorse function that stitches a sentence together
	var renderSentence = function(sentence) {
		var returnVal = [],;
		angular.forEach(sentence.words, function(w,key){
			// TODO: add in break characters such as , : ; -
			if(key == 0)
				returnVal.push(w.word.capitalize()); 
			else
				returnVal.push(w.word);
		});

		return = returnVal.join(" ") + sentence.ending;
	};
}
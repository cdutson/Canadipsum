String.prototype.capitalize = function() {
    return this.charAt(0).toUpperCase() + this.slice(1);
}

angular.module('canadipsum', []).config(function($interpolateProvider){
        $interpolateProvider.startSymbol('{[{').endSymbol('}]}');
    }
);

function WordCtrl($scope, $http) {

	$scope.amount = 1;
	$scope.returnType = 'p';
	// This will eventually be dynamically populated via a call to the DB
	$scope.paragraphs = [];

	$scope.requestParagraphs = function(){
		// pass amount and type to a get request url
		// from server: gets JSON string and stores it in the paragraphs
		var url = $scope.returnType +"/" + $scope.amount;
		$http.get(url).success(function(data) {
    		$scope.paragraphs = data.collection;
  		});
	};

	// loops through a paragraph's sentences and stitches them together.
	$scope.renderSentences = function(paragraph){
		var returnVal = [];
		console.log(paragraph);
		for(sentence in paragraph.p.sentences){
			if (paragraph.p.sentences.hasOwnProperty(sentence)) {
				returnVal.push(renderSentence(paragraph.p.sentences[sentence].sentence));
			}
		}
		return returnVal.join(" ");
	};

	// workhorse function that stitches a sentence together
	var renderSentence = function(sentence) {
		var returnVal = [];
		angular.forEach(sentence.words, function(w,key){
			// TODO: add in break characters such as , : ; -
			if(key == 0)
				returnVal.push(w.word.capitalize()); 
			else
				returnVal.push(w.word);
		});

		return returnVal.join(" ") + sentence.ending.ending;
	};
}
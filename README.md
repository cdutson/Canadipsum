learn-a-bunch-o-things
======================

My mini project to combine a bunch of new tech that I'm looking into.

Point of the project: combine my knew-found knowledge of python, my foray into angular.js, and my first attempt at
creating a RESTful API. Oh, and lets see if I can handle test-driven development as well. BECAUSE WHY NOT.

Description
-----------

A Lorem Ipsum generator with a Canadian twist. I'm going to create an angular.js application that you can request a 
number of paragraphs, number of sentences per, or number of words. The words shall be Canadian in nature! Why?
Because it doesn't exist and I wanna learn.

Setup
-----

If you actually want to run this, you'll need to set this up in a virtualenv using flask.


Structure
---------

Back-end:
* Python
* Flask or some other simple web system (too lazy to do it from scratch; also: insane)
* REST API to request JSON object of paragraph items
* All words stored in Database using SQLite
* Database is populated on service load using gross brute-force script (not generally needed, but in my case, why not?)
* Works without JavaScript

Json example:
```json
{ "collection": 
  [
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
  ]
}
```

Front-end:
* Canadian themed (obviously)
* Simple form (done)
  * Input box (done)
  * Radio-list for various options (done)
  * Submit button (gets hijacked with JS) - hijack is done, no basic version yet
* Angular.js handles the page interaction - working
* AJAX requests to API and handle the return of results - no backend yet
* Test-driven dev for this as well (? how do you test angular.js apps...) - apparently you can?

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

Structure
---------

Back-end:
* Python
* Flask or some other simple web system (too lazy to do it from scratch; also: insane)
* REST API to request JSON object of paragraph items
* All words stored in either JSON blob or using SQLite (undecided)
* Works without JavaScript

Json example:
```json
{ "collection": 
  [
    { "p": 
      { "sentence": {
        "words": [
          { 
            "word": "Tim Hortons",
            "length": 11
          },
          { 
            "word": "eh",
            "length": 2
          },
          { 
            "word": "CANADA",
            "length": 6
          }
        ],
        "ending": "!"
        }
      }
    },
    { "p": 
        { "sentence": {
          "words": [
            { 
              "word": "Tim Hortons",
              "length": 11
            },
            { 
              "word": "eh",
              "length": 2
            },
            { 
              "word": "CANADA",
              "length": 6
            }
          ],
          "ending": "!"
          }
        }
      }
    ]
  }
```

Front-end:
* Canadian themed (obviously)
* Simple form
  * Input box
  * Radio-list for various options
  * Submit button (gets hijacked with JS)
* Angular.js handles the page interaction
* AJAX requests to API and handle the return of results
* Test-driven dev for this as well (? how do you test angular.js apps...)

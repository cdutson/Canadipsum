learn-a-bunch-o-things
======================

My mini project to combine a bunch of new tech that I'm looking into.

Point of the project: combine my knew-found knowledge of python, my foray into angular.js, and my first attempt at
creating a RESTful API. Oh, and lets see if I can handle test-driven development as well. BECAUSE WHY NOT. (I did not 
end up doing this. I am a bad person).

URL: http://canadipsum.com

JSON API usage example

```
# This will return 1 paragraph
http://canadipsum.com/p/1

# This will return 3 sentences
http://canadipsum.com/s/3

# This will return 6 words
http://canadipsum.com/w/6
```

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
* Python - done
* Flask or some other simple web system (too lazy to do it from scratch; also: insane) - done
* REST API to request JSON object of paragraph items - done
* All words stored in Database using SQLite - done
* Database is populated on service load using gross brute-force script (not generally needed, but in my case, why not?) -done
* Works without JavaScript -done

Json example:
```json
{
    "collection": [
        {
            "p": {
                "sentences": [
                    {
                        "sentence": {
                            "randPos": 12,
                            "injection": {
                                "length": 1,
                                "injection": ","
                            },
                            "words": [
                                {
                                    "length": 6,
                                    "word": "canuck"
                                },
                                {
                                    "length": 9,
                                    "word": "Hali"
                                },
                                {
                                    "length": 7,
                                    "word": "rippers"
                                },
                                {
                                    "length": 6,
                                    "word": "hoodie"
                                },
                                {
                                    "length": 8,
                                    "word": "washroom"
                                },
                                {
                                    "length": 6,
                                    "word": "spinny"
                                },
                                {
                                    "length": 7,
                                    "word": "chinook"
                                },
                                {
                                    "length": 21,
                                    "word": "Kentucky Fried Rabbit"
                                },
                                {
                                    "length": 7,
                                    "word": "snocked"
                                },
                                {
                                    "length": 16,
                                    "word": "Jesus H. Murphey"
                                },
                                {
                                    "length": 7,
                                    "word": "The Peg"
                                },
                                {
                                    "length": 11,
                                    "word": "The Islands"
                                },
                                {
                                    "length": 7,
                                    "word": "Hogtown"
                                },
                                {
                                    "length": 9,
                                    "word": "allophone"
                                },
                                {
                                    "length": 3,
                                    "word": "rad"
                                },
                                {
                                    "length": 13,
                                    "word": "Cape Bretoner"
                                },
                                {
                                    "length": 9,
                                    "word": "maritimer"
                                },
                                {
                                    "length": 11,
                                    "word": "Crappy Tire"
                                }
                            ],
                            "ending": {
                                "length": 4,
                                "ending": ", eh!"
                            }
                        }
                    },
                    {
                        "sentence": {
                            "randPos": 2,
                            "injection": {
                                "length": 1,
                                "injection": ";"
                            },
                            "words": [
                                {
                                    "length": 6,
                                    "word": "loonie"
                                },
                                {
                                    "length": 6,
                                    "word": "hoodie"
                                },
                                {
                                    "length": 15,
                                    "word": "rotten ronnie's"
                                },
                                {
                                    "length": 9,
                                    "word": "half-sack"
                                },
                                {
                                    "length": 15,
                                    "word": "concession road"
                                },
                                {
                                    "length": 7,
                                    "word": "gripper"
                                },
                                {
                                    "length": 13,
                                    "word": "Cape Bretoner"
                                },
                                {
                                    "length": 7,
                                    "word": "screech"
                                },
                                {
                                    "length": 4,
                                    "word": "habs"
                                },
                                {
                                    "length": 7,
                                    "word": "Timmy's"
                                },
                                {
                                    "length": 9,
                                    "word": "scarberia"
                                },
                                {
                                    "length": 11,
                                    "word": "Horny Tim's"
                                },
                                {
                                    "length": 8,
                                    "word": "out east"
                                },
                                {
                                    "length": 12,
                                    "word": "buckle bunny"
                                }
                            ],
                            "ending": {
                                "length": 4,
                                "ending": ", eh."
                            }
                        }
                    },
                    {
                        "sentence": {
                            "randPos": 10,
                            "injection": {
                                "length": 1,
                                "injection": ","
                            },
                            "words": [
                                {
                                    "length": 7,
                                    "word": "screech"
                                },
                                {
                                    "length": 13,
                                    "word": "Cape Bretoner"
                                },
                                {
                                    "length": 4,
                                    "word": "habs"
                                },
                                {
                                    "length": 7,
                                    "word": "Hogtown"
                                },
                                {
                                    "length": 9,
                                    "word": "goal suck"
                                },
                                {
                                    "length": 3,
                                    "word": "rez"
                                },
                                {
                                    "length": 8,
                                    "word": "spudhead"
                                },
                                {
                                    "length": 13,
                                    "word": "country cable"
                                },
                                {
                                    "length": 7,
                                    "word": "floater"
                                },
                                {
                                    "length": 9,
                                    "word": "Hali"
                                },
                                {
                                    "length": 5,
                                    "word": "ginch"
                                },
                                {
                                    "length": 5,
                                    "word": "gotch"
                                },
                                {
                                    "length": 4,
                                    "word": "foof"
                                },
                                {
                                    "length": 9,
                                    "word": "the patch"
                                },
                                {
                                    "length": 6,
                                    "word": "scivey"
                                },
                                {
                                    "length": 7,
                                    "word": "Timmy's"
                                },
                                {
                                    "length": 4,
                                    "word": "deke"
                                },
                                {
                                    "length": 11,
                                    "word": "The Islands"
                                }
                            ],
                            "ending": {
                                "length": 10,
                                "ending": ", ya know?"
                            }
                        }
                    },
                    {
                        "sentence": {
                            "randPos": 13,
                            "injection": {
                                "length": 1,
                                "injection": ":"
                            },
                            "words": [
                                {
                                    "length": 5,
                                    "word": "g'wan"
                                },
                                {
                                    "length": 10,
                                    "word": "garburator"
                                },
                                {
                                    "length": 9,
                                    "word": "goal suck"
                                },
                                {
                                    "length": 5,
                                    "word": "gotch"
                                },
                                {
                                    "length": 8,
                                    "word": "stagette"
                                },
                                {
                                    "length": 11,
                                    "word": "farmer turn"
                                },
                                {
                                    "length": 4,
                                    "word": "puck"
                                },
                                {
                                    "length": 21,
                                    "word": "Kentucky Fried Pigeon"
                                },
                                {
                                    "length": 7,
                                    "word": "joggers"
                                },
                                {
                                    "length": 13,
                                    "word": "monster house"
                                },
                                {
                                    "length": 6,
                                    "word": "hoodie"
                                },
                                {
                                    "length": 8,
                                    "word": "oilberta"
                                },
                                {
                                    "length": 15,
                                    "word": "rotten ronnie's"
                                },
                                {
                                    "length": 18,
                                    "word": "Dead Bird in a Box"
                                },
                                {
                                    "length": 14,
                                    "word": "Telephone City"
                                }
                            ],
                            "ending": {
                                "length": 5,
                                "ending": ", eh?"
                            }
                        }
                    },
                    {
                        "sentence": {
                            "randPos": 12,
                            "injection": {
                                "length": 1,
                                "injection": ":"
                            },
                            "words": [
                                {
                                    "length": 13,
                                    "word": "stubblejumper"
                                },
                                {
                                    "length": 5,
                                    "word": "hoser"
                                },
                                {
                                    "length": 10,
                                    "word": "Haligonian"
                                },
                                {
                                    "length": 8,
                                    "word": "out west"
                                },
                                {
                                    "length": 5,
                                    "word": "sauga"
                                },
                                {
                                    "length": 6,
                                    "word": "G.T.A."
                                },
                                {
                                    "length": 7,
                                    "word": "Giv'n'r"
                                },
                                {
                                    "length": 5,
                                    "word": "swish"
                                },
                                {
                                    "length": 9,
                                    "word": "Stinktown"
                                },
                                {
                                    "length": 11,
                                    "word": "sixty-sixer"
                                },
                                {
                                    "length": 11,
                                    "word": "The Islands"
                                },
                                {
                                    "length": 7,
                                    "word": "runners"
                                },
                                {
                                    "length": 13,
                                    "word": "Jesus Murphey"
                                },
                                {
                                    "length": 10,
                                    "word": "The Island"
                                },
                                {
                                    "length": 11,
                                    "word": "Horny Tim's"
                                },
                                {
                                    "length": 6,
                                    "word": "loonie"
                                },
                                {
                                    "length": 3,
                                    "word": "dec"
                                }
                            ],
                            "ending": {
                                "length": 1,
                                "ending": "!"
                            }
                        }
                    }
                ]
            }
        }
    ]
}
```

Front-end:
* Canadian themed (obviously) - done
* Simple form - done
  * Input box - done
  * Radio-list for various options - done
  * Submit button (gets hijacked with JS)  - done
* Angular.js handles the page interaction - done, except the spazzy threading issue I worked around
* AJAX requests to API and handle the return of results - done
* Test-driven dev for this as well (? how do you test angular.js apps...) - apparently you can? - NOPE
* BONUS: learned how to Amazon S3, so I got a random background thing in there

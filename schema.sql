drop table if exists words;
drop table if exists endings;
drop table if exists injections;

create table words (
  id integer primary key autoincrement,
  word text not null,
  length integer not null
);

create table endings (
	id integer primary key autoincrement,
	ending text not null,
	length integer not null
);

create table injections (
	id integer primary key autoincrement,
	injection text not null,
	length integer not null
);

/* endings */
insert into endings(ending,length) values('.', 1);
insert into endings(ending,length) values('?', 1);
insert into endings(ending,length) values('!', 1);
insert into endings(ending,length) values(', eh?', 5);
insert into endings(ending,length) values(' eh!', 4);
insert into endings(ending,length) values(', ya know?', 10);

/* injections */
insert into injections(injection,length) values(',', 1);
insert into injections(injection,length) values(':', 1);
insert into injections(injection,length) values(';', 1);
insert into injections(injection,length) values(' you know, and', 14);

/* pulled from http://www.canadaka.net/content/page/124-canadian-slang--english-words*/
insert into words(word,length) values('allophone', 9);
insert into words(word,length) values('bachelor', 8);
insert into words(word,length) values('bunny hug', 9);
insert into words(word,length) values('bytown', 6);
insert into words(word,length) values('canuck', 6);
insert into words(word,length) values('chesterfield', 12);
insert into words(word,length) values('chinook', 7);
insert into words(word,length) values('concession road', 15);
insert into words(word,length) values('dayliner', 8);
insert into words(word,length) values('deke', 4);
insert into words(word,length) values('double-double', 13);
insert into words(word,length) values('eaves troughs', 13);
insert into words(word,length) values('eh', 2);
insert into words(word,length) values('fishfly', 7);
insert into words(word,length) values('garburator', 10);
insert into words(word,length) values('homo milk', 9);
insert into words(word,length) values('humidex', 7);
insert into words(word,length) values('hydro', 5);
insert into words(word,length) values('joe job', 7);
insert into words(word,length) values('kokanee', 7);
insert into words(word,length) values('loonie', 6);
insert into words(word,length) values('lumber jacket', 13);
insert into words(word,length) values('Nanaimo bar', 11);
insert into words(word,length) values('Newfie', 6);
insert into words(word,length) values('parkade', 7);
insert into words(word,length) values('pickerel', 8);
insert into words(word,length) values('pop', 3);
insert into words(word,length) values('rad', 3);
insert into words(word,length) values('regular', 7);
insert into words(word,length) values('runners', 7);
insert into words(word,length) values('Timbits', 7);
insert into words(word,length) values('toonie', 6);
insert into words(word,length) values('tuque', 5);
insert into words(word,length) values('washroom', 8);
insert into words(word,length) values('poutine', 7);
insert into words(word,length) values('The 905', 7);
insert into words(word,length) values('bluenoser', 9);
insert into words(word,length) values('buckle bunny', 12);
insert into words(word,length) values('Caper', 5);
insert into words(word,length) values('Cape Bretoner', 13);
insert into words(word,length) values('Cowtown', 7);
insert into words(word,length) values('Crappy Tire', 11);
insert into words(word,length) values('dec', 3);
insert into words(word,length) values('down south', 10);
insert into words(word,length) values('farmer tan', 10);
insert into words(word,length) values('farmer turn', 11);
insert into words(word,length) values('farmer vision', 13);
insert into words(word,length) values('peasant vision', 14);
insert into words(word,length) values('country cable', 13);
insert into words(word,length) values('T.F.C.', 6);
insert into words(word,length) values('flat', 4);
insert into words(word,length) values('floater', 7);
insert into words(word,length) values('flippin', 7);
insert into words(word,length) values('foof', 4);
insert into words(word,length) values('forty pounder', 13);
insert into words(word,length) values('Garden City', 11);
insert into words(word,length) values('Gastown', 7);
insert into words(word,length) values('gino', 4);
insert into words(word,length) values("Giv'n'r", 7);
insert into words(word,length) values('goal suck', 9);
insert into words(word,length) values('gitch', 5);
insert into words(word,length) values('gotch', 5);
insert into words(word,length) values('ginch', 5);
insert into words(word,length) values('gonch', 5);
insert into words(word,length) values('gorby', 5);
insert into words(word,length) values('gripper', 7);
insert into words(word,length) values('G.T.A.', 6);
insert into words(word,length) values('gunt', 4);
insert into words(word,length) values("g'wan", 5);
insert into words(word,length) values("g'way", 5);
insert into words(word,length) values('habs', 4);
insert into words(word,length) values('had the biscuit', 15);
insert into words(word,length) values('half-sack', 9);
insert into words(word,length) values('Hali', 9);
insert into words(word,length) values('Haligonian', 10);
insert into words(word,length) values('The Hammer', 10);
insert into words(word,length) values('The Hat', 7);
insert into words(word,length) values("head'r", 6);
insert into words(word,length) values('Hogtown', 7);
insert into words(word,length) values('housecoat', 9);
insert into words(word,length) values('hoodie', 6);
insert into words(word,length) values("Horny Tim's", 11);
insert into words(word,length) values('hose', 4);
insert into words(word,length) values('hosed', 5);
insert into words(word,length) values('hoser', 5);
insert into words(word,length) values('huck', 4);
insert into words(word,length) values('The Interior', 12);
insert into words(word,length) values('The Island', 10);
insert into words(word,length) values('The Islands', 11);
insert into words(word,length) values('Islander', 8);
insert into words(word,length) values('jam buster', 10);
insert into words(word,length) values('The Jaw', 7);
insert into words(word,length) values('jawbone', 7);
insert into words(word,length) values('Jesus Murphey', 13);
insert into words(word,length) values('Jesus H. Murphey', 16);
insert into words(word,length) values('jib', 3);
insert into words(word,length) values('joggers', 7);
insert into words(word,length) values('Kentucky Fried Pigeon', 21);
insert into words(word,length) values('Kentucky Fried Rabbit', 21);
insert into words(word,length) values('Dead Bird in a Box', 18);
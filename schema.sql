drop table if exists words;
drop table if exists endings;
drop table if exists injections;
drop table if exists backgrounds;

create table backgrounds(
	id integer primary key autoincrement,
	filename text not null,
	url text not null,
	author text not null,
	source text not null
);

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

/* background images */

insert into backgrounds(filename,url,author,source) values('33586567_4cd86fbe0b_o.jpg', 'http://www.flickr.com/photos/sparkyleigh/33586567/', 'Leigh Hilbert','Flickr');
insert into backgrounds(filename,url,author,source) values('257831124_961f4ecc92_o.jpg', 'http://www.flickr.com/photos/62904109@N00/257831124/', 'palindrome6996','Flickr');
insert into backgrounds(filename,url,author,source) values('8086903740_78388498cb_o.jpg', 'http://www.flickr.com/photos/mgabelmann/8086903740/', 'Mike Gabelmann','Flickr');
insert into backgrounds(filename,url,author,source) values('2123523275_bf10e0ef17_o.jpg', 'http://www.flickr.com/photos/alexindigo/2123523275/', 'Alex Indigo','Flickr');
insert into backgrounds(filename,url,author,source) values('2336548126_871b4d7852_o.jpg', 'http://www.flickr.com/photos/mikebaird/2336548126/', 'Mike Baird','Flickr');
insert into backgrounds(filename,url,author,source) values('4382484323_fd2b3a80fa_o.jpg', 'http://www.flickr.com/photos/syume/4382484323/', 's.yume','Flickr');
insert into backgrounds(filename,url,author,source) values('7227926738_4bd6a779e4_o.jpg', 'http://www.flickr.com/photos/hobolens/7227926738/', 'Brian (Hobolens)','Flickr');
insert into backgrounds(filename,url,author,source) values('7176210474_2a53a3c9da_o.jpg', 'http://www.flickr.com/photos/hobolens/7176210474/', 'Brian (Hobolens)','Flickr');
insert into backgrounds(filename,url,author,source) values('4367000814_444c09a89c_o.jpg', 'http://www.flickr.com/photos/syume/4367000814/', 's.yume','Flickr');
insert into backgrounds(filename,url,author,source) values('4371177429_f998e1b76f_o.jpg', 'http://www.flickr.com/photos/syume/4371177429/', 's.yume','Flickr');
insert into backgrounds(filename,url,author,source) values('5856004982_f525f48a94_o.jpg', 'http://www.flickr.com/photos/kk/5856004982/', 'kris krüg','Flickr');
insert into backgrounds(filename,url,author,source) values('5841019603_3055f42aed_o.jpg', 'http://www.flickr.com/photos/13793794@N02/5841019603/', 'Matt Gibson','Flickr');
insert into backgrounds(filename,url,author,source) values('1587747079_b6ee5d4c53_o.jpg', 'http://www.flickr.com/photos/lebatihem/1587747079/', 'Ehsan','Flickr');
insert into backgrounds(filename,url,author,source) values('1588612194_accd01ba0f_o.jpg', 'http://www.flickr.com/photos/lebatihem/1588612194/', 'Ehsan','Flickr');
insert into backgrounds(filename,url,author,source) values('1588620090_bd0ea4878d_o.jpg', 'http://www.flickr.com/photos/lebatihem/1588620090/', 'Ehsan','Flickr');
insert into backgrounds(filename,url,author,source) values('1588628360_e61326abb5_o.jpg', 'http://www.flickr.com/photos/lebatihem/1588628360/', 'Ehsan','Flickr');
insert into backgrounds(filename,url,author,source) values('1587720707_ca3364576f_o.jpg', 'http://www.flickr.com/photos/lebatihem/1587720707/', 'Ehsan','Flickr');
insert into backgrounds(filename,url,author,source) values('1588631124_b42f011de2_o.jpg', 'http://www.flickr.com/photos/lebatihem/1588631124/', 'Ehsan','Flickr');
insert into backgrounds(filename,url,author,source) values('1588622894_1348bb6f49_o.jpg', 'http://www.flickr.com/photos/lebatihem/1588622894/', 'Ehsan','Flickr');
insert into backgrounds(filename,url,author,source) values('1587744415_f8c0ed2aa6_o.jpg', 'http://www.flickr.com/photos/lebatihem/1587744415/', 'Ehsan','Flickr');
insert into backgrounds(filename,url,author,source) values('1587728695_435515ba9f_o.jpg', 'http://www.flickr.com/photos/lebatihem/1587728695/', 'Ehsan','Flickr');
insert into backgrounds(filename,url,author,source) values('1587717987_e843aeb4f9_o.jpg', 'http://www.flickr.com/photos/lebatihem/1587717987/', 'Ehsan','Flickr');
insert into backgrounds(filename,url,author,source) values('1587736431_099a595b92_o.jpg', 'http://www.flickr.com/photos/lebatihem/1587736431/', 'Ehsan','Flickr');
insert into backgrounds(filename,url,author,source) values('1587726031_4f040df502_o.jpg', 'http://www.flickr.com/photos/lebatihem/1587726031/', 'Ehsan','Flickr');
insert into backgrounds(filename,url,author,source) values('1587715431_e435c2090a_o.jpg', 'http://www.flickr.com/photos/lebatihem/1587715431/', 'Ehsan','Flickr');
insert into backgrounds(filename,url,author,source) values('2853087722_116eb85e46_o.jpg', 'http://www.flickr.com/photos/sparkyleigh/33586567/', 'Dennis Jarvis','Flickr');
insert into backgrounds(filename,url,author,source) values('5222252730_2dd0060b93_o.jpg', 'http://www.flickr.com/photos/tourismnewbrunswick/5222252730/', 'New Brunswick Tourism','Flickr');
insert into backgrounds(filename,url,author,source) values('409814158_6afbf2ea69_o.jpg', 'http://www.flickr.com/photos/ytwhitelight/409814158/', 'Amanda Graham','Flickr');
insert into backgrounds(filename,url,author,source) values('3865019138_5e950deae9_o.jpg', 'http://www.flickr.com/photos/iceninejon/3865019138/', 'Jonathan (IceNineJon)','Flickr');
insert into backgrounds(filename,url,author,source) values('1079205948_b31f467d72_o.jpg', 'http://www.flickr.com/photos/woodysworld1778/1079205948/', 'Jerry "Woody"','Flickr');
insert into backgrounds(filename,url,author,source) values('6264658473_bced97bec2_o.jpg', 'http://www.flickr.com/photos/madlyinlovewithlife/6264658473/', 'madlyinlovewithlife','Flickr');
insert into backgrounds(filename,url,author,source) values('8593116524_aa6a5b365c_o.jpg', 'http://www.flickr.com/photos/rodneykeeling/8593116524/', 'Rodney Keeling','Flickr');
insert into backgrounds(filename,url,author,source) values('7062864815_91df009527_k.jpg', 'http://www.flickr.com/photos/bugbait/7062864815/', 'Larry McGahey','Flickr');
insert into backgrounds(filename,url,author,source) values('5715883166_0fd5141597_o.jpg', 'http://www.flickr.com/photos/ricmcarthur/5715883166/', 'Ric McArthur','Flickr');
insert into backgrounds(filename,url,author,source) values('2382494376_8ce0f55065_o.jpg', 'http://www.flickr.com/photos/andrewhuxtable/2382494376/', 'Andrew Hux','Flickr');
insert into backgrounds(filename,url,author,source) values('7452918582_ec82d7c2d8_o.jpg', 'http://www.flickr.com/photos/pofortin/7452918582/', 'Pierre-Olivier Fortin','Flickr');
insert into backgrounds(filename,url,author,source) values('2808607170_51beff49ca_o.jpg', 'http://www.flickr.com/photos/islespunkfan/2808607170/', 'Neil R','Flickr');
insert into backgrounds(filename,url,author,source) values('3038403005_697f27c6fb_b.jpg', 'http://www.flickr.com/photos/manitobamaps/3038403005/', 'Wyman Laliberte','Flickr');
insert into backgrounds(filename,url,author,source) values('3070463_bc516c9896_o.jpg', 'http://www.flickr.com/photos/ahenry/3070463/', 'Austin Henry','Flickr');
insert into backgrounds(filename,url,author,source) values('3070463_bc516c9896_o.jpg', 'http://www.flickr.com/photos/thebigdurian/71969146/', 'Austin Henry','Flickr');

/* endings */
insert into endings(ending,length) values('.', 1);
insert into endings(ending,length) values('?', 1);
insert into endings(ending,length) values('!', 1);
insert into endings(ending,length) values(', eh?', 5);
insert into endings(ending,length) values(', eh!', 4);
insert into endings(ending,length) values(', eh.', 4);
insert into endings(ending,length) values(', ya know?', 10);
insert into endings(ending,length) values(', fack.', 10);
insert into endings(ending,length) values(', fack!', 10);

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
insert into words(word,length) values('ketchup chips', 13);
insert into words(word,length) values('kraft dinner', 12);
insert into words(word,length) values('K.D.', 4);
insert into words(word,length) values('Lakehead', 8);
insert into words(word,length) values('language police', 15);
insert into words(word,length) values('left coast', 10);
insert into words(word,length) values('lord stanley', 12);
insert into words(word,length) values('lotus land', 10);
insert into words(word,length) values('mackinac', 8);
insert into words(word,length) values('mainlander', 10);
insert into words(word,length) values('maritimer', 9);
insert into words(word,length) values('manisnowba', 10);
insert into words(word,length) values('mickey', 6);
insert into words(word,length) values('monster house', 13);
insert into words(word,length) values('mountie', 7);
insert into words(word,length) values('Mother Corp', 11);
insert into words(word,length) values('Holy Mother Corporation', 23);
insert into words(word,length) values('newf', 4);
insert into words(word,length) values('newfie tan', 10);
insert into words(word,length) values('nutter', 6);
insert into words(word,length) values('oilberta', 8);
insert into words(word,length) values('the oilpatch', 12);
insert into words(word,length) values('the patch', 9);
insert into words(word,length) values('Ontario Piss Pots', 17);
insert into words(word,length) values('out east', 8);
insert into words(word,length) values('out west', 8);
insert into words(word,length) values('The Peg', 7);
insert into words(word,length) values('Peg City', 8);
insert into words(word,length) values('poverty pack', 12);
insert into words(word,length) values('pogie', 5);
insert into words(word,length) values('puck bunny', 10);
insert into words(word,length) values('puck', 4);
insert into words(word,length) values('randy', 5);
insert into words(word,length) values('RCs', 3);
insert into words(word,length) values('reservation rocket', 18);
insert into words(word,length) values('rez', 3);
insert into words(word,length) values('rink rat', 8);
insert into words(word,length) values('rippers', 7);
insert into words(word,length) values("rotten ronnie's", 15);
insert into words(word,length) values('Sack Vegas', 10);
insert into words(word,length) values('saltchuck', 9);
insert into words(word,length) values('sauga', 5);
insert into words(word,length) values('scarberia', 9);
insert into words(word,length) values('scivey', 6);
insert into words(word,length) values('screech', 7);
insert into words(word,length) values('The Shwa', 8);
insert into words(word,length) values('sixty-sixer', 11);
insert into words(word,length) values('skid', 4);
insert into words(word,length) values('slack', 5);
insert into words(word,length) values('sliveen', 7);
insert into words(word,length) values('smogtown', 8);
insert into words(word,length) values('snocked', 7);
insert into words(word,length) values('snokked', 7);
insert into words(word,length) values('snowbirds', 9);
insert into words(word,length) values('The Soo', 7);
insert into words(word,length) values('The Sault', 9);
insert into words(word,length) values('spinny', 6);
insert into words(word,length) values('spudhead', 8);
insert into words(word,length) values('stagette', 8);
insert into words(word,length) values('Steeltown', 9);
insert into words(word,length) values('Stinktown', 9);
insert into words(word,length) values('stubblejumper', 13);
insert into words(word,length) values('suitcase', 8);
insert into words(word,length) values('swish', 5);
insert into words(word,length) values('takitish', 8);
insert into words(word,length) values('t-bar', 5);
insert into words(word,length) values('take off', 8);
insert into words(word,length) values('Telephone City', 14);
insert into words(word,length) values('Terminal City', 13);
insert into words(word,length) values('texas mickey', 12);
insert into words(word,length) values("Tim's", 5);
insert into words(word,length) values("Timmy's", 7);
Help with the daily new york times spelling bee puzzle

My wife and I only use the program if we get stuck, which happened this Sunday.

see github
https://tinyurl.com/y77dlo4v
https://github.com/rogerjdeangelis/utl_help_with_the_daily_new_york_times_spelling_bee_puzzle

github greedy dictionary - download, unzip and place distionary in d:/lup folder
https://tinyurl.com/y93wn4fl
https://github.com/rogerjdeangelis/utl_help_with_the_daily_new_york_times_spelling_bee_puzzle/blob/master/utl_help_with_the_daily_new_york_times_spelling_bee_puzzle.zip

CHANGES (complete rewrite)


INPUT
=====

%let req=Y;           ** required word;
%let nytWrd=YEITMNL;  ** 7 letters;


DISTIONARY

LUP.WRD total obs=427,082  (ditionary)

1    AARDVARK
2    AARDVARKS
3    AARDWOLF
4    AARDWOLVES
5    AARGH
6    AARON


SAMPLE OUTPUT
-------------

  EMILY
  EMINENTLY
  EMMY
  ENEMY
  ENMITY
  ENTITY
  EYELET
  EYELINE
  IMMINENTLY
  INTENTLY
  LENIENTLY


PROCESS
=======

 data _null_;

  set lup.wrd(where=(length(wrd)>3 and indexc(wrd,"&req")>0));
  chk=compress(wrd,"&nytWrd","k");
  if length(strip(chk))=length(strip(wrd))  then put wrd;

 run;quit;

OUTPUT
======
see above


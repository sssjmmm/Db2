select title from test.albums where itemno =97 ; 
update test.albums set artno = 1 where itemno = 97 ;
delete from test.album2 where itemno = 97 ; 
delete from test.albums where itemno = 97 ; 
runstats on table test.album2 ;
runstats on table test.albums ; 
drop table test.album2 ;

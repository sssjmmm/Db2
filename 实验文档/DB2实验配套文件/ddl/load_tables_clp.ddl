LOAD FROM "C:\INST23\concerts.del" OF del METHOD P (1, 2, 3) 
 MESSAGES load_concert.txt REPLACE INTO MUSIC.CONCERTS (ARTNO, DATE, CITY) 
  ;


load from "C:\INST23\artists.del" of del 
messages load_art.txt  
replace into music.artists for exception music.artexp ;


select substr(tabname,1,18), status, 
       substr(const_checked,1,1) as FK_CHECKED, 
       substr(const_checked,2,1) as CC_CHECKED 
from syscat.tables 
where status='C';

SET INTEGRITY FOR MUSIC.ARTISTS, MUSIC.ALBUMS 
 ALLOW NO ACCESS IMMEDIATE CHECKED 
 FOR EXCEPTION IN MUSIC.albums use MUSIC.albexp 
 , in MUSIC.artists use MUSIC.artexp 
 ;



SET INTEGRITY FOR MUSIC.STOCK  
 ALLOW NO ACCESS IMMEDIATE CHECKED 
 ;


select substr(tabname,1,18), status, 
       substr(const_checked,1,1) as FK_CHECKED, 
       substr(const_checked,2,1) as CC_CHECKED 
from syscat.tables 
where status='C';


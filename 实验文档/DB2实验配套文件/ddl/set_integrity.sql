


SET INTEGRITY FOR MUSIC.ARTISTS, MUSIC.ALBUMS, MUSIC.STOCK 
 ALLOW NO ACCESS IMMEDIATE CHECKED 
 FOR EXCEPTION IN MUSIC.albums use MUSIC.albexp 
 , in MUSIC.artists use MUSIC.artexp 
 ;

select substr(tabname,1,18), status, 
       substr(const_checked,1,1) as FK_CHECKED, 
       substr(const_checked,2,1) as CC_CHECKED 
from syscat.tables 
where status='C';

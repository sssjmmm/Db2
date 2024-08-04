

set current lock timeout 180 ; 
set current isolation rs ; 
select sum(qty) from music.STOCK where itemno = 10 ;
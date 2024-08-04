

set current lock timeout 300 ; 
set current isolation cs ; 
select sum(qty) from music.STOCK where itemno = 10 ;


set current lock timeout 300 ; 
set current isolation ur ; 
select sum(qty) from music.STOCK where itemno = 10 ;
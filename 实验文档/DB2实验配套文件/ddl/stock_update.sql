

SELECT sum(qty) from music.stock where itemno=10 ; 

update music.stock set qty = qty + 1 
   where itemno between 10 and 15 ; 

SELECT sum(qty) from music.stock where itemno=10 ; 


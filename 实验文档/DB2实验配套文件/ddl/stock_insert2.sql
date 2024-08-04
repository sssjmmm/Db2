set current schema music ;
 
insert into temp_stock select itemno,type,price,qty from stock where TYPE = 'C' ;

SELECT COUNT(*) AS CURRENT_SIZE, CURRENT DATE , CURRENT TIME FROM 
   temp_stock ;


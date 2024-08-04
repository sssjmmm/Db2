set current schema music ;
insert into temp_stock select itemno,type,price,qty  from stock where itemno < 100  ;
insert into temp_stock select itemno,type,price,qty from stock where itemno < 100  ;
insert into temp_stock select itemno,type,price,qty from stock where itemno < 100  ;
delete from temp_stock ; 




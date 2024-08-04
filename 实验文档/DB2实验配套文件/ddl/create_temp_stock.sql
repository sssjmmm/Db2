set current schema music ; 
create table temp_stock 
  (ITEMNO SMALLINT NOT NULL ,
    TYPE CHAR(1) NOT NULL ,
    PRICE DECIMAL(5,2) NOT NULL WITH DEFAULT  ,
    QTY INTEGER NOT NULL WITH DEFAULT) 
    in userspace1 ;




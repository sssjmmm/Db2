


create table MUSIC.concerts 
 (artno      smallint not null, 
  date       date not null, 
  city       varchar (25) not null with default) 
  in tsp04;

create table MUSIC.reorder 
  (itemno       smallint  not null,  
   timestamp    timestamp) 
   in TSP02;

create table MUSIC.artists 
  (artno     smallint not null, 
   name      varchar(50), 
   classification char(1) not null, 
   bio       clob(100K) logged compact, 
   picture   blob(500K) not logged compact, 
   primary key (artno)) 
   in tsp01 
   index in tsp02 
   long in tsp03 ;

create table MUSIC.stock 
 (ITEMNO SMALLINT NOT NULL ,
    TYPE CHAR(1) NOT NULL ,
    PRICE DECIMAL(5,2) NOT NULL WITH DEFAULT  ,
    QTY INTEGER NOT NULL WITH DEFAULT,  
    SYS_START TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW BEGIN IMPLICITLY HIDDEN, 
    SYS_END TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW END IMPLICITLY HIDDEN,
    TX_START TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS TRANSACTION START ID IMPLICITLY HIDDEN,                    
    PERIOD SYSTEM_TIME (SYS_START,SYS_END) ) 
  in tsp06;

CREATE TABLE MUSIC.STOCK_HISTORY LIKE MUSIC.STOCK IN tsp06 ;

ALTER TABLE MUSIC.STOCK ADD VERSIONING USE HISTORY TABLE MUSIC.STOCK_HISTORY ;

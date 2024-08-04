

create table music.artexp like music.artists in userspace1;
alter table music.artexp 
add column ts timestamp 
add column msg clob (32 k) not logged;    

create table music.albexp like music.albums in userspace1;
alter table music.albexp 
add column ts timestamp 
add column msg clob (32 k) not logged;    

create table music.stoexp like music.stock in userspace1;
alter table music.stoexp 
add column ts timestamp 
add column msg clob (32 k) not logged;    

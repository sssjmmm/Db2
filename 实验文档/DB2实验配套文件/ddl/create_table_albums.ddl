

create table music.albums 
 (title     varchar (50), 
  artno     smallint not null, 
  itemno    smallint not null) 
  in tsp04 
  index in tsp05;

alter table music.albums primary key (itemno) ;


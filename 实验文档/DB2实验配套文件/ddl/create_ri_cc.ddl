
alter table music.albums add constraint ARTNO_FK 
  foreign key (artno) references music.artists (artno) 
  on delete cascade on update no action ;

alter table music.stock 
      foreign key ITEMNO_FK (itemno) 
         references music.albums on delete restrict;

alter table music.stock 
add constraint cctype check (type in ('D', 'C', 'R')) ; 





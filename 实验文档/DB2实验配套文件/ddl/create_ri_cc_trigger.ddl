
alter table music.albums add constraint ARTNO_FK 
  foreign key (artno) references music.artists (artno) 
  on delete cascade on update no action ;

alter table music.stock 
      foreign key ITEMNO_FK (itemno) 
         references music.albums on delete restrict;

alter table music.stock 
add constraint cctype check (type in ('D', 'C', 'R')) ; 



create trigger music.reorder 
after update of qty on music.stock 
referencing new as n 
for each row 
mode db2sql 
when (n.qty <= 5) 
insert into music.reorder values (n.itemno, current timestamp);

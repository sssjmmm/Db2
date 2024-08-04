
create trigger music.reorder 
after update of qty on music.stock 
referencing new as n 
for each row 
mode db2sql 
when (n.qty <= 5) 
insert into music.reorder values (n.itemno, current timestamp);

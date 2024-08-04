create event monitor mon_locks for locking 
write to table 
autostart ; 
set event monitor mon_locks state 1;

select varchar(tabschema,10) as schema, 
   varchar(tabname,40) as mon_table 
 from syscat.eventtables
 where evmonname = 'MON_LOCKS' ;

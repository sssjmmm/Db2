select event_id , event_type, event_timestamp
from lock_mon_locks ;

select participant_no,
varchar(auth_id,10) as auth_id, 
varchar(appl_name,20) as appl_name,
varchar(table_name,12) as tabname,  
varchar(table_schema,12) as tabschema, 
lock_object_type , participant_type , lock_status
from lock_participants_mon_locks   
where event_type='LOCKTIMEOUT' ;


select 
participant_no, effective_isolation,
varchar(stmt_operation,20) as operation,
varchar(stmt_text,50) as sql_text 
from lock_participant_activities_mon_locks   
where event_type='LOCKTIMEOUT' ;
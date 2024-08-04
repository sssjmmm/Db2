
select 
tabschema as schema,
tabname as table_name, 
hld_userid as Lock_holder,
hld_application_handle as Holder_Appid,  
req_userid as Lock_Requester, 
lock_mode as Lock_mode_Held,
lock_mode_requested, 
lock_wait_elapsed_time, 
req_stmt_text as SQL_text
from sysibmadm.mon_lockwaits ; 
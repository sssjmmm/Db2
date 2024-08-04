select 
substr(type,1,30) as db_path_type, 
substr(path,1,50) as path_name
from sysibmadm.dbpaths 
order by 1 ;

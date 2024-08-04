
select varchar(tbsp_name, 30) as tbsp_name, tbsp_id, 
tbsp_type, tbsp_using_auto_storage as auto_storage, 
varchar(storage_group_name,20) as stogroup,
pool_data_p_reads 
from table(mon_get_tablespace('', -2)) as t  
order by tbsp_id  ;


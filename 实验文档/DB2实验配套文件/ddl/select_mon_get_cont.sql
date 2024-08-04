

select varchar(container_name, 80) as container_name, 
varchar(tbsp_name, 20) as tbsp_name, pool_read_time  
from table(mon_get_container('', -2)) as t  
order by tbsp_id  ;

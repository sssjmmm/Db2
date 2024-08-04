SET INTEGRITY FOR MUSIC.STOCK  
 ALLOW NO ACCESS IMMEDIATE CHECKED;

select substr(tabname,1,18), status, 
       substr(const_checked,1,1) as FK_CHECKED, 
       substr(const_checked,2,1) as CC_CHECKED 
from syscat.tables 
where status='C';


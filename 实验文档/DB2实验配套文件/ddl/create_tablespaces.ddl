
create tablespace tsp02 
managed by database 
using (file 'tsp02' 128) 
extentsize 2 autoresize yes maxsize 2 M ;

create tablespace tsp03 
managed by database 
using (file 'tsp03' 1024) 
extentsize 8 autoresize yes maxsize 10 M ;

create tablespace tsp04 
managed by automatic storage using stogroup app_data  
initialsize 100 K maxsize none  
extentsize 2;

create tablespace tsp05 using stogroup app_data
initialsize 64 K maxsize 1 M  
extentsize 2;

create regular tablespace tsp06 
extentsize 4;





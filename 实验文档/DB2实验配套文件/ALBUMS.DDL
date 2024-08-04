-- 此 CLP 文件是使用 DB2LOOK 版本 "10.5" 创建的 
-- 时间戳记: 2020/3/15 星期日 16:11:32
-- 数据库名称: MUSICDB        
-- 数据库管理器版本: DB2/NT64 Version 10.5.3       
-- 数据库代码页: 1208
-- 数据库整理顺序为: SYSTEM_1386
-- Alternate collating sequence(alt_collate): null
-- varchar2 compatibility(varchar2_compat): OFF


CONNECT TO MUSICDB;

------------------------------------------------
-- 表的 DDL 语句 "MUSIC   "."ALBUMS"
------------------------------------------------
 

CREATE TABLE "MUSIC   "."ALBUMS"  (
		  "TITLE" VARCHAR(50 OCTETS) , 
		  "ARTNO" SMALLINT NOT NULL , 
		  "ITEMNO" SMALLINT NOT NULL )   
		 IN "TSP04" INDEX IN "TSP05"  
		 ORGANIZE BY ROW; 


-- 表上的主键的 DDL 语句 "MUSIC   "."ALBUMS"

ALTER TABLE "MUSIC   "."ALBUMS" 
	ADD PRIMARY KEY
		("ITEMNO");



-- 表上的外键的 DDL 语句 "MUSIC   "."ALBUMS"

ALTER TABLE "MUSIC   "."ALBUMS" 
	ADD CONSTRAINT "ARTNO_FK" FOREIGN KEY
		("ARTNO")
	REFERENCES "MUSIC   "."ARTISTS"
		("ARTNO")
	ON DELETE CASCADE
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;






----------------------------

-- 视图的 DDL 语句

----------------------------
SET CURRENT SCHEMA = "ADMINISTRATOR";
SET CURRENT PATH = "SYSIBM","SYSFUN","SYSPROC","SYSIBMADM","ADMINISTRATOR";
create view music.music as select title, classification, name from music.albums
alb, music.artists art where art.artno = alb.artno;




COMMIT WORK;

CONNECT RESET;

TERMINATE;


-- �� CLP �ļ���ʹ�� DB2LOOK �汾 "10.5" ������ 
-- ʱ�����: 2020/3/15 ������ 16:11:32
-- ���ݿ�����: MUSICDB        
-- ���ݿ�������汾: DB2/NT64 Version 10.5.3       
-- ���ݿ����ҳ: 1208
-- ���ݿ�����˳��Ϊ: SYSTEM_1386
-- Alternate collating sequence(alt_collate): null
-- varchar2 compatibility(varchar2_compat): OFF


CONNECT TO MUSICDB;

------------------------------------------------
-- ��� DDL ��� "MUSIC   "."ALBUMS"
------------------------------------------------
 

CREATE TABLE "MUSIC   "."ALBUMS"  (
		  "TITLE" VARCHAR(50 OCTETS) , 
		  "ARTNO" SMALLINT NOT NULL , 
		  "ITEMNO" SMALLINT NOT NULL )   
		 IN "TSP04" INDEX IN "TSP05"  
		 ORGANIZE BY ROW; 


-- ���ϵ������� DDL ��� "MUSIC   "."ALBUMS"

ALTER TABLE "MUSIC   "."ALBUMS" 
	ADD PRIMARY KEY
		("ITEMNO");



-- ���ϵ������ DDL ��� "MUSIC   "."ALBUMS"

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

-- ��ͼ�� DDL ���

----------------------------
SET CURRENT SCHEMA = "ADMINISTRATOR";
SET CURRENT PATH = "SYSIBM","SYSFUN","SYSPROC","SYSIBMADM","ADMINISTRATOR";
create view music.music as select title, classification, name from music.albums
alb, music.artists art where art.artno = alb.artno;




COMMIT WORK;

CONNECT RESET;

TERMINATE;


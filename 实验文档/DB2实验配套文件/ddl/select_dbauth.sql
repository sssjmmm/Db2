select varchar(grantee,12) as grantee,
       varchar(grantor,12) as grantor,
   connectauth,loadauth,dbadmauth,securityadmauth
from syscat.dbauth ;
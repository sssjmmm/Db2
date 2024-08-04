select substr(tbspace,1,18) as tbspace, 
substr(definer,1,10) as definer, tbspaceid, tbspacetype, 
datatype, sgname  from syscat.tablespaces;
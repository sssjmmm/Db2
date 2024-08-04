
create view music.music as select title, classification, name 
from music.albums alb, music.artists art 
where art.artno = alb.artno ;


create view music.inventory (type, itemno, totcost, totqty) 
as select type, itemno, sum (price * qty), sum (qty) 
from music.stock group by type, itemno;


create alias music.singers for music.artists ;

create alias music.emptystock for music.reorder ;




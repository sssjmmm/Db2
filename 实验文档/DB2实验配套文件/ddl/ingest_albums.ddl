ingest from file c:\inst23\albums.del 
 format delimited messages ingest_albums.txt 
 RESTART NEW 'ingest_alb' INSERT INTO music.albums ;
load data infile *
into table NATIONGEOSTDMCA
append
fields terminated by ','
TRAILING NULLCOLS
(
  provincecode     ,
  divcode          ,
  citycode         ,
  provincename     ,
  divname          ,
  cityname         ,
  provincenameused ,
  divnameused      ,
  citynameused     ,
  isnew        

)
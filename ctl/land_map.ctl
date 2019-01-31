load data infile *
into table land_map
append
fields terminated by '|'
TRAILING NULLCOLS
(
  TransId  ,
  provinceCode ,
  divCode ,
  cityCode ,
  provinceName ,
  divName ,
  cityName ,
  location  char(20000) 
)
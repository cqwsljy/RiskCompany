load data infile *
into table tmp_geo_local
append
fields terminated by '|'
TRAILING NULLCOLS
(
  Province char(100),
  City char(100),
  District char(100),
  Location_x char(2000),
  html char(2000),
  title char(2000),
  AdminArea char(2000),
  ProjectName char(2000),
  Location_y char(2000),
  area char(2000),
  source char(2000),
  purpose char(2000),
  method char(2000),
  term char(2000),
  industry char(2000),
  "level" char(2000),
  price10k char(2000),
  settleno char(2000),
  settle_dt char(2000),
  contract_price10k char(2000),
  note char(2000),
  owner char(2000),
  bottom char(2000),
  top char(2000),
  delivery_dt char(2000),
  const_dt char(2000),
  complete_dt char(2000),
  act_const_dt char(2000),
  act_complete_dt char(2000),
  Authority char(2000),
  contract_dt char(2000)
)
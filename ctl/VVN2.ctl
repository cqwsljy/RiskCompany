load data infile *
into table nationallandnormalizedv2
append
fields terminated by '|'
TRAILING NULLCOLS
(
  Area ,
  price ,
  unitPrice char(20000) ,
  cityCode char(20000) ,
  divCode char(20000) ,
  provinceCode char(20000) ,
  LandSource char(20000) ,
  LandPurposeMainCode char(20000) ,
  LandPurposeSubCode char(20000) ,
  TransactionMethod char(20000) ,
  LandUsageLimit char(20000) ,
  SectorMainCode char(20000) ,
  SectorSubCode char(20000) ,
  LandGrade char(20000) ,
  UpperRatio char(20000) ,
  LowerRatio char(20000) ,
  asOfdate char(20000) ,
  provinceGDP char(20000) ,
  divAllPopulation char(20000) ,
  divCityPopulation char(20000) ,
  TransId char(20000) ,
  cat char(20000) ,
  cityLevel char(20000) ,
  divLevel char(20000) ,
  cityGDP2011 char(20000) ,
  cityPPP2011 char(20000) ,
  gdpcapital2015 char(20000) ,
  cityDensity2011 char(20000) ,
  chinaDensity char(20000) ,
  Transactiondate char(20000) 
)
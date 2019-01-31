load data infile *
into table land_trans
append
fields terminated by '|'
TRAILING NULLCOLS
(
  TransId ,
  YearMonth  ,
  ProjectName char(20000),
  AdminArea,
  AreaCd  char(20000),
  Location char(20000),
  Area BINARY_DOUBLE,
  LandSource ,
  LandPurpose,
  TransactionMethod ,
  LandUsageLimit char(20000),
  Sector ,
  LandGrade ,
  Price BINARY_DOUBLE,
  TransactionNo char(20000),
  TransactionDate char(20000) ,
  TransactionAmount BINARY_DOUBLE,
  LandOccupancy char(20000) ,
  UpperRatio char(20000),
  LowerRatio char(20000) ,
  DeliverDate ,
  PlannedConstructionBegDate,
  PlannedConstructionEndDate,
  ActualConstructionBegTime ,
  ActualConstructionEndTime ,
  Authority ,
  ContractDate 
)
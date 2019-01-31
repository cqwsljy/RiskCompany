select count(*) from nationallandnormalizedv2;--1837366
select * from nationallandnormalizedv2;
select * from  V$session;
select count(*) from land_trans;

select * from land_trans f1 where f1.transid 
not in (select f2.transid from nationallandnormalizedv2 f2)

select * from land_map where transid='27308720';

select count(*) from land_map f1 where f1.transid 
not in (select f2.transid from nationallandnormalizedv2 f2)




select * from nationallandnormalizedv2;

select count(*) from land_trans;--1877729,1877740,> nationallandnormalizedv2
select * from NationGeoStdMca;

select count(*) from nationallandnormalizedv2;--1837366
select count(*) from land_trans;--1877740
select count(1) from mapTrans; ---2588865,
select count(1) from land_map;--1837819

select count(1) from nationallandnormalizedv2 a,land_trans b 
where a.transid=b.transid


select count(1)  from nationallandnormalizedv2 group by transid having count(1) > 1

select * from land_trans where transid in (
select a.transid from nationallandnormalizedv2 a,nationgeostdmca b 
where a.citycode=b.citycode and a.divcode=b.divcode and a.provincecode=b.provincecode
and b.isnew='0'
)
truncate table nationallandnormalizedv2;

select count(1) from (
select a.*,b.* from nationallandnormalizedv2 a,nationgeostdmca b 
where a.citycode=b.citycode and a.divcode=b.divcode and a.provincecode=b.provincecode
and b.isnew='0' 
)
select * from land_map;
--truncate table land_map;
select * from  (select transid,count(1) rn from land_map group by transid) order by rn desc;
---0116重要
create table nnv2 as 
create table lmp as 
select distinct f1.transid,f2.provincename,f2.divname,f2.cityname,f2.provincecode,f2.divcode,f2.citycode
from land_map f1 left join 
NationGeoStdMca f2 on f1.provincename=f2.provincenameused
and f1.divname=f2.divnameused and f1.cityname=f2.citynameused where f2.isnew='0'
order by f1.transid
;
select count(1) from lmp;
select * from lmp ;
select count(1) from nnv2 group by transid having count(1)>1

select * from nnv2;
select * from land_map;

select * from land_map f1 left join NationGeoStdMca f2 on f1.provincename=f2.provincenameused
and f1.divname=f2.divnameused and f1.cityname=f2.citynameused where f2.isnew='0';

select * from land_map f1 where f1.provincename='北京市'

select * from NationGeoStdMca f2 where f2.provincenameused='北京市';
truncate table NationGeoStdMca;

update nationallandnormalizedv2 a set a.citycode=b.citycode,a.divcode=b.divcode,
a.provincecode=b.provincecode where exists( 
select 1 from nationgeostdmca b 
where a.citycode=b.citycode and a.divcode=b.divcode and a.provincecode=b.provincecode
and b.isnew='0' 
)

update TA set name=b.name, remark=b.remark from TA a, TB b where a.id = b.id  
update TA set name=b.name, remark=b.remark from TA a inner join TB b on a.id = b.id  


update  a set a.citycode=b.citycode,a.divcode=b.divcode 
from nationallandnormalizedv2 a
left join
nationgeostdmca b on 
a.provincecode=b.provincecode where a.citycode=b.citycode and a.divcode=b.divcode and a.provincecode=b.provincecode
and b.isnew='0' 



select * from nationgeostdmca;



from nationallandnormalizedv2 d inner join 
(
select a.transid,b.* from nationallandnormalizedv2 a,nationgeostdmca b 
where a.citycode=b.citycode and a.divcode=b.divcode and a.provincecode=b.provincecode
and b.isnew='0' 
) c
on d.transid=c.transid



select * from nationallandnormalizedv2;

update nationallandnormalizedv2  
set (citycode,divcode,provincecode)
=(select c.citycode,c.divcode ,c.provincecode
from nationallandnormalizedv2)


inner join 
nnv2map c on (transid=c.transid)



select * from nnv2map;

create table nnv2map as select a.transid,b.* from nationallandnormalizedv2 a,nationgeostdmca b 
where a.citycode=b.citycode and a.divcode=b.divcode and a.provincecode=b.provincecode
and b.isnew='0' 

merge into  nationallandnormalizedv2 a
using nationgeostdmca b on (
a.citycode=b.citycode and a.divcode=b.divcode and a.provincecode=b.provincecode
and b.isnew='0' 
)
when matched 
  then 
    update set  a.citycode=b.citycode,a.divcode=b.divcode,
  a.provincecode=b.provincecode



MERGE INTO 表2
   USING 表1
    ON (表2.A = 表1.A)                    -- 条件是 A 相同
WHEN MATCHED
THEN
  UPDATE SET 表2.C = 表1.B 


select count(*) from land_trans;
truncate table land_trans;
SELECT value$ FROM sys.props$ WHERE name = 'NLS_CHARACTERSET'
select userenv('language') from dual;
select * from nls_database_parameters where parameter ='NLS_CHARACTERSET';




select * from nls_database_parameters where parameter like '%LANGUAGE%'
select userenv('language') from dual;
select * from nls_database_parameters;
select * from nls_instance_parameters;
select * from nls_session_parameters;


update land_map f1 set (ProvinceCode,DivCode,CityCode)=(
select f2.ProvinceCode,f2.DivCode,f2.CityCode from lmp f2 
where f1.TransId=f2.TransId
)
where exists(
select 1 from  lmp f3 where f1.TransId=f3.TransId
)

truncate table land_map;

select * from land_map;
update  land_map f1  set f1.provincecode = (select distinct f3.ProvinceCode from
( select f2.TransId,f2.ProvinceCode,f2.DivCode,f2.CityCode from land_map f3 , lmp f2 
where f3.TransId=f2.TransId) f3  where f1.TransId=f3.TransId)

select count(*) rn,a.transid,a.  from 
(
select f2.TransId,f2.ProvinceCode,f2.DivCode,f2.CityCode from land_map f3  inner join lmp f2 
on f3.TransId=f2.TransId) a group by a.TransId order by rn desc



update land_map f1 set (f1.provincecode,f1.divcode) =  (
    select  f2.ProvinceCode,f2.divcode from lmp f2 where f1.TransId=f2.TransId
) 

where exists
(
select 1 from lmp f2 where f1.transid=f2.transid
)


select f1.provincecode,f2.provincecode from land_map f1 

select  f1.*,f2.* from land_map f1,lmp f2 
where f1.TransId=f2.TransId and f1.TransId=21933865

select * from land_map where TransId=21933865 ;
select * from lmp  where TransId=21933865 ;

select count(1) from land_map
select count(1) from lmp

select * from land_map f1 where f1.provincecode is null and f1.transid in (
select f2.transid from lmp f2 
);

select count(1) from lmp;


select * from tmp_geo_local f1 left join NationGeoStdMca f2 on 
f1.province=f2.provincenameused
and f1.city=f2.divnameused and f1.district=f2.citynameused where f2.isnew='0';


select * from tmp_geo_local;
select * from nationallandnormalizedv2;
select count(*) from tmp_geo_local;--26179
select count(distinct html) from tmp_geo_local;--26179





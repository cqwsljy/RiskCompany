--update table NationalLandNormalizedV2 code
update  "NationalLandNormalizedV2"  f1 set ("provinceCode","divCode","cityCode")=(
select f2."provinceCode",f2."divCode",f2."cityCode" from "updatennv2" f2 where f1."TransId"=f2."TransId")
where exists(
select 1 from  "updatennv2" f3 where f1."TransId"=f3."TransId"
)


--update table land_map code
update  "land_map"  f1 set ("Pcode","Ccode","Acode")=(
select f2."ProvinceCode",f2."DivCode",f2."CityCode" from "updateLand_map" f2 
where f1."TransId"=f2."TransId"
)
where exists(
select 1 from  "updateLand_map" f3 where f1."TransId"=f3."TransId"
)

--update table name
update  "land_map"  f1 set ("Pname","Cname","Aname")=(
select f2."ProvinceName",f2."DivName",f2."CityName" from "updateLand_map" f2 
where f1."TransId"=f2."TransId"
)
where exists(
select 1 from  "updateLand_map" f3 where f1."TransId"=f3."TransId"
)

--check whether update successful
--check table land_map,if count=0 ,successful ,others ,fail
select * from "land_map" f1  left join "NationalGeoStdMca" f2 
on f1."Pname"=f2."provinceNameUsed" 
and f1."Cname"=f2."divNameUsed" 
and f1."Aname"=f2."cityNameUsed" 
where f2."isNew"='0'

--check table NationalLandNormalizedV2
select * from "NationalLandNormalizedV2" f1  left join "land_map" f2 
on f1."TransId"=f2."TransId" 
where (f1."provinceCode"!=f2."Pcode" 
or f1."divCode"!=f2."Ccode" 
or f1."cityCode"!=f2."Acode" 
) and f1."provinceCode" is not null and f1."divCode" is not null
and f1."cityCode" is not null


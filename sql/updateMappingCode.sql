--update table NationalLandNormalizedV2
update dbo."NationalLandNormalizedV2" f1 INNER JOIN dbo."dbo.updatennv2" f2 on f1."TransId"=f2."TRANSID"
set f1."ProvinceCode"=f2."PROVINCECODE",f1."DivCode"=f2."DIVCODE",f1."CityCode"=f2."CITYCODE";

--update land_map
update  dbo."land_map" f1 INNER JOIN dbo."updatelmp" f2 on f1."TransId"=f2."TransId"
set f1."Pcode"=f2."ProvinceCode",f1."Ccode"=f2."DivCode",f1."Acode"=f2."CityCode"
f1."Pname"=f2."ProvinceName",f1."Cname"=f2."DivName",f1."Aname"=f2."CityName";


--查看表的字段属性
SELECT col_description(a.attrelid,a.attnum) as comment,format_type(a.atttypid,a.atttypmod) as type,a.attname as name, a.attnotnull as notnull   
FROM pg_class as c,pg_attribute as a where c.relname = 'NationalLandNormalizedV2' and a.attrelid = c.oid and a.attnum>0

--修改表字段类型，column后面双引号
ALTER table dbo."dbo.updatennv2" alter COLUMN "TRANSID" type integer using("TRANSID"::integer);

--关联更新
update  dbo."land_map" f1 INNER JOIN dbo."updatelmp" f2 on f1."TransId"=f2."TransId"
set f1."Pcode"=f2."ProvinceCode",f1."Ccode"=f2."DivCode",f1."Acode"=f2."CityCode"
f1."Pname"=f2."ProvinceName",f1."Cname"=f2."DivName",f1."Aname"=f2."CityName";

CREATE TABLE "NationalGeoStdMca" (
	"provinceCode" VARCHAR(255) NOT NULL,
	"divCode" VARCHAR(255) NOT NULL,
	"cityCode" VARCHAR(255) NOT NULL,
	"provinceName" VARCHAR(255) NOT NULL,
	"divName" VARCHAR(255) NOT NULL,
	"cityName" VARCHAR(255) NOT NULL,
	"provinceNameUsed" VARCHAR(255) NOT NULL,
	"divNameUsed" VARCHAR(255) NOT NULL,
	"cityNameUsed" VARCHAR(255) NOT NULL,
	"isNew" VARCHAR(255) NOT NULL
)
;
COMMENT ON COLUMN "NationalGeoStdMca"."provinceCode" IS 'province code';
COMMENT ON COLUMN "NationalGeoStdMca"."divCode" IS 'div code';
COMMENT ON COLUMN "NationalGeoStdMca"."cityCode" IS 'city code';
COMMENT ON COLUMN "NationalGeoStdMca"."provinceName" IS 'province name';
COMMENT ON COLUMN "NationalGeoStdMca"."divName" IS 'div name';
COMMENT ON COLUMN "NationalGeoStdMca"."cityName" IS 'city name';
COMMENT ON COLUMN "NationalGeoStdMca"."provinceNameUsed" IS 'province name Used';
COMMENT ON COLUMN "NationalGeoStdMca"."divNameUsed" IS 'div name Used';
COMMENT ON COLUMN "NationalGeoStdMca"."cityNameUsed" IS 'city name Used';
COMMENT ON COLUMN "NationalGeoStdMca"."isNew" IS 'flg, 0 means old maping relation, 1 new mapping relation';

/*
 Navicat PostgreSQL Data Transfer

 Source Server         : midas
 Source Server Type    : PostgreSQL
 Source Server Version : 90606
 Source Host           : awspostgres.midastouching.com:5432
 Source Catalog        : Market
 Source Schema         : dbo

 Target Server Type    : PostgreSQL
 Target Server Version : 90606
 File Encoding         : 65001

 Date: 11/01/2019 22:51:15
*/


-- ----------------------------
-- Table structure for land_trans
-- ----------------------------
DROP TABLE IF EXISTS "dbo"."land_trans";
CREATE TABLE "dbo"."land_trans" (
  "TransId" int4 NOT NULL,
  "YearMonth" varchar(30) COLLATE "pg_catalog"."default",
  "ProjectName" varchar(1536) COLLATE "pg_catalog"."default",
  "AdminArea" varchar(765) COLLATE "pg_catalog"."default",
  "AreaCd" int4,
  "Location" varchar(1536) COLLATE "pg_catalog"."default",
  "Area" float8,
  "LandSource" varchar(765) COLLATE "pg_catalog"."default",
  "LandPurpose" varchar(765) COLLATE "pg_catalog"."default",
  "TransactionMethod" varchar(765) COLLATE "pg_catalog"."default",
  "LandUsageLimit" varchar(765) COLLATE "pg_catalog"."default",
  "Sector" varchar(765) COLLATE "pg_catalog"."default",
  "LandGrade" varchar(765) COLLATE "pg_catalog"."default",
  "Price" float8,
  "TransactionNo" varchar(765) COLLATE "pg_catalog"."default",
  "TransactionDate" date,
  "TransactionAmount" float8,
  "LandOccupancy" varchar(1536) COLLATE "pg_catalog"."default",
  "UpperRatio" varchar(765) COLLATE "pg_catalog"."default",
  "LowerRatio" varchar(765) COLLATE "pg_catalog"."default",
  "DeliverDate" timestamp(6),
  "PlannedConstructionBegDate" date,
  "PlannedConstructionEndDate" date,
  "ActualConstructionBegTime" date,
  "ActualConstructionEndTime" date,
  "Authority" varchar(765) COLLATE "pg_catalog"."default",
  "ContractDate" date
)
;

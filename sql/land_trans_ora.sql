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
CREATE TABLE land_trans (
  TransId number(20) NOT NULL,
  YearMonth varchar2(30) ,
  ProjectName varchar2(1536) ,
  AdminArea varchar2(765) ,
  AreaCd number(20),
  Location varchar2(4000) ,
  Area BINARY_DOUBLE,
  LandSource varchar2(765) ,
  LandPurpose varchar2(765) ,
  TransactionMethod varchar2(765) ,
  LandUsageLimit varchar2(765) ,
  Sector varchar2(765) ,
  LandGrade varchar2(765) ,
  Price BINARY_DOUBLE,
  TransactionNo varchar2(765) ,
  TransactionDate varchar2(765),
  TransactionAmount BINARY_DOUBLE,
  LandOccupancy varchar2(1536) ,
  UpperRatio varchar2(765) ,
  LowerRatio varchar2(765) ,
  DeliverDate varchar2(765),
  PlannedConstructionBegDate varchar2(765),
  PlannedConstructionEndDate varchar2(765),
  ActualConstructionBegTime varchar2(765),
  ActualConstructionEndTime varchar2(765),
  Authority varchar2(765) ,
  ContractDate varchar2(765)
)
;

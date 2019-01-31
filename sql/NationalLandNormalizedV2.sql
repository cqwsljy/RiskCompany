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

 Date: 11/01/2019 23:49:17
*/


-- ----------------------------
-- Table structure for NationalLandNormalizedV2
-- ----------------------------

CREATE TABLE NationalLandNormalizedV2 (
  Area number(20,4),
  price number(20,4),
  unitPrice BINARY_DOUBLE,
  cityCode number(20),
  divCode number(20),
  provinceCode number(20),
  LandSource varchar(765) ,
  LandPurposeMainCode number(20,4),
  LandPurposeSubCode number(20,4),
  TransactionMethod varchar(765) ,
  LandUsageLimit varchar(765) ,
  SectorMainCode varchar(765) ,
  SectorSubCode number(20),
  LandGrade varchar(765) ,
  UpperRatio varchar(765) ,
  LowerRatio varchar(765) ,
  asOfDate varchar(765),
  provinceGDP BINARY_DOUBLE,
  divAllPopulation BINARY_DOUBLE,
  divCityPopulation BINARY_DOUBLE,
  TransId number(20) NOT NULL,
  cat number(20),
  cityLevel varchar(765) ,
  divLevel varchar(765) ,
  cityGDP2011 number(20,4),
  cityPPP2011 number(20,4),
  gdpcapital2015 number(20,4),
  cityDensity2011 number(20,4),
  chinaDensity BINARY_DOUBLE,
  TransactionDate varchar(765)
)
;

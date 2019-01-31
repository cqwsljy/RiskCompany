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

 Date: 16/01/2019 08:07:04
*/


-- ----------------------------
-- Table structure for land_map
-- ----------------------------
CREATE TABLE land_map (
  TransId  number(20) NOT NULL,
  provinceCode varchar2(20),
  divCode varchar2(20),
  cityCode varchar2(20),
  provinceName varchar2(60),
  divName  varchar2(60),
  cityName varchar2(60),
  location varchar2(4000)
)
;

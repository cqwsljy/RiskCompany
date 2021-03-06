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

 Date: 27/01/2019 19:32:17
*/


-- ----------------------------
-- Table structure for tmp_geo_local
-- ----------------------------
CREATE TABLE tmp_geo_local (
  Province varchar(100),
  City varchar(100),
  District varchar(100),
  Location_x varchar(2000),
  html varchar(2000),
  title varchar(2000),
  AdminArea varchar(2000),
  ProjectName varchar(2000),
  Location_y varchar(2000),
  area varchar(2000),
  source varchar(2000),
  purpose varchar(2000),
  method varchar(2000),
  term varchar(2000),
  industry varchar(2000),
  "level" varchar(2000),
  price10k varchar(2000),
  settleno varchar(2000),
  settle_dt varchar(2000),
  contract_price10k varchar(2000),
  note varchar(2000),
  owner varchar(2000),
  bottom varchar(2000),
  top varchar(2000),
  delivery_dt varchar(2000),
  const_dt varchar(2000),
  complete_dt varchar(2000),
  act_const_dt varchar(2000),
  act_complete_dt varchar(2000),
  Authority varchar(2000),
  contract_dt varchar(2000)
)
;

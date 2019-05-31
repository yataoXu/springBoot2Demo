/*
Navicat MySQL Data Transfer

Source Server         : versionremot
Source Server Version : 80013
Source Host           : 192.168.37.69:3306
Source Database       : evandb

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2019-05-31 17:31:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `es_month_range`
-- ----------------------------
DROP TABLE IF EXISTS `es_month_range`;
CREATE TABLE `es_month_range` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `cat` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '绫诲瀷',
  `max_month` date DEFAULT NULL COMMENT 'max_month',
  `min_month` date DEFAULT NULL COMMENT 'min_month',
  `VERSION` int(11) DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='数据范围';

-- ----------------------------
-- Records of es_month_range
-- ----------------------------
INSERT INTO `es_month_range` VALUES ('1', 'overview', '2018-12-31', '2018-12-01', '1');
INSERT INTO `es_month_range` VALUES ('2', 'study', '2019-02-27', '2018-11-01', '1');
INSERT INTO `es_month_range` VALUES ('3', 'borrow', '2019-02-27', '2018-11-01', '1');
INSERT INTO `es_month_range` VALUES ('5', 'sport', '2019-02-27', '2018-12-01', '1');
INSERT INTO `es_month_range` VALUES ('6', 'onlineStudy', '2018-12-31', '2018-12-01', '1');

-- ----------------------------
-- Table structure for `es_sport_venue`
-- ----------------------------
DROP TABLE IF EXISTS `es_sport_venue`;
CREATE TABLE `es_sport_venue` (
  `months` varchar(7) DEFAULT NULL,
  `college` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `major` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade` varchar(32) NOT NULL,
  `venue` varchar(128) DEFAULT NULL,
  `counts` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of es_sport_venue
-- ----------------------------
INSERT INTO `es_sport_venue` VALUES ('2018-12', '犯罪学学院', '犯罪学', '2015', 'pp', '24');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '犯罪学学院', '犯罪学', '2015', 'pp', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '犯罪学学院', '犯罪学', '2016', 'pp', '64');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '公安管理学院', '公安管理学', '2015', 'pp', '110');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '公安管理学院', '公安管理学', '2015', 'pp', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '国际警务执法学院', '涉外警务', '2015', 'pp', '41');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '国际警务执法学院', '涉外警务', '2015', 'pp', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '公安管理学院', '公安管理学', '2016', 'pp', '71');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '国际警务执法学院', '涉外警务', '2016', 'pp', '100');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '犯罪学学院', '犯罪学', '2017', 'pp', '14');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '公安管理学院', '公安管理学', '2017', 'pp', '216');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '国际警务执法学院', '涉外警务', '2017', 'pp', '152');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '犯罪学学院', '犯罪学', '2015', 'exer', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '公安管理学院', '公安管理学', '2015', 'exer', '14');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '国际警务执法学院', '涉外警务', '2015', 'exer', '3');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '犯罪学学院', '犯罪学', '2016', 'exer', '19');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '公安管理学院', '公安管理学', '2016', 'exer', '33');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '国际警务执法学院', '涉外警务', '2016', 'exer', '34');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '犯罪学学院', '犯罪学', '2017', 'exer', '6');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '公安管理学院', '公安管理学', '2017', 'exer', '79');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '国际警务执法学院', '涉外警务', '2017', 'exer', '44');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '交通管理学院', '交通管理工程', '2015', 'swim', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '国内安全保卫', '2015', 'swim', '15');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '国内安全保卫', '2015', 'swim', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '警体战训学院', '警务指挥与战术', '2017', 'swim', '9');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '国内安全保卫', '2016', 'swim', '13');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '公安情报学', '2017', 'swim', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '公安情报学', '2017', 'swim', '6');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '交通管理学院', '交通管理工程', '2016', 'swim', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '安全防范工程', '2017', 'swim', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '安全防范工程', '2017', 'swim', '11');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '交通管理学院', '交通管理工程', '2017', 'swim', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '公安视听技术', '2017', 'swim', '11');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '公安情报学', '2018', 'swim', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '公安管理学院', '公安管理学', '2018', 'swim', '5');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '安全防范工程', '2018', 'swim', '3');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '公安视听技术', '2018', 'swim', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '公安视听技术', '2018', 'swim', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '公安情报学', '2015', 'volly', '4');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '犯罪学学院', '犯罪学', '2015', 'volly', '3');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '国际警务执法学院', '涉外警务', '2015', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '国内安全保卫', '2015', 'volly', '18');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '安全防范工程', '2015', 'volly', '6');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '交通管理学院', '交通管理工程', '2015', 'volly', '7');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '警体战训学院', '警务指挥与战术', '2015', 'volly', '9');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '公安视听技术', '2015', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '国内安全保卫', '2016', 'volly', '59');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '公安情报学', '2016', 'volly', '8');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '安全防范工程', '2016', 'volly', '11');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '交通管理学院', '交通管理工程', '2016', 'volly', '3');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '警体战训学院', '警务指挥与战术', '2016', 'volly', '4');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '公安视听技术', '2016', 'volly', '7');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '公安情报学', '2017', 'volly', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '公安情报学', '2017', 'volly', '3');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '犯罪学学院', '犯罪学', '2017', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '安全防范工程', '2017', 'volly', '20');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '安全防范工程', '2017', 'volly', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '交通管理学院', '交通管理工程', '2017', 'volly', '31');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '警体战训学院', '警务指挥与战术', '2017', 'volly', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '公安视听技术', '2017', 'volly', '15');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '公安学类', '2018', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '公安情报学', '2018', 'volly', '6');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '犯罪学学院', '犯罪学', '2018', 'volly', '25');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '犯罪学学院', '犯罪学', '2018', 'volly', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '犯罪学学院', '公安学类', '2018', 'volly', '9');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '公安管理学院', '公安管理学', '2018', 'volly', '8');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '安全防范工程', '2018', 'volly', '110');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '安全防范工程', '2018', 'volly', '4');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '公安技术类', '2018', 'volly', '5');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '交通管理学院', '交通管理工程', '2018', 'volly', '32');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '警体战训学院', '警务指挥与战术', '2018', 'volly', '6');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '公安视听技术', '2018', 'volly', '80');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '犯罪学学院', '犯罪学', '2015', 'fieldM', '54');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '犯罪学学院', '犯罪学', '2015', 'fieldM', '1307');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '公安管理学院', '公安管理学', '2015', 'fieldM', '122');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '公安管理学院', '公安管理学', '2015', 'fieldM', '2670');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '国际警务执法学院', '涉外警务', '2015', 'fieldM', '2116');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '国际警务执法学院', '涉外警务', '2016', 'fieldM', '119');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '国际警务执法学院', '涉外警务', '2016', 'fieldM', '2732');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '交通管理学院', '交通管理工程', '2015', 'fieldM', '22');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '公安情报学', '2015', 'fieldM', '5');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '犯罪学学院', '犯罪学', '2016', 'fieldM', '57');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '犯罪学学院', '犯罪学', '2016', 'fieldM', '1921');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '公安管理学院', '公安管理学', '2017', 'fieldM', '5687');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '公安管理学院', '公安管理学', '2017', 'fieldM', '223');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '国际警务执法学院', '涉外警务', '2015', 'fieldM', '96');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '安全防范工程', '2015', 'fieldM', '16');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '警体战训学院', '警务指挥与战术', '2015', 'fieldM', '5');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '公安视听技术', '2015', 'fieldM', '3');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '公安情报学', '2016', 'fieldM', '7');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '犯罪学学院', '犯罪学', '2017', 'fieldM', '1792');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '公安管理学院', '公安管理学', '2016', 'fieldM', '122');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '公安管理学院', '公安管理学', '2016', 'fieldM', '3016');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '公安情报学', '2016', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '国内安全保卫', '2016', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '安全防范工程', '2016', 'fieldM', '3');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '公安视听技术', '2016', 'fieldM', '3');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '公安情报学', '2017', 'fieldM', '6');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '犯罪学学院', '犯罪学', '2017', 'fieldM', '43');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '国际警务执法学院', '涉外警务', '2017', 'fieldM', '5400');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '国际警务执法学院', '涉外警务', '2017', 'fieldM', '169');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '安全防范工程', '2017', 'fieldM', '4');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '交通管理学院', '交通管理工程', '2017', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '交通管理学院', '交通管理工程', '2017', 'fieldM', '36');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '警体战训学院', '警务指挥与战术', '2017', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '公安视听技术', '2017', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '经济犯罪侦查', '2017', 'fieldM', '27');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '国内安全保卫', '2017', 'fieldM', '22');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '公安学类', '2018', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '公安情报学', '2018', 'fieldM', '3');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '犯罪学学院', '犯罪学', '2018', 'fieldM', '4');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '公安管理学院', '公安管理学', '2018', 'fieldM', '12');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '国际警务执法学院', '公安学类', '2018', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '安全防范工程', '2018', 'fieldM', '4');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '交通管理学院', '交通管理工程', '2018', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '公安情报学', '2015', 'fieldT', '402');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '警体战训学院', '警务指挥与战术', '2015', 'fieldT', '233');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '公安情报学', '2015', 'fieldT', '20');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '公安情报学', '2016', 'fieldT', '475');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '安全防范工程', '2015', 'fieldT', '911');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '交通管理学院', '交通管理工程', '2015', 'fieldT', '11');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '交通管理学院', '交通管理工程', '2015', 'fieldT', '305');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '公安视听技术', '2015', 'fieldT', '406');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '犯罪学学院', '犯罪学', '2015', 'fieldT', '36');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '公安管理学院', '公安管理学', '2015', 'fieldT', '21');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '公安管理学院', '公安管理学', '2015', 'fieldT', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '国际警务执法学院', '涉外警务', '2015', 'fieldT', '4');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '国内安全保卫', '2015', 'fieldT', '919');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '国内安全保卫', '2015', 'fieldT', '34');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '安全防范工程', '2015', 'fieldT', '16');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '安全防范工程', '2017', 'fieldT', '1577');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '安全防范工程', '2016', 'fieldT', '949');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '警体战训学院', '警务指挥与战术', '2016', 'fieldT', '9');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '警体战训学院', '警务指挥与战术', '2016', 'fieldT', '191');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '警体战训学院', '警务指挥与战术', '2017', 'fieldT', '320');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '警体战训学院', '警务指挥与战术', '2015', 'fieldT', '5');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '公安视听技术', '2015', 'fieldT', '11');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '国内安全保卫', '2016', 'fieldT', '33');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '国内安全保卫', '2016', 'fieldT', '1110');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '公安情报学', '2016', 'fieldT', '8');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '公安情报学', '2017', 'fieldT', '428');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '犯罪学学院', '犯罪学', '2016', 'fieldT', '8');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '公安管理学院', '公安管理学', '2016', 'fieldT', '11');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '国际警务执法学院', '涉外警务', '2016', 'fieldT', '33');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '国际警务执法学院', '涉外警务', '2016', 'fieldT', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '安全防范工程', '2016', 'fieldT', '25');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '交通管理学院', '交通管理工程', '2016', 'fieldT', '487');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '交通管理学院', '交通管理工程', '2016', 'fieldT', '15');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '公安视听技术', '2016', 'fieldT', '16');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '公安视听技术', '2016', 'fieldT', '667');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '公安视听技术', '2017', 'fieldT', '821');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '公安情报学', '2017', 'fieldT', '22');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '犯罪学学院', '犯罪学', '2017', 'fieldT', '11');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '公安管理学院', '公安管理学', '2017', 'fieldT', '22');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '国际警务执法学院', '涉外警务', '2017', 'fieldT', '18');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '安全防范工程', '2017', 'fieldT', '38');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '交通管理学院', '交通管理工程', '2017', 'fieldT', '731');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '交通管理学院', '交通管理工程', '2017', 'fieldT', '23');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '公安管理学院', '公安管理学', '2018', 'fieldT', '541');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '交通管理学院', '交通管理工程', '2018', 'fieldT', '471');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '警体战训学院', '警务指挥与战术', '2017', 'fieldT', '10');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '公安视听技术', '2017', 'fieldT', '22');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '公安学类', '2018', 'fieldT', '8');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '治安学院', '公安学类', '2018', 'fieldT', '96');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '治安学院', '公安学类', '2018', 'fieldT', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '公安学类', '2018', 'fieldT', '99');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '公安学类', '2018', 'fieldT', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '公安情报学', '2018', 'fieldT', '325');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '公安情报学', '2018', 'fieldT', '18');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '犯罪学学院', '犯罪学', '2018', 'fieldT', '673');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '犯罪学学院', '犯罪学', '2018', 'fieldT', '28');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '犯罪学学院', '公安学类', '2018', 'fieldT', '26');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '犯罪学学院', '公安学类', '2018', 'fieldT', '3');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '公安管理学院', '公安管理学', '2018', 'fieldT', '19');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '公安管理学院', '公安学类', '2018', 'fieldT', '12');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '公安管理学院', '公安学类', '2018', 'fieldT', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '国际警务执法学院', '公安学类', '2018', 'fieldT', '22');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '国际警务执法学院', '公安学类', '2018', 'fieldT', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '刑事科学技术学院', '公安技术类', '2018', 'fieldT', '12');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '安全防范工程', '2018', 'fieldT', '88');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '安全防范工程', '2018', 'fieldT', '2248');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '公安技术类', '2018', 'fieldT', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '公安技术类', '2018', 'fieldT', '30');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '交通管理学院', '交通管理工程', '2018', 'fieldT', '36');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '交通管理学院', '公安技术类', '2018', 'fieldT', '8');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '警体战训学院', '警务指挥与战术', '2018', 'fieldT', '368');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '警体战训学院', '警务指挥与战术', '2018', 'fieldT', '6');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '警体战训学院', '公安学类', '2018', 'fieldT', '10');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '公安视听技术', '2018', 'fieldT', '1276');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '公安视听技术', '2018', 'fieldT', '70');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '治安学', '2015', 'pp', '31');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '法学院', '治安学', '2015', 'pp', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '治安学', '2016', 'pp', '26');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '治安学', '2017', 'pp', '45');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '治安学', '2015', 'exer', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '治安学', '2016', 'exer', '8');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '治安学', '2017', 'exer', '18');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '治安学院', '治安学', '2015', 'swim', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '侦查学', '2015', 'swim', '7');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '网络安全与执法', '2015', 'swim', '4');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '治安学院', '治安学', '2017', 'swim', '9');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '治安学院', '治安学', '2016', 'swim', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '侦查学', '2016', 'swim', '3');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '刑事科学技术学院', '刑事科学技术', '2016', 'swim', '5');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '网络安全与执法', '2016', 'swim', '13');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '网络安全与执法', '2016', 'swim', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '侦查学', '2017', 'swim', '36');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '刑事科学技术学院', '刑事科学技术', '2017', 'swim', '21');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '网络安全与执法', '2017', 'swim', '33');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '网络安全与执法', '2017', 'swim', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '治安学', '2018', 'swim', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '治安学院', '治安学', '2018', 'swim', '7');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '侦查学', '2018', 'swim', '6');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '刑事科学技术学院', '刑事科学技术', '2018', 'swim', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '网络安全与执法', '2018', 'swim', '20');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '侦查学', '2016', 'volly', '51');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '治安学院', '治安学', '2015', 'volly', '12');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '侦查学', '2015', 'volly', '39');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '侦查学', '2015', 'volly', '5');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '侦查学', '2017', 'volly', '64');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '刑事科学技术学院', '刑事科学技术', '2015', 'volly', '13');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '刑事科学技术学院', '刑事科学技术', '2015', 'volly', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '网络安全与执法', '2015', 'volly', '11');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '治安学', '2016', 'volly', '5');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '治安学院', '治安学', '2016', 'volly', '25');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '侦查学', '2016', 'volly', '3');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '刑事科学技术学院', '刑事科学技术', '2016', 'volly', '5');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '网络安全与执法', '2016', 'volly', '5');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '网络安全与执法', '2016', 'volly', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '治安学院', '治安学', '2017', 'volly', '32');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '侦查学', '2017', 'volly', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '刑事科学技术学院', '刑事科学技术', '2017', 'volly', '20');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '刑事科学技术学院', '刑事科学技术', '2017', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '网络安全与执法', '2017', 'volly', '21');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '网络安全与执法', '2017', 'volly', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '治安学', '2018', 'volly', '9');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '治安学院', '治安学', '2018', 'volly', '81');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '治安学院', '治安学', '2018', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '侦查学', '2018', 'volly', '56');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '侦查学', '2018', 'volly', '2');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '国际警务执法学院', '涉外警务', '2018', 'volly', '10');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '刑事科学技术学院', '刑事科学技术', '2018', 'volly', '7');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '网络安全与执法', '2018', 'volly', '91');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '网络安全与执法', '2018', 'volly', '3');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '治安学院', '治安学', '2015', 'fieldM', '39');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '侦查学', '2015', 'fieldM', '29');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '治安学', '2015', 'fieldM', '1545');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '法学院', '治安学', '2015', 'fieldM', '52');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '治安学', '2016', 'fieldM', '1577');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '刑事科学技术学院', '刑事科学技术', '2015', 'fieldM', '17');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '网络安全与执法', '2015', 'fieldM', '26');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '法学院', '治安学', '2016', 'fieldM', '57');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '治安学院', '治安学', '2016', 'fieldM', '38');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '侦查学', '2016', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '侦查学', '2016', 'fieldM', '11');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '刑事科学技术学院', '刑事科学技术', '2016', 'fieldM', '6');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '网络安全与执法', '2016', 'fieldM', '4');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '网络安全与执法', '2017', 'fieldM', '100');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '治安学', '2017', 'fieldM', '1777');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '法学院', '治安学', '2017', 'fieldM', '59');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '治安学院', '治安学', '2017', 'fieldM', '18');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '侦查学', '2017', 'fieldM', '77');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '侦查学', '2017', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '侦查学', '2017', 'fieldM', '20');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '刑事科学技术学院', '刑事科学技术', '2017', 'fieldM', '76');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '治安学', '2018', 'fieldM', '36');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '治安学院', '治安学', '2018', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '国际警务执法学院', '涉外警务', '2018', 'fieldM', '15');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '刑事科学技术学院', '刑事科学技术', '2018', 'fieldM', '28');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '网络安全与执法', '2018', 'fieldM', '6');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '网络安全与执法', '2015', 'fieldT', '1121');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '治安学院', '治安学', '2015', 'fieldT', '1168');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '侦查学', '2015', 'fieldT', '2933');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '侦查学', '2016', 'fieldT', '3277');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '侦查学', '2016', 'fieldT', '85');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '刑事科学技术学院', '刑事科学技术', '2015', 'fieldT', '457');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '治安学', '2015', 'fieldT', '1');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '治安学院', '治安学', '2015', 'fieldT', '74');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '治安学院', '治安学', '2017', 'fieldT', '1942');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '侦查学', '2015', 'fieldT', '120');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '侦查学', '2017', 'fieldT', '3466');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '侦查学', '2017', 'fieldT', '80');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '刑事科学技术学院', '刑事科学技术', '2015', 'fieldT', '15');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '网络安全与执法', '2015', 'fieldT', '28');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '网络安全与执法', '2016', 'fieldT', '1429');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '治安学', '2016', 'fieldT', '20');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '治安学院', '治安学', '2016', 'fieldT', '43');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '治安学院', '治安学', '2016', 'fieldT', '1885');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '治安学院', '治安学', '2017', 'fieldT', '40');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '刑事科学技术学院', '刑事科学技术', '2016', 'fieldT', '375');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '刑事科学技术学院', '刑事科学技术', '2017', 'fieldT', '838');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '刑事科学技术学院', '刑事科学技术', '2016', 'fieldT', '13');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '网络安全与执法', '2016', 'fieldT', '54');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '网络安全与执法', '2017', 'fieldT', '57');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '网络安全与执法', '2017', 'fieldT', '2211');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '治安学', '2017', 'fieldT', '7');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '刑事科学技术学院', '刑事科学技术', '2017', 'fieldT', '30');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '治安学院', '治安学', '2018', 'fieldT', '53');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '治安学院', '治安学', '2018', 'fieldT', '2601');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '法学院', '治安学', '2018', 'fieldT', '11');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '法学院', '治安学', '2018', 'fieldT', '382');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '侦查与反恐怖学院', '侦查学', '2018', 'fieldT', '109');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '侦查与反恐怖学院', '侦查学', '2018', 'fieldT', '2050');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '国际警务执法学院', '涉外警务', '2018', 'fieldT', '651');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '国际警务执法学院', '涉外警务', '2018', 'fieldT', '26');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '刑事科学技术学院', '刑事科学技术', '2018', 'fieldT', '954');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '刑事科学技术学院', '刑事科学技术', '2018', 'fieldT', '35');
INSERT INTO `es_sport_venue` VALUES ('2018-11', '信息技术与网络安全学院', '网络安全与执法', '2018', 'fieldT', '86');
INSERT INTO `es_sport_venue` VALUES ('2018-12', '信息技术与网络安全学院', '网络安全与执法', '2018', 'fieldT', '3019');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '国际警务执法学院', '涉外警务', '2015', 'fieldM', '350');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '犯罪学学院', '犯罪学', '2016', 'fieldM', '81');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '公安管理学院', '公安管理学', '2018', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '公安管理学院', '公安管理学', '2017', 'fieldM', '885');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '国际警务执法学院', '涉外警务', '2017', 'fieldM', '572');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '交通管理学院', '交通管理工程', '2015', 'fieldT', '56');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '警体战训学院', '警务指挥与战术', '2015', 'fieldT', '17');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '公安管理学院', '公安管理学', '2016', 'fieldM', '61');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '安全防范工程', '2015', 'fieldT', '257');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '公安管理学院', '公安管理学', '2015', 'fieldM', '275');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '公安视听技术', '2017', 'fieldT', '139');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '国内安全保卫', '2015', 'fieldT', '188');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '公安视听技术', '2015', 'fieldT', '98');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '安全防范工程', '2016', 'fieldT', '45');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '交通管理学院', '交通管理工程', '2018', 'fieldT', '127');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '公安视听技术', '2018', 'fieldT', '339');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '犯罪学学院', '犯罪学', '2017', 'fieldM', '278');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '安全防范工程', '2017', 'fieldM', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '交通管理学院', '交通管理工程', '2016', 'fieldT', '36');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '安全防范工程', '2017', 'fieldT', '338');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '交通管理学院', '交通管理工程', '2017', 'fieldT', '116');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '公安情报学', '2018', 'fieldT', '78');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '安全防范工程', '2018', 'fieldT', '570');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '国际警务执法学院', '涉外警务', '2016', 'fieldM', '91');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '公安情报学', '2016', 'fieldT', '19');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '公安情报学', '2015', 'fieldT', '57');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '国内安全保卫', '2016', 'fieldT', '18');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '警体战训学院', '警务指挥与战术', '2016', 'fieldT', '14');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '公安视听技术', '2016', 'fieldT', '19');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '公安情报学', '2017', 'fieldT', '101');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '警体战训学院', '警务指挥与战术', '2017', 'fieldT', '60');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '犯罪学学院', '犯罪学', '2018', 'fieldT', '134');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '公安管理学院', '公安管理学', '2018', 'fieldT', '172');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '刑事科学技术学院', '公安技术类', '2018', 'fieldT', '10');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '公安技术类', '2018', 'fieldT', '6');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '警体战训学院', '警务指挥与战术', '2018', 'fieldT', '80');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '犯罪学学院', '犯罪学', '2015', 'fieldM', '123');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '公安情报学', '2016', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '公安视听技术', '2017', 'volly', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '法学院', '公安学类', '2018', 'fieldT', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '治安学院', '公安学类', '2018', 'fieldT', '14');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '国际警务执法学院', '公安学类', '2018', 'fieldT', '6');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '公安情报学', '2017', 'volly', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '犯罪学学院', '犯罪学', '2018', 'volly', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '安全防范工程', '2018', 'volly', '7');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '公安学类', '2018', 'fieldT', '17');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '犯罪学学院', '公安学类', '2018', 'fieldT', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '公安情报学', '2015', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '交通管理学院', '交通管理工程', '2015', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '交通管理学院', '交通管理工程', '2016', 'fieldM', '7');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '公安情报学', '2015', 'volly', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '交通管理学院', '交通管理工程', '2018', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '公安情报学', '2017', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '安全防范工程', '2017', 'volly', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '公安视听技术', '2018', 'volly', '4');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '犯罪学学院', '犯罪学', '2016', 'pp', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '犯罪学学院', '犯罪学', '2015', 'fieldT', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '公安管理学院', '公安管理学', '2015', 'fieldT', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '安全防范工程', '2015', 'volly', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '交通管理学院', '交通管理工程', '2017', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '公安管理学院', '公安管理学', '2018', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '公安管理学院', '公安管理学', '2017', 'exer', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '国际警务执法学院', '涉外警务', '2017', 'exer', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '国际警务执法学院', '涉外警务', '2015', 'pp', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '公安管理学院', '公安管理学', '2017', 'pp', '4');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '国际警务执法学院', '涉外警务', '2017', 'pp', '6');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '公安管理学院', '公安学类', '2018', 'fieldT', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '警体战训学院', '公安学类', '2018', 'fieldT', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '交通管理学院', '交通管理工程', '2017', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '国内安全保卫', '2015', 'volly', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '国际警务执法学院', '涉外警务', '2015', 'exer', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '治安学院', '治安学', '2015', 'fieldM', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '网络安全与执法', '2015', 'fieldM', '4');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '侦查学', '2015', 'fieldT', '601');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '治安学院', '治安学', '2015', 'fieldT', '228');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '网络安全与执法', '2015', 'fieldT', '280');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '治安学院', '治安学', '2015', 'volly', '8');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '侦查学', '2015', 'volly', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '侦查学', '2017', 'fieldT', '667');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '法学院', '治安学', '2015', 'fieldM', '212');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '刑事科学技术学院', '刑事科学技术', '2018', 'fieldT', '260');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '法学院', '治安学', '2017', 'fieldM', '350');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '刑事科学技术学院', '刑事科学技术', '2017', 'fieldM', '4');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '刑事科学技术学院', '刑事科学技术', '2015', 'fieldT', '89');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '侦查学', '2016', 'fieldT', '57');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '刑事科学技术学院', '刑事科学技术', '2016', 'fieldT', '25');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '网络安全与执法', '2017', 'fieldT', '410');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '网络安全与执法', '2016', 'fieldT', '55');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '治安学院', '治安学', '2017', 'fieldT', '305');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '刑事科学技术学院', '刑事科学技术', '2017', 'fieldT', '260');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '法学院', '治安学', '2018', 'fieldT', '103');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '治安学院', '治安学', '2018', 'fieldT', '418');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '侦查学', '2018', 'fieldT', '533');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '国际警务执法学院', '涉外警务', '2018', 'fieldT', '197');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '网络安全与执法', '2018', 'fieldT', '510');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '法学院', '治安学', '2016', 'fieldM', '111');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '侦查学', '2018', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '侦查学', '2016', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '治安学院', '治安学', '2016', 'fieldT', '27');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '侦查学', '2016', 'fieldM', '6');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '治安学院', '治安学', '2017', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '侦查学', '2018', 'volly', '5');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '国际警务执法学院', '涉外警务', '2018', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '网络安全与执法', '2018', 'volly', '5');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '法学院', '侦查学', '2017', 'fieldM', '4');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '网络安全与执法', '2017', 'fieldM', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '法学院', '治安学', '2018', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '刑事科学技术学院', '刑事科学技术', '2015', 'volly', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '治安学院', '治安学', '2017', 'volly', '4');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '侦查学', '2017', 'volly', '4');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '治安学院', '治安学', '2018', 'volly', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '刑事科学技术学院', '刑事科学技术', '2015', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '网络安全与执法', '2017', 'volly', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '刑事科学技术学院', '刑事科学技术', '2017', 'swim', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '刑事科学技术学院', '刑事科学技术', '2018', 'swim', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '刑事科学技术学院', '刑事科学技术', '2017', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '信息技术与网络安全学院', '网络安全与执法', '2015', 'swim', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '法学院', '治安学', '2017', 'pp', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-02', '侦查与反恐怖学院', '侦查学', '2017', 'swim', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '公安情报学', '2015', 'fieldT', '88');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '国内安全保卫', '2015', 'fieldT', '9');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '安全防范工程', '2015', 'fieldT', '265');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '交通管理学院', '交通管理工程', '2015', 'fieldT', '135');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '警体战训学院', '警务指挥与战术', '2015', 'fieldT', '59');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '公安视听技术', '2015', 'fieldT', '147');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '国内安全保卫', '2016', 'fieldT', '413');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '公安情报学', '2016', 'fieldT', '119');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '安全防范工程', '2016', 'fieldT', '266');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '安全防范工程', '2017', 'fieldT', '394');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '交通管理学院', '交通管理工程', '2016', 'fieldT', '180');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '警体战训学院', '警务指挥与战术', '2016', 'fieldT', '42');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '公安视听技术', '2016', 'fieldT', '124');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '公安情报学', '2017', 'fieldT', '95');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '交通管理学院', '交通管理工程', '2017', 'fieldT', '194');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '警体战训学院', '警务指挥与战术', '2017', 'fieldT', '66');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '公安视听技术', '2017', 'fieldT', '214');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '公安学类', '2018', 'fieldT', '43');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '公安情报学', '2018', 'fieldT', '89');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '犯罪学学院', '犯罪学', '2018', 'fieldT', '229');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '公安管理学院', '公安管理学', '2018', 'fieldT', '107');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '安全防范工程', '2018', 'fieldT', '910');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '交通管理学院', '交通管理工程', '2018', 'fieldT', '142');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '公安视听技术', '2018', 'fieldT', '532');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '公安管理学院', '公安管理学', '2015', 'fieldM', '894');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '犯罪学学院', '犯罪学', '2015', 'fieldM', '431');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '公安管理学院', '公安管理学', '2017', 'fieldM', '1512');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '国际警务执法学院', '涉外警务', '2015', 'fieldM', '711');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '犯罪学学院', '犯罪学', '2016', 'fieldM', '563');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '公安管理学院', '公安管理学', '2016', 'fieldM', '772');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '国际警务执法学院', '涉外警务', '2016', 'fieldM', '835');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '犯罪学学院', '犯罪学', '2017', 'fieldM', '477');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '国际警务执法学院', '涉外警务', '2017', 'fieldM', '1387');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '治安学院', '公安学类', '2018', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '公安视听技术', '2018', 'volly', '5');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '公安管理学院', '公安管理学', '2015', 'pp', '12');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '犯罪学学院', '犯罪学', '2016', 'fieldT', '8');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '治安学院', '公安学类', '2018', 'fieldT', '15');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '犯罪学学院', '公安学类', '2018', 'fieldT', '13');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '公安管理学院', '公安学类', '2018', 'fieldT', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '公安技术类', '2018', 'fieldT', '8');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '警体战训学院', '警务指挥与战术', '2018', 'fieldT', '83');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '警体战训学院', '公安学类', '2018', 'fieldT', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '犯罪学学院', '犯罪学', '2015', 'pp', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '犯罪学学院', '犯罪学', '2016', 'pp', '5');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '公安管理学院', '公安管理学', '2017', 'pp', '5');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '国际警务执法学院', '涉外警务', '2017', 'pp', '4');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '犯罪学学院', '犯罪学', '2015', 'fieldT', '9');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '国际警务执法学院', '涉外警务', '2016', 'fieldT', '4');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '国际警务执法学院', '公安学类', '2018', 'fieldT', '5');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '交通管理学院', '公安技术类', '2018', 'fieldT', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '公安管理学院', '公安管理学', '2018', 'fieldM', '7');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '国内安全保卫', '2016', 'volly', '8');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '犯罪学学院', '犯罪学', '2018', 'volly', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '安全防范工程', '2018', 'volly', '12');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '公安管理学院', '公安管理学', '2015', 'exer', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '犯罪学学院', '犯罪学', '2016', 'exer', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '国际警务执法学院', '涉外警务', '2016', 'exer', '5');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '刑事科学技术学院', '公安技术类', '2018', 'fieldT', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '交通管理学院', '交通管理工程', '2016', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '安全防范工程', '2017', 'volly', '4');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '公安学类', '2018', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '公安管理学院', '公安管理学', '2018', 'swim', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '国际警务执法学院', '涉外警务', '2015', 'fieldT', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '公安管理学院', '公安管理学', '2017', 'exer', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '国际警务执法学院', '涉外警务', '2017', 'exer', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '犯罪学学院', '犯罪学', '2017', 'pp', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '公安管理学院', '公安管理学', '2015', 'fieldT', '9');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '安全防范工程', '2017', 'fieldM', '4');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '国际警务执法学院', '涉外警务', '2015', 'exer', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '公安管理学院', '公安管理学', '2016', 'pp', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '交通管理学院', '交通管理工程', '2015', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '国内安全保卫', '2015', 'fieldM', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '国际警务执法学院', '涉外警务', '2015', 'pp', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '交通管理学院', '交通管理工程', '2015', 'fieldM', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '公安情报学', '2015', 'fieldM', '4');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '安全防范工程', '2015', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '公安情报学', '2017', 'fieldM', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '公安管理学院', '公安管理学', '2018', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '国际警务执法学院', '涉外警务', '2016', 'pp', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '交通管理学院', '交通管理工程', '2018', 'fieldM', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '公安视听技术', '2016', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '公安情报学', '2016', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '公安视听技术', '2016', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '交通管理学院', '交通管理工程', '2017', 'fieldM', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '警体战训学院', '警务指挥与战术', '2017', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '犯罪学学院', '犯罪学', '2018', 'fieldM', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '警体战训学院', '警务指挥与战术', '2018', 'fieldM', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '公安视听技术', '2018', 'fieldM', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '安全防范工程', '2018', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '侦查学', '2015', 'fieldT', '1379');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '治安学院', '治安学', '2015', 'fieldT', '344');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '刑事科学技术学院', '刑事科学技术', '2015', 'fieldT', '149');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '网络安全与执法', '2015', 'fieldT', '345');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '治安学院', '治安学', '2016', 'fieldT', '580');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '侦查学', '2016', 'fieldT', '1425');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '刑事科学技术学院', '刑事科学技术', '2016', 'fieldT', '108');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '网络安全与执法', '2016', 'fieldT', '318');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '治安学院', '治安学', '2017', 'fieldT', '450');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '侦查学', '2017', 'fieldT', '1351');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '刑事科学技术学院', '刑事科学技术', '2017', 'fieldT', '209');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '网络安全与执法', '2017', 'fieldT', '405');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '治安学院', '治安学', '2018', 'fieldT', '499');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '侦查学', '2018', 'fieldT', '775');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '国际警务执法学院', '涉外警务', '2018', 'fieldT', '122');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '刑事科学技术学院', '刑事科学技术', '2018', 'fieldT', '254');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '网络安全与执法', '2018', 'fieldT', '1049');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '法学院', '治安学', '2015', 'fieldM', '559');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '法学院', '治安学', '2016', 'fieldM', '440');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '治安学院', '治安学', '2016', 'fieldM', '8');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '侦查学', '2016', 'fieldM', '11');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '法学院', '治安学', '2017', 'fieldM', '534');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '治安学院', '治安学', '2017', 'fieldM', '7');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '网络安全与执法', '2015', 'volly', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '侦查学', '2016', 'volly', '15');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '网络安全与执法', '2016', 'volly', '8');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '治安学院', '治安学', '2018', 'volly', '4');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '网络安全与执法', '2018', 'volly', '14');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '法学院', '治安学', '2018', 'fieldT', '72');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '国际警务执法学院', '涉外警务', '2018', 'fieldM', '8');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '法学院', '治安学', '2018', 'volly', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '法学院', '治安学', '2016', 'pp', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '网络安全与执法', '2015', 'fieldM', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '网络安全与执法', '2017', 'fieldM', '9');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '治安学院', '治安学', '2016', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '侦查学', '2017', 'volly', '12');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '侦查学', '2015', 'fieldM', '4');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '侦查学', '2018', 'volly', '4');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '刑事科学技术学院', '刑事科学技术', '2018', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '法学院', '治安学', '2015', 'pp', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '法学院', '侦查学', '2017', 'fieldM', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '侦查学', '2015', 'volly', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '治安学院', '治安学', '2017', 'volly', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '治安学院', '治安学', '2015', 'volly', '3');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '网络安全与执法', '2017', 'volly', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '法学院', '治安学', '2016', 'exer', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '法学院', '治安学', '2016', 'fieldT', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '刑事科学技术学院', '刑事科学技术', '2016', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '侦查学', '2017', 'fieldM', '9');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '侦查与反恐怖学院', '侦查学', '2018', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '治安学院', '治安学', '2015', 'fieldM', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '治安学院', '治安学', '2018', 'fieldM', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '刑事科学技术学院', '刑事科学技术', '2018', 'fieldM', '1');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '网络安全与执法', '2018', 'fieldM', '7');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '刑事科学技术学院', '刑事科学技术', '2017', 'fieldM', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '信息技术与网络安全学院', '网络安全与执法', '2016', 'fieldM', '2');
INSERT INTO `es_sport_venue` VALUES ('2019-01', '刑事科学技术学院', '刑事科学技术', '2015', 'fieldM', '1');

-- ----------------------------
-- Table structure for `es_user`
-- ----------------------------
DROP TABLE IF EXISTS `es_user`;
CREATE TABLE `es_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(105) NOT NULL,
  `api_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_username_uindex` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of es_user
-- ----------------------------
INSERT INTO `es_user` VALUES ('1', 'admin', 'pbkdf2:sha256$5000$O5aeqS3VC2J9xJNZ$5c769c233f5c3fe623caa25620a22e6e91cd28fa182f3b5fd345451d41aae522', '213');

-- ----------------------------
-- Table structure for `tbl_permission`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_permission`;
CREATE TABLE `tbl_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `permission` varchar(50) NOT NULL COMMENT '权限',
  `url` varchar(50) NOT NULL COMMENT 'url',
  `description` varchar(50) DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='权限表';

-- ----------------------------
-- Records of tbl_permission
-- ----------------------------
INSERT INTO `tbl_permission` VALUES ('1', '用户列表', 'user:view', 'user/userList', '用户列表');
INSERT INTO `tbl_permission` VALUES ('2', '用户添加', 'user:add', 'user/userAdd', '用户添加');
INSERT INTO `tbl_permission` VALUES ('3', '用户删除', 'user:del', 'user/userDel', '用户删除');

-- ----------------------------
-- Table structure for `tbl_role`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `description` varchar(50) DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色表';

-- ----------------------------
-- Records of tbl_role
-- ----------------------------
INSERT INTO `tbl_role` VALUES ('1', '超级管理员', '拥有全部权限');
INSERT INTO `tbl_role` VALUES ('2', '角色管理员', '拥有全部查看权限，以及角色的增删改权限');
INSERT INTO `tbl_role` VALUES ('3', '权限管理员', '拥有全部查看权限，以及权限的增删改权限');
INSERT INTO `tbl_role` VALUES ('4', '用户管理员', '拥有全部查看权限，以及用户的增删改权限');
INSERT INTO `tbl_role` VALUES ('5', '审核管理员', '拥有全部查看权限，以及审核的权限');

-- ----------------------------
-- Table structure for `tbl_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role_permission`;
CREATE TABLE `tbl_role_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `role_id` int(10) unsigned NOT NULL COMMENT '角色id',
  `permission_id` int(10) unsigned NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色权限表';

-- ----------------------------
-- Records of tbl_role_permission
-- ----------------------------
INSERT INTO `tbl_role_permission` VALUES ('1', '1', '1');
INSERT INTO `tbl_role_permission` VALUES ('2', '1', '2');
INSERT INTO `tbl_role_permission` VALUES ('3', '1', '3');
INSERT INTO `tbl_role_permission` VALUES ('4', '4', '1');
INSERT INTO `tbl_role_permission` VALUES ('5', '4', '2');
INSERT INTO `tbl_role_permission` VALUES ('6', '4', '3');

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓名',
  `password` char(32) NOT NULL COMMENT '密码',
  `salt` char(32) NOT NULL COMMENT '盐，用于加密',
  `state` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态, 1:可用, 0:不可用',
  `description` varchar(50) DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', 'admin', 'd3c59d25033dbf980d29554025c23a75', '8d78869f470951332959580424d4bf4f', '1', 'bing，作者自己');
INSERT INTO `tbl_user` VALUES ('2', 'brucelee', '5d5c735291a524c80c53ff669d2cde1b', '78d92ba9477b3661bc8be4bd2e8dd8c0', '1', '龙的传人');
INSERT INTO `tbl_user` VALUES ('3', 'zhangsan', 'b8432e3a2a5adc908bd4ff22ba1f2d65', '78d92ba9477b3661bc8be4bd2e8dd8c0', '1', '张三');
INSERT INTO `tbl_user` VALUES ('4', 'lisi', '1fdda90367c23a1f1230eb202104270a', '78d92ba9477b3661bc8be4bd2e8dd8c0', '1', '李四');
INSERT INTO `tbl_user` VALUES ('5', 'jiraya', 'e7c5afb5e2fe7da78641721f2c5aad82', '78d92ba9477b3661bc8be4bd2e8dd8c0', '1', '自来也');

-- ----------------------------
-- Table structure for `tbl_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_role`;
CREATE TABLE `tbl_user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `role_id` int(10) unsigned NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户角色表';

-- ----------------------------
-- Records of tbl_user_role
-- ----------------------------
INSERT INTO `tbl_user_role` VALUES ('1', '1', '1');
INSERT INTO `tbl_user_role` VALUES ('2', '2', '4');

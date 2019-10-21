/*
Navicat MySQL Data Transfer

Source Server         : l
Source Server Version : 50537
Source Host           : 192.168.11.164:3306
Source Database       : qy100_seven_rental_cars_db

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2019-10-19 16:09:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `additional_services`
-- ----------------------------
DROP TABLE IF EXISTS `additional_services`;
CREATE TABLE `additional_services` (
  `id` varchar(20) NOT NULL COMMENT '附加服务的id',
  `additionall_name` varchar(20) DEFAULT NULL COMMENT '附加服务的名称',
  `additionall_cost` varchar(20) DEFAULT NULL COMMENT '附加服务的费用',
  `service_description` varchar(20) DEFAULT NULL COMMENT '服务说明解释',
  `create_time` varchar(20) DEFAULT NULL COMMENT '新增时间',
  `update_time` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `status` int(20) DEFAULT '1' COMMENT '状态',
  `redundance` varchar(20) DEFAULT NULL COMMENT '冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of additional_services
-- ----------------------------

-- ----------------------------
-- Table structure for `appeal`
-- ----------------------------
DROP TABLE IF EXISTS `appeal`;
CREATE TABLE `appeal` (
  `id` varchar(10) NOT NULL,
  `user_id` varchar(10) NOT NULL COMMENT '外键（user表的主键）',
  `user_username` varchar(10) DEFAULT NULL COMMENT '用户昵称',
  `user_phone` varchar(20) DEFAULT NULL COMMENT '用户账号(电话号)',
  `appeal_time` varchar(10) DEFAULT NULL COMMENT '申诉时间',
  `reason` varchar(10) DEFAULT NULL COMMENT '申诉原因',
  `result` varchar(10) DEFAULT NULL COMMENT '申诉结果',
  `managemen_id` varchar(10) NOT NULL COMMENT '外键（管理员表的id）',
  `management_username` varchar(10) DEFAULT NULL COMMENT '管理员名字',
  `rendundance` varchar(10) DEFAULT NULL COMMENT '冗余字段',
  `create_time` varchar(10) DEFAULT NULL COMMENT '新增时间',
  `update_time` varchar(10) DEFAULT NULL COMMENT '修改时间',
  `status` int(2) DEFAULT '1' COMMENT '状态（1正常2禁用）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of appeal
-- ----------------------------

-- ----------------------------
-- Table structure for `blacklist`
-- ----------------------------
DROP TABLE IF EXISTS `blacklist`;
CREATE TABLE `blacklist` (
  `id` varchar(10) NOT NULL COMMENT '黑名单id,主键',
  `user_id` varchar(10) NOT NULL COMMENT '用户表的id，外键',
  `user_phone` varchar(10) DEFAULT NULL COMMENT '用户的手机号',
  `create_time` varchar(10) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(10) DEFAULT NULL COMMENT '修改时间',
  `status` int(2) DEFAULT NULL COMMENT '1正常 2禁用 3删除',
  `redundancy` varchar(10) DEFAULT NULL COMMENT '冗余字段',
  `management_id` varchar(10) DEFAULT NULL COMMENT '管理员表的id（主键）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of blacklist
-- ----------------------------

-- ----------------------------
-- Table structure for `car`
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` varchar(10) NOT NULL COMMENT '汽车的id    主键',
  `name` varchar(30) DEFAULT NULL COMMENT '车辆名称',
  `charge` double(20,0) DEFAULT NULL COMMENT '租车费用基数',
  `pic_path` varchar(30) DEFAULT NULL COMMENT '汽车图片路径',
  `dict_car_operation_id` int(10) DEFAULT NULL COMMENT '变速箱类型<手动/自动>',
  `dict_car_space_id` int(10) DEFAULT NULL COMMENT '汽车座位数',
  `create_time` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `status` int(10) DEFAULT '1' COMMENT '字典状态  1正常 2禁用 3删除',
  `redundancy` varchar(20) DEFAULT NULL COMMENT '冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1', '大众CC', '248', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('10', '福特福克斯', '160', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('11', '福特福睿斯', '198', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('12', '保时捷卡宴', '600', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('13', '别克君越', '280', '', '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('14', '丰田汉兰达', '158', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('15', '马自达3代', '198', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('16', '法拉利488', '4000', null, '4', '6', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('17', '标志', '200', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('18', '奥迪A4L', '400', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('19', '奥迪A6L', '600', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('2', '大众帕萨特', '128', null, '3', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('20', '宝马740', '500', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('21', '宝马M2', '800', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('22', '宝马X3', '700', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('23', '别克威朗', '220', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('24', '别克昂科拉', '260', '', '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('25', '马自达昂克赛拉', '346', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('26', '起亚K3', '160', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('27', '起亚K5', '220', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('28', '传祺GM8', '198', null, '4', '9', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('29', '雪佛兰迈锐宝', '168', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('3', '大众迈腾', '118', null, '3', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('30', '大通G10', '220', null, '4', '9', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('31', '领克01', '198', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('32', '领克03', '244', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('33', '凯迪拉克XTS', '245', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('34', '凯迪拉克CT5', '165', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('35', '凯迪拉克XT6', '298', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('36', '比亚迪唐', '199', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('37', '比亚迪宋', '199', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('38', '雪铁龙爱丽舍', '120', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('39', '本田雅阁', '264', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('4', '大众2017新款捷达', '98', null, '3', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('40', '本田CRV', '220', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('41', '路虎极光', '594', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('42', '路虎神行', '590', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('5', '大众速腾', '108', null, '3', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('6', '2017款雪佛兰赛欧', '148', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('7', '丰田凯美瑞', '159', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('8', '丰田卡罗拉', '159', null, '4', '8', '2019-10-17', null, '1', null);
INSERT INTO `car` VALUES ('9', '丰田普拉多', '350', null, '4', '8', '2019-10-17', null, '1', null);

-- ----------------------------
-- Table structure for `car_info`
-- ----------------------------
DROP TABLE IF EXISTS `car_info`;
CREATE TABLE `car_info` (
  `id` varchar(10) NOT NULL COMMENT '汽车的id',
  `plate_numbers` varchar(10) DEFAULT NULL COMMENT '车牌号',
  `is_scuttle` int(1) DEFAULT '0' COMMENT '是否有天窗（0假/1真）',
  `dict_car_displacement_id` int(10) DEFAULT NULL COMMENT '字典表的外键：排量',
  `dict_car_fuel_id` int(10) DEFAULT NULL COMMENT '字典表的外键：燃料类型<汽油/柴油>',
  `dict_car_drive_id` int(10) DEFAULT NULL COMMENT '字典表的外键：驱动方式',
  `dict_car_store_id` int(10) DEFAULT NULL COMMENT '门店信息表的外键',
  `dict_car_status_id` int(10) DEFAULT NULL COMMENT '字典表的外键：车辆状态',
  `dict_car_color_id` int(10) DEFAULT NULL COMMENT '字典表的外键：颜色',
  `dict_car_power_id` int(10) DEFAULT NULL COMMENT '字典表的外键：排量',
  `dict_car_brand_id` int(10) DEFAULT NULL COMMENT '字典表的外键：品牌',
  `dict_car_style_id` int(10) DEFAULT NULL COMMENT '字典表的外键;款式',
  `create_time` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `status` int(10) DEFAULT '1' COMMENT '字典状态    1正常 2禁用 3删除',
  `redundancy` varchar(20) DEFAULT NULL COMMENT '冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of car_info
-- ----------------------------

-- ----------------------------
-- Table structure for `combo`
-- ----------------------------
DROP TABLE IF EXISTS `combo`;
CREATE TABLE `combo` (
  `id` int(10) NOT NULL COMMENT '套餐id   主键',
  `name` varchar(30) DEFAULT NULL COMMENT '套餐名称',
  `coefficient` double(10,0) DEFAULT NULL COMMENT '打折系数',
  `days` int(4) DEFAULT NULL COMMENT '天数',
  `create_time` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `status` int(1) DEFAULT NULL COMMENT '字典状态',
  `redundancy` varchar(20) DEFAULT NULL COMMENT '冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of combo
-- ----------------------------

-- ----------------------------
-- Table structure for `dictionary`
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary` (
  `id` varchar(20) NOT NULL COMMENT '字典的主键',
  `code` varchar(10) DEFAULT NULL COMMENT '字典code',
  `name` varchar(20) DEFAULT NULL COMMENT '字典名称',
  `type_code` int(10) DEFAULT NULL COMMENT '字典类型code',
  `type_name` varchar(20) DEFAULT NULL COMMENT '字典类型名称',
  `pid` varchar(20) DEFAULT '0' COMMENT '自连接(父类的id)',
  `create_time` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `status` int(10) DEFAULT '1' COMMENT '字典状态  1正常 2禁用 3删除',
  `redundancy` varchar(20) DEFAULT NULL COMMENT '冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES ('1', '1', '男', '2', '性别', '0', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('10', '10', '9座及以上', '4', '汽车座位数', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('100000', '', '中国', '1', '省市区', '0', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('11', '51', '待租赁', '5', '车辆状态', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('110000', '', '北京', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('110100', '100000', '北京市', '1', '省市区', '110000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('110101', '100010', '东城区', '1', '省市区', '110100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('110102', '100032', '西城区', '1', '省市区', '110100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('110105', '100020', '朝阳区', '1', '省市区', '110100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('110106', '100071', '丰台区', '1', '省市区', '110100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('110107', '100043', '石景山区', '1', '省市区', '110100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('110108', '100089', '海淀区', '1', '省市区', '110100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('110109', '102300', '门头沟区', '1', '省市区', '110100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('110111', '102488', '房山区', '1', '省市区', '110100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('110112', '101149', '通州区', '1', '省市区', '110100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('110113', '101300', '顺义区', '1', '省市区', '110100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('110114', '102200', '昌平区', '1', '省市区', '110100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('110115', '102600', '大兴区', '1', '省市区', '110100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('110116', '101400', '怀柔区', '1', '省市区', '110100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('110117', '101200', '平谷区', '1', '省市区', '110100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('110228', '101500', '密云县', '1', '省市区', '110100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('110229', '102100', '延庆县', '1', '省市区', '110100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('12', '52', '租赁中', '5', '车辆状态', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('120000', '', '天津', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('120100', '300000', '天津市', '1', '省市区', '120000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('120101', '300041', '和平区', '1', '省市区', '120100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('120102', '300171', '河东区', '1', '省市区', '120100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('120103', '300202', '河西区', '1', '省市区', '120100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('120104', '300110', '南开区', '1', '省市区', '120100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('120105', '300143', '河北区', '1', '省市区', '120100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('120106', '300131', '红桥区', '1', '省市区', '120100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('120110', '300300', '东丽区', '1', '省市区', '120100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('120111', '300380', '西青区', '1', '省市区', '120100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('120112', '300350', '津南区', '1', '省市区', '120100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('120113', '300400', '北辰区', '1', '省市区', '120100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('120114', '301700', '武清区', '1', '省市区', '120100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('120115', '301800', '宝坻区', '1', '省市区', '120100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('120116', '300451', '滨海新区', '1', '省市区', '120100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('120221', '301500', '宁河县', '1', '省市区', '120100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('120223', '301600', '静海县', '1', '省市区', '120100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('120225', '301900', '蓟县', '1', '省市区', '120100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('13', '53', '检修中', '5', '车辆状态', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('130000', '', '河北省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130100', '050011', '石家庄市', '1', '省市区', '130000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130102', '050011', '长安区', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130104', '050091', '桥西区', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130105', '050051', '新华区', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130107', '050100', '井陉矿区', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130108', '050031', '裕华区', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130109', '052160', '藁城区', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130110', '050200', '鹿泉区', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130111', '051430', '栾城区', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130121', '050300', '井陉县', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130123', '050800', '正定县', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130125', '050600', '行唐县', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130126', '050500', '灵寿县', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130127', '051330', '高邑县', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130128', '052560', '深泽县', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130129', '051230', '赞皇县', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130130', '052460', '无极县', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130131', '050400', '平山县', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130132', '051130', '元氏县', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130133', '051530', '赵县', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130181', '052360', '辛集市', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130183', '052260', '晋州市', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130184', '050700', '新乐市', '1', '省市区', '130100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130200', '063000', '唐山市', '1', '省市区', '130000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130202', '063000', '路南区', '1', '省市区', '130200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130203', '063000', '路北区', '1', '省市区', '130200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130204', '063100', '古冶区', '1', '省市区', '130200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130205', '063021', '开平区', '1', '省市区', '130200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130207', '063300', '丰南区', '1', '省市区', '130200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130208', '064000', '丰润区', '1', '省市区', '130200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130209', '063200', '曹妃甸区', '1', '省市区', '130200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130223', '063700', '滦县', '1', '省市区', '130200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130224', '063500', '滦南县', '1', '省市区', '130200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130225', '063600', '乐亭县', '1', '省市区', '130200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130227', '064300', '迁西县', '1', '省市区', '130200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130229', '064100', '玉田县', '1', '省市区', '130200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130281', '064200', '遵化市', '1', '省市区', '130200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130283', '064400', '迁安市', '1', '省市区', '130200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130300', '066000', '秦皇岛市', '1', '省市区', '130000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130302', '066000', '海港区', '1', '省市区', '130300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130303', '066200', '山海关区', '1', '省市区', '130300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130304', '066100', '北戴河区', '1', '省市区', '130300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130321', '066500', '青龙满族自治县', '1', '省市区', '130300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130322', '066600', '昌黎县', '1', '省市区', '130300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130323', '066300', '抚宁县', '1', '省市区', '130300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130324', '066400', '卢龙县', '1', '省市区', '130300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130400', '056002', '邯郸市', '1', '省市区', '130000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130402', '056001', '邯山区', '1', '省市区', '130400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130403', '056002', '丛台区', '1', '省市区', '130400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130404', '056003', '复兴区', '1', '省市区', '130400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130406', '056200', '峰峰矿区', '1', '省市区', '130400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130421', '056101', '邯郸县', '1', '省市区', '130400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130423', '056600', '临漳县', '1', '省市区', '130400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130424', '056700', '成安县', '1', '省市区', '130400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130425', '056900', '大名县', '1', '省市区', '130400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130426', '056400', '涉县', '1', '省市区', '130400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130427', '056500', '磁县', '1', '省市区', '130400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130428', '057550', '肥乡县', '1', '省市区', '130400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130429', '057150', '永年县', '1', '省市区', '130400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130430', '057450', '邱县', '1', '省市区', '130400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130431', '057350', '鸡泽县', '1', '省市区', '130400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130432', '057650', '广平县', '1', '省市区', '130400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130433', '057750', '馆陶县', '1', '省市区', '130400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130434', '056800', '魏县', '1', '省市区', '130400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130435', '057250', '曲周县', '1', '省市区', '130400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130481', '056300', '武安市', '1', '省市区', '130400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130500', '054001', '邢台市', '1', '省市区', '130000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130502', '054001', '桥东区', '1', '省市区', '130500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130503', '054000', '桥西区', '1', '省市区', '130500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130521', '054001', '邢台县', '1', '省市区', '130500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130522', '054300', '临城县', '1', '省市区', '130500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130523', '054200', '内丘县', '1', '省市区', '130500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130524', '055450', '柏乡县', '1', '省市区', '130500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130525', '055350', '隆尧县', '1', '省市区', '130500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130526', '055150', '任县', '1', '省市区', '130500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130527', '054400', '南和县', '1', '省市区', '130500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130528', '055550', '宁晋县', '1', '省市区', '130500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130529', '055250', '巨鹿县', '1', '省市区', '130500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130530', '055650', '新河县', '1', '省市区', '130500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130531', '054600', '广宗县', '1', '省市区', '130500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130532', '054500', '平乡县', '1', '省市区', '130500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130533', '054700', '威县', '1', '省市区', '130500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130534', '054800', '清河县', '1', '省市区', '130500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130535', '054900', '临西县', '1', '省市区', '130500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130581', '055750', '南宫市', '1', '省市区', '130500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130582', '054100', '沙河市', '1', '省市区', '130500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130600', '071052', '保定市', '1', '省市区', '130000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130602', '071051', '新市区', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130603', '071000', '北市区', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130604', '071001', '南市区', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130621', '072150', '满城县', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130622', '071100', '清苑县', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130623', '074100', '涞水县', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130624', '073200', '阜平县', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130625', '072550', '徐水县', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130626', '072650', '定兴县', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130627', '072350', '唐县', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130628', '071500', '高阳县', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130629', '071700', '容城县', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130630', '074300', '涞源县', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130631', '072450', '望都县', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130632', '071600', '安新县', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130633', '074200', '易县', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130634', '073100', '曲阳县', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130635', '071400', '蠡县', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130636', '072250', '顺平县', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130637', '071300', '博野县', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130638', '071800', '雄县', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130681', '072750', '涿州市', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130682', '073000', '定州市', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130683', '071200', '安国市', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130684', '074000', '高碑店市', '1', '省市区', '130600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130700', '075000', '张家口市', '1', '省市区', '130000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130702', '075000', '桥东区', '1', '省市区', '130700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130703', '075061', '桥西区', '1', '省市区', '130700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130705', '075100', '宣化区', '1', '省市区', '130700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130706', '075300', '下花园区', '1', '省市区', '130700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130721', '075100', '宣化县', '1', '省市区', '130700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130722', '076450', '张北县', '1', '省市区', '130700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130723', '076650', '康保县', '1', '省市区', '130700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130724', '076550', '沽源县', '1', '省市区', '130700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130725', '076750', '尚义县', '1', '省市区', '130700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130726', '075700', '蔚县', '1', '省市区', '130700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130727', '075800', '阳原县', '1', '省市区', '130700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130728', '076150', '怀安县', '1', '省市区', '130700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130729', '076250', '万全县', '1', '省市区', '130700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130730', '075400', '怀来县', '1', '省市区', '130700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130731', '075600', '涿鹿县', '1', '省市区', '130700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130732', '075500', '赤城县', '1', '省市区', '130700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130733', '076350', '崇礼县', '1', '省市区', '130700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130800', '067000', '承德市', '1', '省市区', '130000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130802', '067000', '双桥区', '1', '省市区', '130800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130803', '067001', '双滦区', '1', '省市区', '130800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130804', '067200', '鹰手营子矿区', '1', '省市区', '130800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130821', '067400', '承德县', '1', '省市区', '130800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130822', '067300', '兴隆县', '1', '省市区', '130800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130823', '067500', '平泉县', '1', '省市区', '130800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130824', '068250', '滦平县', '1', '省市区', '130800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130825', '068150', '隆化县', '1', '省市区', '130800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130826', '068350', '丰宁满族自治县', '1', '省市区', '130800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130827', '067600', '宽城满族自治县', '1', '省市区', '130800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130828', '068450', '围场满族蒙古族自治县', '1', '省市区', '130800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130900', '061001', '沧州市', '1', '省市区', '130000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130902', '061000', '新华区', '1', '省市区', '130900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130903', '061001', '运河区', '1', '省市区', '130900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130921', '061000', '沧县', '1', '省市区', '130900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130922', '062650', '青县', '1', '省市区', '130900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130923', '061600', '东光县', '1', '省市区', '130900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130924', '061200', '海兴县', '1', '省市区', '130900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130925', '061300', '盐山县', '1', '省市区', '130900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130926', '062350', '肃宁县', '1', '省市区', '130900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130927', '061500', '南皮县', '1', '省市区', '130900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130928', '061800', '吴桥县', '1', '省市区', '130900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130929', '062250', '献县', '1', '省市区', '130900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130930', '061400', '孟村回族自治县', '1', '省市区', '130900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130981', '062150', '泊头市', '1', '省市区', '130900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130982', '062550', '任丘市', '1', '省市区', '130900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130983', '061100', '黄骅市', '1', '省市区', '130900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('130984', '062450', '河间市', '1', '省市区', '130900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131000', '065000', '廊坊市', '1', '省市区', '130000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131002', '065000', '安次区', '1', '省市区', '131000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131003', '065000', '广阳区', '1', '省市区', '131000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131022', '065500', '固安县', '1', '省市区', '131000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131023', '065600', '永清县', '1', '省市区', '131000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131024', '065400', '香河县', '1', '省市区', '131000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131025', '065900', '大城县', '1', '省市区', '131000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131026', '065800', '文安县', '1', '省市区', '131000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131028', '065300', '大厂回族自治县', '1', '省市区', '131000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131081', '065700', '霸州市', '1', '省市区', '131000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131082', '065200', '三河市', '1', '省市区', '131000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131100', '053000', '衡水市', '1', '省市区', '130000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131102', '053000', '桃城区', '1', '省市区', '131100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131121', '053100', '枣强县', '1', '省市区', '131100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131122', '053400', '武邑县', '1', '省市区', '131100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131123', '053300', '武强县', '1', '省市区', '131100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131124', '053900', '饶阳县', '1', '省市区', '131100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131125', '053600', '安平县', '1', '省市区', '131100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131126', '053800', '故城县', '1', '省市区', '131100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131127', '053500', '景县', '1', '省市区', '131100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131128', '053700', '阜城县', '1', '省市区', '131100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131181', '053200', '冀州市', '1', '省市区', '131100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('131182', '053800', '深州市', '1', '省市区', '131100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('14', '61', '白色', '6', '颜色', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('140000', '', '山西省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140100', '030082', '太原市', '1', '省市区', '140000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140105', '030032', '小店区', '1', '省市区', '140100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140106', '030002', '迎泽区', '1', '省市区', '140100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140107', '030009', '杏花岭区', '1', '省市区', '140100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140108', '030023', '尖草坪区', '1', '省市区', '140100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140109', '030024', '万柏林区', '1', '省市区', '140100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140110', '030025', '晋源区', '1', '省市区', '140100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140121', '030400', '清徐县', '1', '省市区', '140100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140122', '030100', '阳曲县', '1', '省市区', '140100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140123', '030300', '娄烦县', '1', '省市区', '140100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140181', '030200', '古交市', '1', '省市区', '140100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140200', '037008', '大同市', '1', '省市区', '140000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140202', '037008', '城区', '1', '省市区', '140200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140203', '037003', '矿区', '1', '省市区', '140200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140211', '037001', '南郊区', '1', '省市区', '140200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140212', '037002', '新荣区', '1', '省市区', '140200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140221', '038100', '阳高县', '1', '省市区', '140200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140222', '038200', '天镇县', '1', '省市区', '140200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140223', '037500', '广灵县', '1', '省市区', '140200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140224', '034400', '灵丘县', '1', '省市区', '140200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140225', '037400', '浑源县', '1', '省市区', '140200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140226', '037100', '左云县', '1', '省市区', '140200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140227', '037300', '大同县', '1', '省市区', '140200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140300', '045000', '阳泉市', '1', '省市区', '140000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140302', '045000', '城区', '1', '省市区', '140300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140303', '045000', '矿区', '1', '省市区', '140300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140311', '045011', '郊区', '1', '省市区', '140300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140321', '045200', '平定县', '1', '省市区', '140300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140322', '045100', '盂县', '1', '省市区', '140300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140400', '046000', '长治市', '1', '省市区', '140000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140402', '046011', '城区', '1', '省市区', '140400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140411', '046011', '郊区', '1', '省市区', '140400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140421', '047100', '长治县', '1', '省市区', '140400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140423', '046200', '襄垣县', '1', '省市区', '140400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140424', '046100', '屯留县', '1', '省市区', '140400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140425', '047400', '平顺县', '1', '省市区', '140400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140426', '047600', '黎城县', '1', '省市区', '140400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140427', '047300', '壶关县', '1', '省市区', '140400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140428', '046600', '长子县', '1', '省市区', '140400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140429', '046300', '武乡县', '1', '省市区', '140400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140430', '046400', '沁县', '1', '省市区', '140400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140431', '046500', '沁源县', '1', '省市区', '140400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140481', '047500', '潞城市', '1', '省市区', '140400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140500', '048000', '晋城市', '1', '省市区', '140000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140502', '048000', '城区', '1', '省市区', '140500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140521', '048200', '沁水县', '1', '省市区', '140500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140522', '048100', '阳城县', '1', '省市区', '140500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140524', '048300', '陵川县', '1', '省市区', '140500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140525', '048012', '泽州县', '1', '省市区', '140500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140581', '048400', '高平市', '1', '省市区', '140500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140600', '038500', '朔州市', '1', '省市区', '140000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140602', '036000', '朔城区', '1', '省市区', '140600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140603', '038600', '平鲁区', '1', '省市区', '140600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140621', '036900', '山阴县', '1', '省市区', '140600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140622', '037600', '应县', '1', '省市区', '140600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140623', '037200', '右玉县', '1', '省市区', '140600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140624', '038300', '怀仁县', '1', '省市区', '140600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140700', '030600', '晋中市', '1', '省市区', '140000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140702', '030600', '榆次区', '1', '省市区', '140700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140721', '031800', '榆社县', '1', '省市区', '140700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140722', '032600', '左权县', '1', '省市区', '140700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140723', '032700', '和顺县', '1', '省市区', '140700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140724', '045300', '昔阳县', '1', '省市区', '140700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140725', '045400', '寿阳县', '1', '省市区', '140700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140726', '030800', '太谷县', '1', '省市区', '140700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140727', '030900', '祁县', '1', '省市区', '140700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140728', '031100', '平遥县', '1', '省市区', '140700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140729', '031300', '灵石县', '1', '省市区', '140700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140781', '032000', '介休市', '1', '省市区', '140700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140800', '044000', '运城市', '1', '省市区', '140000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140802', '044000', '盐湖区', '1', '省市区', '140800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140821', '044100', '临猗县', '1', '省市区', '140800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140822', '044200', '万荣县', '1', '省市区', '140800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140823', '043800', '闻喜县', '1', '省市区', '140800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140824', '043200', '稷山县', '1', '省市区', '140800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140825', '043100', '新绛县', '1', '省市区', '140800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140826', '043600', '绛县', '1', '省市区', '140800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140827', '043700', '垣曲县', '1', '省市区', '140800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140828', '044400', '夏县', '1', '省市区', '140800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140829', '044300', '平陆县', '1', '省市区', '140800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140830', '044600', '芮城县', '1', '省市区', '140800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140881', '044500', '永济市', '1', '省市区', '140800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140882', '043300', '河津市', '1', '省市区', '140800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140900', '034000', '忻州市', '1', '省市区', '140000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140902', '034000', '忻府区', '1', '省市区', '140900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140921', '035400', '定襄县', '1', '省市区', '140900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140922', '035500', '五台县', '1', '省市区', '140900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140923', '034200', '代县', '1', '省市区', '140900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140924', '034300', '繁峙县', '1', '省市区', '140900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140925', '036700', '宁武县', '1', '省市区', '140900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140926', '035100', '静乐县', '1', '省市区', '140900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140927', '036100', '神池县', '1', '省市区', '140900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140928', '036200', '五寨县', '1', '省市区', '140900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140929', '036300', '岢岚县', '1', '省市区', '140900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140930', '036500', '河曲县', '1', '省市区', '140900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140931', '036600', '保德县', '1', '省市区', '140900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140932', '036400', '偏关县', '1', '省市区', '140900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('140981', '034100', '原平市', '1', '省市区', '140900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141000', '041000', '临汾市', '1', '省市区', '140000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141002', '041000', '尧都区', '1', '省市区', '141000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141021', '043400', '曲沃县', '1', '省市区', '141000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141022', '043500', '翼城县', '1', '省市区', '141000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141023', '041500', '襄汾县', '1', '省市区', '141000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141024', '041600', '洪洞县', '1', '省市区', '141000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141025', '042400', '古县', '1', '省市区', '141000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141026', '042500', '安泽县', '1', '省市区', '141000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141027', '042600', '浮山县', '1', '省市区', '141000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141028', '042200', '吉县', '1', '省市区', '141000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141029', '042100', '乡宁县', '1', '省市区', '141000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141030', '042300', '大宁县', '1', '省市区', '141000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141031', '041300', '隰县', '1', '省市区', '141000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141032', '041400', '永和县', '1', '省市区', '141000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141033', '041200', '蒲县', '1', '省市区', '141000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141034', '031500', '汾西县', '1', '省市区', '141000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141081', '043000', '侯马市', '1', '省市区', '141000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141082', '031400', '霍州市', '1', '省市区', '141000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141100', '033000', '吕梁市', '1', '省市区', '140000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141102', '033000', '离石区', '1', '省市区', '141100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141121', '032100', '文水县', '1', '省市区', '141100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141122', '030500', '交城县', '1', '省市区', '141100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141123', '033600', '兴县', '1', '省市区', '141100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141124', '033200', '临县', '1', '省市区', '141100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141125', '033300', '柳林县', '1', '省市区', '141100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141126', '032500', '石楼县', '1', '省市区', '141100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141127', '033500', '岚县', '1', '省市区', '141100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141128', '033100', '方山县', '1', '省市区', '141100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141129', '033400', '中阳县', '1', '省市区', '141100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141130', '032400', '交口县', '1', '省市区', '141100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141181', '032300', '孝义市', '1', '省市区', '141100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('141182', '032200', '汾阳市', '1', '省市区', '141100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('15', '62', '黑色', '6', '颜色', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('150000', '', '内蒙古自治区', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150100', '010000', '呼和浩特市', '1', '省市区', '150000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150102', '010050', '新城区', '1', '省市区', '150100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150103', '010030', '回民区', '1', '省市区', '150100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150104', '010020', '玉泉区', '1', '省市区', '150100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150105', '010020', '赛罕区', '1', '省市区', '150100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150121', '010100', '土默特左旗', '1', '省市区', '150100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150122', '010200', '托克托县', '1', '省市区', '150100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150123', '011500', '和林格尔县', '1', '省市区', '150100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150124', '011600', '清水河县', '1', '省市区', '150100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150125', '011700', '武川县', '1', '省市区', '150100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150200', '014025', '包头市', '1', '省市区', '150000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150202', '014040', '东河区', '1', '省市区', '150200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150203', '014010', '昆都仑区', '1', '省市区', '150200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150204', '014030', '青山区', '1', '省市区', '150200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150205', '014070', '石拐区', '1', '省市区', '150200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150206', '014080', '白云鄂博矿区', '1', '省市区', '150200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150207', '014060', '九原区', '1', '省市区', '150200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150221', '014100', '土默特右旗', '1', '省市区', '150200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150222', '014200', '固阳县', '1', '省市区', '150200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150223', '014500', '达尔罕茂明安联合旗', '1', '省市区', '150200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150300', '016000', '乌海市', '1', '省市区', '150000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150302', '016000', '海勃湾区', '1', '省市区', '150300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150303', '016030', '海南区', '1', '省市区', '150300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150304', '016040', '乌达区', '1', '省市区', '150300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150400', '024000', '赤峰市', '1', '省市区', '150000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150402', '024020', '红山区', '1', '省市区', '150400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150403', '024076', '元宝山区', '1', '省市区', '150400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150404', '024005', '松山区', '1', '省市区', '150400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150421', '025550', '阿鲁科尔沁旗', '1', '省市区', '150400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150422', '025450', '巴林左旗', '1', '省市区', '150400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150423', '025150', '巴林右旗', '1', '省市区', '150400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150424', '025250', '林西县', '1', '省市区', '150400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150425', '025350', '克什克腾旗', '1', '省市区', '150400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150426', '024500', '翁牛特旗', '1', '省市区', '150400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150428', '024400', '喀喇沁旗', '1', '省市区', '150400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150429', '024200', '宁城县', '1', '省市区', '150400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150430', '024300', '敖汉旗', '1', '省市区', '150400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150500', '028000', '通辽市', '1', '省市区', '150000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150502', '028000', '科尔沁区', '1', '省市区', '150500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150521', '029300', '科尔沁左翼中旗', '1', '省市区', '150500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150522', '028100', '科尔沁左翼后旗', '1', '省市区', '150500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150523', '028400', '开鲁县', '1', '省市区', '150500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150524', '028200', '库伦旗', '1', '省市区', '150500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150525', '028300', '奈曼旗', '1', '省市区', '150500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150526', '029100', '扎鲁特旗', '1', '省市区', '150500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150581', '029200', '霍林郭勒市', '1', '省市区', '150500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150600', '017004', '鄂尔多斯市', '1', '省市区', '150000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150602', '017000', '东胜区', '1', '省市区', '150600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150621', '014300', '达拉特旗', '1', '省市区', '150600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150622', '017100', '准格尔旗', '1', '省市区', '150600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150623', '016200', '鄂托克前旗', '1', '省市区', '150600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150624', '016100', '鄂托克旗', '1', '省市区', '150600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150625', '017400', '杭锦旗', '1', '省市区', '150600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150626', '017300', '乌审旗', '1', '省市区', '150600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150627', '017200', '伊金霍洛旗', '1', '省市区', '150600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150700', '021008', '呼伦贝尔市', '1', '省市区', '150000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150702', '021000', '海拉尔区', '1', '省市区', '150700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150703', '021410', '扎赉诺尔区', '1', '省市区', '150700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150721', '162750', '阿荣旗', '1', '省市区', '150700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150722', '162850', '莫力达瓦达斡尔族自治旗', '1', '省市区', '150700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150723', '165450', '鄂伦春自治旗', '1', '省市区', '150700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150724', '021100', '鄂温克族自治旗', '1', '省市区', '150700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150725', '021500', '陈巴尔虎旗', '1', '省市区', '150700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150726', '021200', '新巴尔虎左旗', '1', '省市区', '150700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150727', '021300', '新巴尔虎右旗', '1', '省市区', '150700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150781', '021400', '满洲里市', '1', '省市区', '150700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150782', '022150', '牙克石市', '1', '省市区', '150700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150783', '162650', '扎兰屯市', '1', '省市区', '150700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150784', '022250', '额尔古纳市', '1', '省市区', '150700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150785', '022350', '根河市', '1', '省市区', '150700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150800', '015001', '巴彦淖尔市', '1', '省市区', '150000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150802', '015001', '临河区', '1', '省市区', '150800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150821', '015100', '五原县', '1', '省市区', '150800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150822', '015200', '磴口县', '1', '省市区', '150800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150823', '014400', '乌拉特前旗', '1', '省市区', '150800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150824', '015300', '乌拉特中旗', '1', '省市区', '150800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150825', '015500', '乌拉特后旗', '1', '省市区', '150800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150826', '015400', '杭锦后旗', '1', '省市区', '150800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150900', '012000', '乌兰察布市', '1', '省市区', '150000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150902', '012000', '集宁区', '1', '省市区', '150900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150921', '012300', '卓资县', '1', '省市区', '150900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150922', '013350', '化德县', '1', '省市区', '150900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150923', '013450', '商都县', '1', '省市区', '150900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150924', '013650', '兴和县', '1', '省市区', '150900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150925', '013750', '凉城县', '1', '省市区', '150900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150926', '012200', '察哈尔右翼前旗', '1', '省市区', '150900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150927', '013550', '察哈尔右翼中旗', '1', '省市区', '150900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150928', '012400', '察哈尔右翼后旗', '1', '省市区', '150900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150929', '011800', '四子王旗', '1', '省市区', '150900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('150981', '012100', '丰镇市', '1', '省市区', '150900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152200', '137401', '兴安盟', '1', '省市区', '150000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152201', '137401', '乌兰浩特市', '1', '省市区', '152200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152202', '137800', '阿尔山市', '1', '省市区', '152200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152221', '137423', '科尔沁右翼前旗', '1', '省市区', '152200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152222', '029400', '科尔沁右翼中旗', '1', '省市区', '152200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152223', '137600', '扎赉特旗', '1', '省市区', '152200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152224', '137500', '突泉县', '1', '省市区', '152200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152500', '026000', '锡林郭勒盟', '1', '省市区', '150000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152501', '011100', '二连浩特市', '1', '省市区', '152500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152502', '026021', '锡林浩特市', '1', '省市区', '152500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152522', '011400', '阿巴嘎旗', '1', '省市区', '152500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152523', '011300', '苏尼特左旗', '1', '省市区', '152500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152524', '011200', '苏尼特右旗', '1', '省市区', '152500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152525', '026300', '东乌珠穆沁旗', '1', '省市区', '152500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152526', '026200', '西乌珠穆沁旗', '1', '省市区', '152500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152527', '027000', '太仆寺旗', '1', '省市区', '152500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152528', '013250', '镶黄旗', '1', '省市区', '152500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152529', '013800', '正镶白旗', '1', '省市区', '152500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152530', '027200', '正蓝旗', '1', '省市区', '152500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152531', '027300', '多伦县', '1', '省市区', '152500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152900', '750306', '阿拉善盟', '1', '省市区', '150000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152921', '750306', '阿拉善左旗', '1', '省市区', '152900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152922', '737300', '阿拉善右旗', '1', '省市区', '152900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('152923', '735400', '额济纳旗', '1', '省市区', '152900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('16', '63', '红色', '6', '颜色', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('17', '64', '蓝色', '6', '颜色', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('18', '65', '绿色', '6', '颜色', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('19', '71', '1.6L', '7', '排量', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('2', '2', '女', '2', '性别', '0', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('20', '72', '2.0T', '7', '排量', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('21', '73', '2.2T', '7', '排量', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('210000', '', '辽宁省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210100', '110013', '沈阳市', '1', '省市区', '210000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210102', '110001', '和平区', '1', '省市区', '210100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210103', '110011', '沈河区', '1', '省市区', '210100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210104', '110041', '大东区', '1', '省市区', '210100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210105', '110031', '皇姑区', '1', '省市区', '210100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210106', '110021', '铁西区', '1', '省市区', '210100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210111', '110101', '苏家屯区', '1', '省市区', '210100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210112', '110015', '浑南区', '1', '省市区', '210100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210113', '110121', '沈北新区', '1', '省市区', '210100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210114', '110141', '于洪区', '1', '省市区', '210100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210122', '110200', '辽中县', '1', '省市区', '210100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210123', '110500', '康平县', '1', '省市区', '210100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210124', '110400', '法库县', '1', '省市区', '210100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210181', '110300', '新民市', '1', '省市区', '210100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210200', '116011', '大连市', '1', '省市区', '210000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210202', '116001', '中山区', '1', '省市区', '210200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210203', '116011', '西岗区', '1', '省市区', '210200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210204', '116021', '沙河口区', '1', '省市区', '210200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210211', '116033', '甘井子区', '1', '省市区', '210200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210212', '116041', '旅顺口区', '1', '省市区', '210200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210213', '116100', '金州区', '1', '省市区', '210200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210224', '116500', '长海县', '1', '省市区', '210200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210281', '116300', '瓦房店市', '1', '省市区', '210200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210282', '116200', '普兰店市', '1', '省市区', '210200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210283', '116400', '庄河市', '1', '省市区', '210200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210300', '114001', '鞍山市', '1', '省市区', '210000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210302', '114001', '铁东区', '1', '省市区', '210300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210303', '114013', '铁西区', '1', '省市区', '210300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210304', '114031', '立山区', '1', '省市区', '210300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210311', '114041', '千山区', '1', '省市区', '210300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210321', '114100', '台安县', '1', '省市区', '210300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210323', '114300', '岫岩满族自治县', '1', '省市区', '210300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210381', '114200', '海城市', '1', '省市区', '210300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210400', '113008', '抚顺市', '1', '省市区', '210000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210402', '113008', '新抚区', '1', '省市区', '210400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210403', '113003', '东洲区', '1', '省市区', '210400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210404', '113001', '望花区', '1', '省市区', '210400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210411', '113006', '顺城区', '1', '省市区', '210400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210421', '113006', '抚顺县', '1', '省市区', '210400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210422', '113200', '新宾满族自治县', '1', '省市区', '210400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210423', '113300', '清原满族自治县', '1', '省市区', '210400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210500', '117000', '本溪市', '1', '省市区', '210000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210502', '117000', '平山区', '1', '省市区', '210500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210503', '117002', '溪湖区', '1', '省市区', '210500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210504', '117021', '明山区', '1', '省市区', '210500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210505', '117014', '南芬区', '1', '省市区', '210500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210521', '117100', '本溪满族自治县', '1', '省市区', '210500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210522', '117200', '桓仁满族自治县', '1', '省市区', '210500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210600', '118000', '丹东市', '1', '省市区', '210000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210602', '118000', '元宝区', '1', '省市区', '210600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210603', '118002', '振兴区', '1', '省市区', '210600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210604', '118001', '振安区', '1', '省市区', '210600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210624', '118200', '宽甸满族自治县', '1', '省市区', '210600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210681', '118300', '东港市', '1', '省市区', '210600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210682', '118100', '凤城市', '1', '省市区', '210600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210700', '121000', '锦州市', '1', '省市区', '210000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210702', '121001', '古塔区', '1', '省市区', '210700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210703', '121000', '凌河区', '1', '省市区', '210700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210711', '121011', '太和区', '1', '省市区', '210700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210726', '121400', '黑山县', '1', '省市区', '210700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210727', '121100', '义县', '1', '省市区', '210700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210781', '121200', '凌海市', '1', '省市区', '210700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210782', '121300', '北镇市', '1', '省市区', '210700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210800', '115003', '营口市', '1', '省市区', '210000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210802', '115002', '站前区', '1', '省市区', '210800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210803', '115004', '西市区', '1', '省市区', '210800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210804', '115007', '鲅鱼圈区', '1', '省市区', '210800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210811', '115005', '老边区', '1', '省市区', '210800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210881', '115200', '盖州市', '1', '省市区', '210800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210882', '115100', '大石桥市', '1', '省市区', '210800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210900', '123000', '阜新市', '1', '省市区', '210000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210902', '123000', '海州区', '1', '省市区', '210900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210903', '123005', '新邱区', '1', '省市区', '210900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210904', '123003', '太平区', '1', '省市区', '210900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210905', '123006', '清河门区', '1', '省市区', '210900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210911', '123000', '细河区', '1', '省市区', '210900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210921', '123100', '阜新蒙古族自治县', '1', '省市区', '210900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('210922', '123200', '彰武县', '1', '省市区', '210900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211000', '111000', '辽阳市', '1', '省市区', '210000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211002', '111000', '白塔区', '1', '省市区', '211000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211003', '111000', '文圣区', '1', '省市区', '211000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211004', '111003', '宏伟区', '1', '省市区', '211000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211005', '111008', '弓长岭区', '1', '省市区', '211000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211011', '111000', '太子河区', '1', '省市区', '211000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211021', '111200', '辽阳县', '1', '省市区', '211000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211081', '111300', '灯塔市', '1', '省市区', '211000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211100', '124010', '盘锦市', '1', '省市区', '210000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211102', '124000', '双台子区', '1', '省市区', '211100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211103', '124010', '兴隆台区', '1', '省市区', '211100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211121', '124200', '大洼县', '1', '省市区', '211100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211122', '124000', '盘山县', '1', '省市区', '211100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211200', '112000', '铁岭市', '1', '省市区', '210000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211202', '112000', '银州区', '1', '省市区', '211200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211204', '112003', '清河区', '1', '省市区', '211200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211221', '112000', '铁岭县', '1', '省市区', '211200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211223', '112400', '西丰县', '1', '省市区', '211200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211224', '112500', '昌图县', '1', '省市区', '211200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211281', '112700', '调兵山市', '1', '省市区', '211200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211282', '112300', '开原市', '1', '省市区', '211200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211300', '122000', '朝阳市', '1', '省市区', '210000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211302', '122000', '双塔区', '1', '省市区', '211300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211303', '122000', '龙城区', '1', '省市区', '211300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211321', '122000', '朝阳县', '1', '省市区', '211300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211322', '122400', '建平县', '1', '省市区', '211300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211324', '122300', '喀喇沁左翼蒙古族自治县', '1', '省市区', '211300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211381', '122100', '北票市', '1', '省市区', '211300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211382', '122500', '凌源市', '1', '省市区', '211300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211400', '125000', '葫芦岛市', '1', '省市区', '210000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211402', '125001', '连山区', '1', '省市区', '211400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211403', '125003', '龙港区', '1', '省市区', '211400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211404', '125027', '南票区', '1', '省市区', '211400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211421', '125200', '绥中县', '1', '省市区', '211400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211422', '125300', '建昌县', '1', '省市区', '211400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211481', '125100', '兴城市', '1', '省市区', '211400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211500', '116100', '金普新区', '1', '省市区', '210000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211501', '116100', '金州新区', '1', '省市区', '211500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211502', '116200', '普湾新区', '1', '省市区', '211500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('211503', '116100', '保税区', '1', '省市区', '211500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('22', '74', '4.0T', '7', '排量', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('220000', '', '吉林省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220100', '130022', '长春市', '1', '省市区', '220000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220102', '130022', '南关区', '1', '省市区', '220100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220103', '130051', '宽城区', '1', '省市区', '220100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220104', '130012', '朝阳区', '1', '省市区', '220100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220105', '130031', '二道区', '1', '省市区', '220100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220106', '130062', '绿园区', '1', '省市区', '220100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220112', '130600', '双阳区', '1', '省市区', '220100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220113', '130500', '九台区', '1', '省市区', '220100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220122', '130200', '农安县', '1', '省市区', '220100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220182', '130400', '榆树市', '1', '省市区', '220100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220183', '130300', '德惠市', '1', '省市区', '220100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220200', '132011', '吉林市', '1', '省市区', '220000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220202', '132002', '昌邑区', '1', '省市区', '220200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220203', '132021', '龙潭区', '1', '省市区', '220200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220204', '132011', '船营区', '1', '省市区', '220200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220211', '132013', '丰满区', '1', '省市区', '220200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220221', '132200', '永吉县', '1', '省市区', '220200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220281', '132500', '蛟河市', '1', '省市区', '220200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220282', '132400', '桦甸市', '1', '省市区', '220200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220283', '132600', '舒兰市', '1', '省市区', '220200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220284', '132300', '磐石市', '1', '省市区', '220200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220300', '136000', '四平市', '1', '省市区', '220000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220302', '136000', '铁西区', '1', '省市区', '220300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220303', '136001', '铁东区', '1', '省市区', '220300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220322', '136500', '梨树县', '1', '省市区', '220300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220323', '130700', '伊通满族自治县', '1', '省市区', '220300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220381', '136100', '公主岭市', '1', '省市区', '220300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220382', '136400', '双辽市', '1', '省市区', '220300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220400', '136200', '辽源市', '1', '省市区', '220000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220402', '136200', '龙山区', '1', '省市区', '220400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220403', '136201', '西安区', '1', '省市区', '220400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220421', '136300', '东丰县', '1', '省市区', '220400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220422', '136600', '东辽县', '1', '省市区', '220400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220500', '134001', '通化市', '1', '省市区', '220000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220502', '134001', '东昌区', '1', '省市区', '220500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220503', '134003', '二道江区', '1', '省市区', '220500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220521', '134100', '通化县', '1', '省市区', '220500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220523', '135100', '辉南县', '1', '省市区', '220500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220524', '135300', '柳河县', '1', '省市区', '220500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220581', '135000', '梅河口市', '1', '省市区', '220500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220582', '134200', '集安市', '1', '省市区', '220500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220600', '134300', '白山市', '1', '省市区', '220000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220602', '134300', '浑江区', '1', '省市区', '220600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220605', '134700', '江源区', '1', '省市区', '220600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220621', '134500', '抚松县', '1', '省市区', '220600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220622', '135200', '靖宇县', '1', '省市区', '220600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220623', '134400', '长白朝鲜族自治县', '1', '省市区', '220600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220681', '134600', '临江市', '1', '省市区', '220600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220700', '138000', '松原市', '1', '省市区', '220000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220702', '138000', '宁江区', '1', '省市区', '220700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220721', '138000', '前郭尔罗斯蒙古族自治县', '1', '省市区', '220700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220722', '131500', '长岭县', '1', '省市区', '220700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220723', '131400', '乾安县', '1', '省市区', '220700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220781', '131200', '扶余市', '1', '省市区', '220700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220800', '137000', '白城市', '1', '省市区', '220000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220802', '137000', '洮北区', '1', '省市区', '220800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220821', '137300', '镇赉县', '1', '省市区', '220800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220822', '137200', '通榆县', '1', '省市区', '220800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220881', '137100', '洮南市', '1', '省市区', '220800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('220882', '131300', '大安市', '1', '省市区', '220800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('222400', '133000', '延边朝鲜族自治州', '1', '省市区', '220000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('222401', '133000', '延吉市', '1', '省市区', '222400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('222402', '133100', '图们市', '1', '省市区', '222400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('222403', '133700', '敦化市', '1', '省市区', '222400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('222404', '133300', '珲春市', '1', '省市区', '222400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('222405', '133400', '龙井市', '1', '省市区', '222400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('222406', '133500', '和龙市', '1', '省市区', '222400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('222424', '133200', '汪清县', '1', '省市区', '222400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('222426', '133600', '安图县', '1', '省市区', '222400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('23', '81', '大众', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('230000', '', '黑龙江省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230100', '150010', '哈尔滨市', '1', '省市区', '230000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230102', '150010', '道里区', '1', '省市区', '230100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230103', '150006', '南岗区', '1', '省市区', '230100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230104', '150020', '道外区', '1', '省市区', '230100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230108', '150060', '平房区', '1', '省市区', '230100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230109', '150028', '松北区', '1', '省市区', '230100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230110', '150036', '香坊区', '1', '省市区', '230100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230111', '150500', '呼兰区', '1', '省市区', '230100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230112', '150300', '阿城区', '1', '省市区', '230100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230113', '150100', '双城区', '1', '省市区', '230100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230123', '154800', '依兰县', '1', '省市区', '230100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230124', '150800', '方正县', '1', '省市区', '230100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230125', '150400', '宾县', '1', '省市区', '230100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230126', '151800', '巴彦县', '1', '省市区', '230100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230127', '151900', '木兰县', '1', '省市区', '230100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230128', '150900', '通河县', '1', '省市区', '230100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230129', '150700', '延寿县', '1', '省市区', '230100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230183', '150600', '尚志市', '1', '省市区', '230100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230184', '150200', '五常市', '1', '省市区', '230100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230200', '161005', '齐齐哈尔市', '1', '省市区', '230000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230202', '161000', '龙沙区', '1', '省市区', '230200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230203', '161006', '建华区', '1', '省市区', '230200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230204', '161000', '铁锋区', '1', '省市区', '230200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230205', '161031', '昂昂溪区', '1', '省市区', '230200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230206', '161041', '富拉尔基区', '1', '省市区', '230200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230207', '161046', '碾子山区', '1', '省市区', '230200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230208', '161021', '梅里斯达斡尔族区', '1', '省市区', '230200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230221', '161100', '龙江县', '1', '省市区', '230200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230223', '161500', '依安县', '1', '省市区', '230200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230224', '162400', '泰来县', '1', '省市区', '230200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230225', '162100', '甘南县', '1', '省市区', '230200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230227', '161200', '富裕县', '1', '省市区', '230200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230229', '161600', '克山县', '1', '省市区', '230200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230230', '164800', '克东县', '1', '省市区', '230200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230231', '164700', '拜泉县', '1', '省市区', '230200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230281', '161300', '讷河市', '1', '省市区', '230200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230300', '158100', '鸡西市', '1', '省市区', '230000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230302', '158100', '鸡冠区', '1', '省市区', '230300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230303', '158130', '恒山区', '1', '省市区', '230300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230304', '158150', '滴道区', '1', '省市区', '230300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230305', '158160', '梨树区', '1', '省市区', '230300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230306', '158170', '城子河区', '1', '省市区', '230300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230307', '158180', '麻山区', '1', '省市区', '230300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230321', '158200', '鸡东县', '1', '省市区', '230300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230381', '158400', '虎林市', '1', '省市区', '230300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230382', '158300', '密山市', '1', '省市区', '230300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230400', '154100', '鹤岗市', '1', '省市区', '230000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230402', '154100', '向阳区', '1', '省市区', '230400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230403', '154101', '工农区', '1', '省市区', '230400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230404', '154104', '南山区', '1', '省市区', '230400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230405', '154102', '兴安区', '1', '省市区', '230400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230406', '154106', '东山区', '1', '省市区', '230400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230407', '154105', '兴山区', '1', '省市区', '230400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230421', '154200', '萝北县', '1', '省市区', '230400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230422', '156200', '绥滨县', '1', '省市区', '230400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230500', '155100', '双鸭山市', '1', '省市区', '230000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230502', '155100', '尖山区', '1', '省市区', '230500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230503', '155120', '岭东区', '1', '省市区', '230500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230505', '155130', '四方台区', '1', '省市区', '230500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230506', '155131', '宝山区', '1', '省市区', '230500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230521', '155900', '集贤县', '1', '省市区', '230500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230522', '155800', '友谊县', '1', '省市区', '230500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230523', '155600', '宝清县', '1', '省市区', '230500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230524', '155700', '饶河县', '1', '省市区', '230500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230600', '163000', '大庆市', '1', '省市区', '230000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230602', '163001', '萨尔图区', '1', '省市区', '230600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230603', '163711', '龙凤区', '1', '省市区', '230600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230604', '163712', '让胡路区', '1', '省市区', '230600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230605', '163511', '红岗区', '1', '省市区', '230600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230606', '163515', '大同区', '1', '省市区', '230600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230621', '166400', '肇州县', '1', '省市区', '230600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230622', '166500', '肇源县', '1', '省市区', '230600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230623', '166300', '林甸县', '1', '省市区', '230600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230624', '166200', '杜尔伯特蒙古族自治县', '1', '省市区', '230600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230700', '153000', '伊春市', '1', '省市区', '230000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230702', '153000', '伊春区', '1', '省市区', '230700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230703', '153100', '南岔区', '1', '省市区', '230700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230704', '153031', '友好区', '1', '省市区', '230700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230705', '153025', '西林区', '1', '省市区', '230700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230706', '153013', '翠峦区', '1', '省市区', '230700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230707', '153036', '新青区', '1', '省市区', '230700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230708', '153021', '美溪区', '1', '省市区', '230700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230709', '153026', '金山屯区', '1', '省市区', '230700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230710', '153033', '五营区', '1', '省市区', '230700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230711', '153011', '乌马河区', '1', '省市区', '230700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230712', '153037', '汤旺河区', '1', '省市区', '230700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230713', '153106', '带岭区', '1', '省市区', '230700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230714', '153038', '乌伊岭区', '1', '省市区', '230700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230715', '153035', '红星区', '1', '省市区', '230700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230716', '153032', '上甘岭区', '1', '省市区', '230700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230722', '153200', '嘉荫县', '1', '省市区', '230700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230781', '152500', '铁力市', '1', '省市区', '230700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230800', '154002', '佳木斯市', '1', '省市区', '230000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230803', '154002', '向阳区', '1', '省市区', '230800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230804', '154002', '前进区', '1', '省市区', '230800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230805', '154005', '东风区', '1', '省市区', '230800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230811', '154004', '郊区', '1', '省市区', '230800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230822', '154400', '桦南县', '1', '省市区', '230800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230826', '154300', '桦川县', '1', '省市区', '230800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230828', '154700', '汤原县', '1', '省市区', '230800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230833', '156500', '抚远县', '1', '省市区', '230800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230881', '156400', '同江市', '1', '省市区', '230800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230882', '156100', '富锦市', '1', '省市区', '230800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230900', '154600', '七台河市', '1', '省市区', '230000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230902', '154604', '新兴区', '1', '省市区', '230900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230903', '154600', '桃山区', '1', '省市区', '230900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230904', '154622', '茄子河区', '1', '省市区', '230900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('230921', '154500', '勃利县', '1', '省市区', '230900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231000', '157000', '牡丹江市', '1', '省市区', '230000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231002', '157000', '东安区', '1', '省市区', '231000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231003', '157013', '阳明区', '1', '省市区', '231000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231004', '157009', '爱民区', '1', '省市区', '231000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231005', '157000', '西安区', '1', '省市区', '231000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231024', '157200', '东宁县', '1', '省市区', '231000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231025', '157600', '林口县', '1', '省市区', '231000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231081', '157300', '绥芬河市', '1', '省市区', '231000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231083', '157100', '海林市', '1', '省市区', '231000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231084', '157400', '宁安市', '1', '省市区', '231000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231085', '157500', '穆棱市', '1', '省市区', '231000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231100', '164300', '黑河市', '1', '省市区', '230000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231102', '164300', '爱辉区', '1', '省市区', '231100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231121', '161400', '嫩江县', '1', '省市区', '231100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231123', '164400', '逊克县', '1', '省市区', '231100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231124', '164200', '孙吴县', '1', '省市区', '231100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231181', '164000', '北安市', '1', '省市区', '231100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231182', '164100', '五大连池市', '1', '省市区', '231100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231200', '152000', '绥化市', '1', '省市区', '230000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231202', '152000', '北林区', '1', '省市区', '231200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231221', '152100', '望奎县', '1', '省市区', '231200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231222', '151500', '兰西县', '1', '省市区', '231200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231223', '151600', '青冈县', '1', '省市区', '231200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231224', '152400', '庆安县', '1', '省市区', '231200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231225', '151700', '明水县', '1', '省市区', '231200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231226', '152200', '绥棱县', '1', '省市区', '231200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231281', '151400', '安达市', '1', '省市区', '231200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231282', '151100', '肇东市', '1', '省市区', '231200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('231283', '152300', '海伦市', '1', '省市区', '231200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('232700', '165000', '大兴安岭地区', '1', '省市区', '230000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('232701', '165000', '加格达奇区', '1', '省市区', '232700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('232702', '165000', '新林区', '1', '省市区', '232700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('232703', '165000', '松岭区', '1', '省市区', '232700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('232704', '165000', '呼中区', '1', '省市区', '232700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('232721', '165100', '呼玛县', '1', '省市区', '232700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('232722', '165200', '塔河县', '1', '省市区', '232700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('232723', '165300', '漠河县', '1', '省市区', '232700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('24', '82', '丰田', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('25', '83', '福特', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('26', '84', '保时捷', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('27', '85', '宝马', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('28', '86', '奥迪', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('29', '87', '别克', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('3', '3', '手动档', '3', '变速器类型', '0', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('30', '88', '雪佛兰', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('31', '89', '法拉利', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('310000', '', '上海', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('310100', '200000', '上海市', '1', '省市区', '310000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('310101', '200001', '黄浦区', '1', '省市区', '310100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('310104', '200030', '徐汇区', '1', '省市区', '310100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('310105', '200050', '长宁区', '1', '省市区', '310100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('310106', '200040', '静安区', '1', '省市区', '310100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('310107', '200333', '普陀区', '1', '省市区', '310100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('310108', '200070', '闸北区', '1', '省市区', '310100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('310109', '200086', '虹口区', '1', '省市区', '310100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('310110', '200082', '杨浦区', '1', '省市区', '310100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('310112', '201100', '闵行区', '1', '省市区', '310100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('310113', '201900', '宝山区', '1', '省市区', '310100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('310114', '201800', '嘉定区', '1', '省市区', '310100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('310115', '200135', '浦东新区', '1', '省市区', '310100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('310116', '200540', '金山区', '1', '省市区', '310100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('310117', '201600', '松江区', '1', '省市区', '310100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('310118', '201700', '青浦区', '1', '省市区', '310100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('310120', '201400', '奉贤区', '1', '省市区', '310100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('310230', '202150', '崇明县', '1', '省市区', '310100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('32', '80', '马自达', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('320000', '', '江苏省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320100', '210008', '南京市', '1', '省市区', '320000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320102', '210018', '玄武区', '1', '省市区', '320100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320104', '210001', '秦淮区', '1', '省市区', '320100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320105', '210004', '建邺区', '1', '省市区', '320100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320106', '210009', '鼓楼区', '1', '省市区', '320100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320111', '211800', '浦口区', '1', '省市区', '320100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320113', '210046', '栖霞区', '1', '省市区', '320100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320114', '210012', '雨花台区', '1', '省市区', '320100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320115', '211100', '江宁区', '1', '省市区', '320100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320116', '211500', '六合区', '1', '省市区', '320100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320117', '211200', '溧水区', '1', '省市区', '320100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320118', '211300', '高淳区', '1', '省市区', '320100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320200', '214000', '无锡市', '1', '省市区', '320000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320202', '214001', '崇安区', '1', '省市区', '320200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320203', '214021', '南长区', '1', '省市区', '320200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320204', '214044', '北塘区', '1', '省市区', '320200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320205', '214101', '锡山区', '1', '省市区', '320200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320206', '214174', '惠山区', '1', '省市区', '320200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320211', '214123', '滨湖区', '1', '省市区', '320200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320281', '214431', '江阴市', '1', '省市区', '320200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320282', '214200', '宜兴市', '1', '省市区', '320200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320300', '221003', '徐州市', '1', '省市区', '320000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320302', '221005', '鼓楼区', '1', '省市区', '320300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320303', '221007', '云龙区', '1', '省市区', '320300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320305', '221003', '贾汪区', '1', '省市区', '320300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320311', '221006', '泉山区', '1', '省市区', '320300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320312', '221106', '铜山区', '1', '省市区', '320300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320321', '221700', '丰县', '1', '省市区', '320300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320322', '221600', '沛县', '1', '省市区', '320300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320324', '221200', '睢宁县', '1', '省市区', '320300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320381', '221400', '新沂市', '1', '省市区', '320300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320382', '221300', '邳州市', '1', '省市区', '320300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320400', '213000', '常州市', '1', '省市区', '320000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320402', '213000', '天宁区', '1', '省市区', '320400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320404', '213023', '钟楼区', '1', '省市区', '320400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320405', '213025', '戚墅堰区', '1', '省市区', '320400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320411', '213022', '新北区', '1', '省市区', '320400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320412', '213100', '武进区', '1', '省市区', '320400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320481', '213300', '溧阳市', '1', '省市区', '320400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320482', '213200', '金坛市', '1', '省市区', '320400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320500', '215002', '苏州市', '1', '省市区', '320000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320505', '215004', '虎丘区', '1', '省市区', '320500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320506', '215128', '吴中区', '1', '省市区', '320500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320507', '215131', '相城区', '1', '省市区', '320500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320508', '215031', '姑苏区', '1', '省市区', '320500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320509', '215200', '吴江区', '1', '省市区', '320500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320581', '215500', '常熟市', '1', '省市区', '320500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320582', '215600', '张家港市', '1', '省市区', '320500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320583', '215300', '昆山市', '1', '省市区', '320500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320585', '215400', '太仓市', '1', '省市区', '320500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320600', '226001', '南通市', '1', '省市区', '320000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320602', '226001', '崇川区', '1', '省市区', '320600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320611', '226001', '港闸区', '1', '省市区', '320600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320612', '226300', '通州区', '1', '省市区', '320600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320621', '226600', '海安县', '1', '省市区', '320600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320623', '226400', '如东县', '1', '省市区', '320600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320681', '226200', '启东市', '1', '省市区', '320600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320682', '226500', '如皋市', '1', '省市区', '320600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320684', '226100', '海门市', '1', '省市区', '320600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320700', '222002', '连云港市', '1', '省市区', '320000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320703', '222042', '连云区', '1', '省市区', '320700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320706', '222003', '海州区', '1', '省市区', '320700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320707', '222100', '赣榆区', '1', '省市区', '320700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320722', '222300', '东海县', '1', '省市区', '320700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320723', '222200', '灌云县', '1', '省市区', '320700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320724', '222500', '灌南县', '1', '省市区', '320700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320800', '223001', '淮安市', '1', '省市区', '320000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320802', '223001', '清河区', '1', '省市区', '320800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320803', '223200', '淮安区', '1', '省市区', '320800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320804', '223300', '淮阴区', '1', '省市区', '320800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320811', '223002', '清浦区', '1', '省市区', '320800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320826', '223400', '涟水县', '1', '省市区', '320800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320829', '223100', '洪泽县', '1', '省市区', '320800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320830', '211700', '盱眙县', '1', '省市区', '320800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320831', '211600', '金湖县', '1', '省市区', '320800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320900', '224005', '盐城市', '1', '省市区', '320000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320902', '224005', '亭湖区', '1', '省市区', '320900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320903', '224055', '盐都区', '1', '省市区', '320900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320921', '224600', '响水县', '1', '省市区', '320900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320922', '224500', '滨海县', '1', '省市区', '320900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320923', '224400', '阜宁县', '1', '省市区', '320900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320924', '224300', '射阳县', '1', '省市区', '320900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320925', '224700', '建湖县', '1', '省市区', '320900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320981', '224200', '东台市', '1', '省市区', '320900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('320982', '224100', '大丰市', '1', '省市区', '320900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321000', '225002', '扬州市', '1', '省市区', '320000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321002', '225002', '广陵区', '1', '省市区', '321000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321003', '225002', '邗江区', '1', '省市区', '321000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321012', '225200', '江都区', '1', '省市区', '321000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321023', '225800', '宝应县', '1', '省市区', '321000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321081', '211400', '仪征市', '1', '省市区', '321000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321084', '225600', '高邮市', '1', '省市区', '321000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321100', '212004', '镇江市', '1', '省市区', '320000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321102', '212003', '京口区', '1', '省市区', '321100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321111', '212005', '润州区', '1', '省市区', '321100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321112', '212028', '丹徒区', '1', '省市区', '321100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321181', '212300', '丹阳市', '1', '省市区', '321100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321182', '212200', '扬中市', '1', '省市区', '321100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321183', '212400', '句容市', '1', '省市区', '321100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321200', '225300', '泰州市', '1', '省市区', '320000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321202', '225300', '海陵区', '1', '省市区', '321200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321203', '225321', '高港区', '1', '省市区', '321200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321204', '225500', '姜堰区', '1', '省市区', '321200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321281', '225700', '兴化市', '1', '省市区', '321200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321282', '214500', '靖江市', '1', '省市区', '321200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321283', '225400', '泰兴市', '1', '省市区', '321200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321300', '223800', '宿迁市', '1', '省市区', '320000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321302', '223800', '宿城区', '1', '省市区', '321300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321311', '223800', '宿豫区', '1', '省市区', '321300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321322', '223600', '沭阳县', '1', '省市区', '321300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321323', '223700', '泗阳县', '1', '省市区', '321300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('321324', '223900', '泗洪县', '1', '省市区', '321300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('33', '800', '标志', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('330000', '', '浙江省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330100', '310026', '杭州市', '1', '省市区', '330000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330102', '310002', '上城区', '1', '省市区', '330100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330103', '310006', '下城区', '1', '省市区', '330100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330104', '310016', '江干区', '1', '省市区', '330100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330105', '310011', '拱墅区', '1', '省市区', '330100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330106', '310013', '西湖区', '1', '省市区', '330100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330108', '310051', '滨江区', '1', '省市区', '330100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330109', '311200', '萧山区', '1', '省市区', '330100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330110', '311100', '余杭区', '1', '省市区', '330100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330122', '311500', '桐庐县', '1', '省市区', '330100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330127', '311700', '淳安县', '1', '省市区', '330100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330182', '311600', '建德市', '1', '省市区', '330100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330183', '311400', '富阳区', '1', '省市区', '330100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330185', '311300', '临安市', '1', '省市区', '330100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330200', '315000', '宁波市', '1', '省市区', '330000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330203', '315000', '海曙区', '1', '省市区', '330200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330204', '315040', '江东区', '1', '省市区', '330200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330205', '315020', '江北区', '1', '省市区', '330200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330206', '315800', '北仑区', '1', '省市区', '330200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330211', '315200', '镇海区', '1', '省市区', '330200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330212', '315100', '鄞州区', '1', '省市区', '330200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330225', '315700', '象山县', '1', '省市区', '330200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330226', '315600', '宁海县', '1', '省市区', '330200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330281', '315400', '余姚市', '1', '省市区', '330200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330282', '315300', '慈溪市', '1', '省市区', '330200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330283', '315500', '奉化市', '1', '省市区', '330200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330300', '325000', '温州市', '1', '省市区', '330000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330302', '325000', '鹿城区', '1', '省市区', '330300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330303', '325013', '龙湾区', '1', '省市区', '330300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330304', '325005', '瓯海区', '1', '省市区', '330300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330322', '325700', '洞头县', '1', '省市区', '330300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330324', '325100', '永嘉县', '1', '省市区', '330300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330326', '325400', '平阳县', '1', '省市区', '330300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330327', '325800', '苍南县', '1', '省市区', '330300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330328', '325300', '文成县', '1', '省市区', '330300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330329', '325500', '泰顺县', '1', '省市区', '330300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330381', '325200', '瑞安市', '1', '省市区', '330300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330382', '325600', '乐清市', '1', '省市区', '330300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330400', '314000', '嘉兴市', '1', '省市区', '330000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330402', '314051', '南湖区', '1', '省市区', '330400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330411', '314031', '秀洲区', '1', '省市区', '330400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330421', '314100', '嘉善县', '1', '省市区', '330400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330424', '314300', '海盐县', '1', '省市区', '330400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330481', '314400', '海宁市', '1', '省市区', '330400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330482', '314200', '平湖市', '1', '省市区', '330400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330483', '314500', '桐乡市', '1', '省市区', '330400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330500', '313000', '湖州市', '1', '省市区', '330000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330502', '313000', '吴兴区', '1', '省市区', '330500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330503', '313009', '南浔区', '1', '省市区', '330500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330521', '313200', '德清县', '1', '省市区', '330500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330522', '313100', '长兴县', '1', '省市区', '330500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330523', '313300', '安吉县', '1', '省市区', '330500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330600', '312000', '绍兴市', '1', '省市区', '330000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330602', '312000', '越城区', '1', '省市区', '330600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330603', '312030', '柯桥区', '1', '省市区', '330600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330604', '312300', '上虞区', '1', '省市区', '330600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330624', '312500', '新昌县', '1', '省市区', '330600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330681', '311800', '诸暨市', '1', '省市区', '330600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330683', '312400', '嵊州市', '1', '省市区', '330600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330700', '321000', '金华市', '1', '省市区', '330000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330702', '321000', '婺城区', '1', '省市区', '330700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330703', '321000', '金东区', '1', '省市区', '330700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330723', '321200', '武义县', '1', '省市区', '330700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330726', '322200', '浦江县', '1', '省市区', '330700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330727', '322300', '磐安县', '1', '省市区', '330700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330781', '321100', '兰溪市', '1', '省市区', '330700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330782', '322000', '义乌市', '1', '省市区', '330700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330783', '322100', '东阳市', '1', '省市区', '330700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330784', '321300', '永康市', '1', '省市区', '330700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330800', '324002', '衢州市', '1', '省市区', '330000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330802', '324100', '柯城区', '1', '省市区', '330800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330803', '324022', '衢江区', '1', '省市区', '330800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330822', '324200', '常山县', '1', '省市区', '330800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330824', '324300', '开化县', '1', '省市区', '330800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330825', '324400', '龙游县', '1', '省市区', '330800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330881', '324100', '江山市', '1', '省市区', '330800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330900', '316000', '舟山市', '1', '省市区', '330000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330902', '316000', '定海区', '1', '省市区', '330900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330903', '316100', '普陀区', '1', '省市区', '330900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330921', '316200', '岱山县', '1', '省市区', '330900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('330922', '202450', '嵊泗县', '1', '省市区', '330900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331000', '318000', '台州市', '1', '省市区', '330000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331002', '318000', '椒江区', '1', '省市区', '331000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331003', '318020', '黄岩区', '1', '省市区', '331000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331004', '318050', '路桥区', '1', '省市区', '331000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331021', '317600', '玉环县', '1', '省市区', '331000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331022', '317100', '三门县', '1', '省市区', '331000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331023', '317200', '天台县', '1', '省市区', '331000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331024', '317300', '仙居县', '1', '省市区', '331000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331081', '317500', '温岭市', '1', '省市区', '331000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331082', '317000', '临海市', '1', '省市区', '331000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331100', '323000', '丽水市', '1', '省市区', '330000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331102', '323000', '莲都区', '1', '省市区', '331100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331121', '323900', '青田县', '1', '省市区', '331100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331122', '321400', '缙云县', '1', '省市区', '331100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331123', '323300', '遂昌县', '1', '省市区', '331100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331124', '323400', '松阳县', '1', '省市区', '331100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331125', '323600', '云和县', '1', '省市区', '331100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331126', '323800', '庆元县', '1', '省市区', '331100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331127', '323500', '景宁畲族自治县', '1', '省市区', '331100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331181', '323700', '龙泉市', '1', '省市区', '331100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331200', '316000', '舟山群岛新区', '1', '省市区', '330000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331201', '316000', '金塘岛', '1', '省市区', '331200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331202', '316000', '六横岛', '1', '省市区', '331200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331203', '316000', '衢山岛', '1', '省市区', '331200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331204', '316000', '舟山本岛西北部', '1', '省市区', '331200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331205', '316000', '岱山岛西南部', '1', '省市区', '331200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331206', '316000', '泗礁岛', '1', '省市区', '331200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331207', '316000', '朱家尖岛', '1', '省市区', '331200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331208', '316000', '洋山岛', '1', '省市区', '331200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331209', '316000', '长涂岛', '1', '省市区', '331200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('331210', '316000', '虾峙岛', '1', '省市区', '331200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('34', '801', '起亚', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('340000', '', '安徽省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340100', '230001', '合肥市', '1', '省市区', '340000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340102', '230011', '瑶海区', '1', '省市区', '340100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340103', '230001', '庐阳区', '1', '省市区', '340100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340104', '230031', '蜀山区', '1', '省市区', '340100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340111', '230041', '包河区', '1', '省市区', '340100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340121', '231100', '长丰县', '1', '省市区', '340100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340122', '231600', '肥东县', '1', '省市区', '340100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340123', '231200', '肥西县', '1', '省市区', '340100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340124', '231500', '庐江县', '1', '省市区', '340100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340181', '238000', '巢湖市', '1', '省市区', '340100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340200', '241000', '芜湖市', '1', '省市区', '340000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340202', '241000', '镜湖区', '1', '省市区', '340200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340203', '241000', '弋江区', '1', '省市区', '340200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340207', '241000', '鸠江区', '1', '省市区', '340200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340208', '241000', '三山区', '1', '省市区', '340200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340221', '241100', '芜湖县', '1', '省市区', '340200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340222', '241200', '繁昌县', '1', '省市区', '340200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340223', '242400', '南陵县', '1', '省市区', '340200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340225', '238300', '无为县', '1', '省市区', '340200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340300', '233000', '蚌埠市', '1', '省市区', '340000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340302', '233000', '龙子湖区', '1', '省市区', '340300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340303', '233000', '蚌山区', '1', '省市区', '340300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340304', '233010', '禹会区', '1', '省市区', '340300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340311', '233002', '淮上区', '1', '省市区', '340300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340321', '233400', '怀远县', '1', '省市区', '340300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340322', '233300', '五河县', '1', '省市区', '340300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340323', '233700', '固镇县', '1', '省市区', '340300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340400', '232001', '淮南市', '1', '省市区', '340000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340402', '232033', '大通区', '1', '省市区', '340400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340403', '232000', '田家庵区', '1', '省市区', '340400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340404', '232052', '谢家集区', '1', '省市区', '340400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340405', '232072', '八公山区', '1', '省市区', '340400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340406', '232082', '潘集区', '1', '省市区', '340400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340421', '232100', '凤台县', '1', '省市区', '340400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340500', '243001', '马鞍山市', '1', '省市区', '340000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340503', '243000', '花山区', '1', '省市区', '340500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340504', '243071', '雨山区', '1', '省市区', '340500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340506', '243131', '博望区', '1', '省市区', '340500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340521', '243100', '当涂县', '1', '省市区', '340500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340522', '238100', '含山县', '1', '省市区', '340500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340523', '238200', '和县', '1', '省市区', '340500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340600', '235000', '淮北市', '1', '省市区', '340000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340602', '235000', '杜集区', '1', '省市区', '340600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340603', '235000', '相山区', '1', '省市区', '340600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340604', '235000', '烈山区', '1', '省市区', '340600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340621', '235100', '濉溪县', '1', '省市区', '340600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340700', '244000', '铜陵市', '1', '省市区', '340000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340702', '244000', '铜官山区', '1', '省市区', '340700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340703', '244000', '狮子山区', '1', '省市区', '340700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340711', '244000', '郊区', '1', '省市区', '340700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340721', '244100', '铜陵县', '1', '省市区', '340700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340800', '246001', '安庆市', '1', '省市区', '340000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340802', '246001', '迎江区', '1', '省市区', '340800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340803', '246002', '大观区', '1', '省市区', '340800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340811', '246003', '宜秀区', '1', '省市区', '340800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340822', '246100', '怀宁县', '1', '省市区', '340800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340823', '246700', '枞阳县', '1', '省市区', '340800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340824', '246300', '潜山县', '1', '省市区', '340800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340825', '246400', '太湖县', '1', '省市区', '340800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340826', '246500', '宿松县', '1', '省市区', '340800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340827', '246200', '望江县', '1', '省市区', '340800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340828', '246600', '岳西县', '1', '省市区', '340800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('340881', '231400', '桐城市', '1', '省市区', '340800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341000', '245000', '黄山市', '1', '省市区', '340000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341002', '245000', '屯溪区', '1', '省市区', '341000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341003', '242700', '黄山区', '1', '省市区', '341000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341004', '245061', '徽州区', '1', '省市区', '341000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341021', '245200', '歙县', '1', '省市区', '341000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341022', '245400', '休宁县', '1', '省市区', '341000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341023', '245500', '黟县', '1', '省市区', '341000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341024', '245600', '祁门县', '1', '省市区', '341000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341100', '239000', '滁州市', '1', '省市区', '340000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341102', '239000', '琅琊区', '1', '省市区', '341100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341103', '239000', '南谯区', '1', '省市区', '341100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341122', '239200', '来安县', '1', '省市区', '341100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341124', '239500', '全椒县', '1', '省市区', '341100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341125', '233200', '定远县', '1', '省市区', '341100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341126', '233100', '凤阳县', '1', '省市区', '341100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341181', '239300', '天长市', '1', '省市区', '341100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341182', '239400', '明光市', '1', '省市区', '341100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341200', '236033', '阜阳市', '1', '省市区', '340000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341202', '236001', '颍州区', '1', '省市区', '341200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341203', '236058', '颍东区', '1', '省市区', '341200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341204', '236045', '颍泉区', '1', '省市区', '341200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341221', '236400', '临泉县', '1', '省市区', '341200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341222', '236600', '太和县', '1', '省市区', '341200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341225', '236300', '阜南县', '1', '省市区', '341200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341226', '236200', '颍上县', '1', '省市区', '341200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341282', '236500', '界首市', '1', '省市区', '341200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341300', '234000', '宿州市', '1', '省市区', '340000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341302', '234000', '埇桥区', '1', '省市区', '341300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341321', '235300', '砀山县', '1', '省市区', '341300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341322', '235200', '萧县', '1', '省市区', '341300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341323', '234200', '灵璧县', '1', '省市区', '341300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341324', '234300', '泗县', '1', '省市区', '341300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341500', '237000', '六安市', '1', '省市区', '340000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341502', '237005', '金安区', '1', '省市区', '341500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341503', '237010', '裕安区', '1', '省市区', '341500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341521', '232200', '寿县', '1', '省市区', '341500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341522', '237400', '霍邱县', '1', '省市区', '341500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341523', '231300', '舒城县', '1', '省市区', '341500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341524', '237300', '金寨县', '1', '省市区', '341500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341525', '237200', '霍山县', '1', '省市区', '341500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341600', '236802', '亳州市', '1', '省市区', '340000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341602', '236800', '谯城区', '1', '省市区', '341600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341621', '233600', '涡阳县', '1', '省市区', '341600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341622', '233500', '蒙城县', '1', '省市区', '341600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341623', '236700', '利辛县', '1', '省市区', '341600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341700', '247100', '池州市', '1', '省市区', '340000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341702', '247100', '贵池区', '1', '省市区', '341700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341721', '247200', '东至县', '1', '省市区', '341700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341722', '245100', '石台县', '1', '省市区', '341700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341723', '242800', '青阳县', '1', '省市区', '341700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341800', '242000', '宣城市', '1', '省市区', '340000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341802', '242000', '宣州区', '1', '省市区', '341800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341821', '242100', '郎溪县', '1', '省市区', '341800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341822', '242200', '广德县', '1', '省市区', '341800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341823', '242500', '泾县', '1', '省市区', '341800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341824', '245300', '绩溪县', '1', '省市区', '341800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341825', '242600', '旌德县', '1', '省市区', '341800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('341881', '242300', '宁国市', '1', '省市区', '341800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('35', '802', '传祺', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('350000', '', '福建省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350100', '350001', '福州市', '1', '省市区', '350000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350102', '350001', '鼓楼区', '1', '省市区', '350100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350103', '350004', '台江区', '1', '省市区', '350100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350104', '350007', '仓山区', '1', '省市区', '350100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350105', '350015', '马尾区', '1', '省市区', '350100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350111', '350011', '晋安区', '1', '省市区', '350100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350121', '350100', '闽侯县', '1', '省市区', '350100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350122', '350500', '连江县', '1', '省市区', '350100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350123', '350600', '罗源县', '1', '省市区', '350100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350124', '350800', '闽清县', '1', '省市区', '350100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350125', '350700', '永泰县', '1', '省市区', '350100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350128', '350400', '平潭县', '1', '省市区', '350100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350181', '350300', '福清市', '1', '省市区', '350100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350182', '350200', '长乐市', '1', '省市区', '350100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350200', '361003', '厦门市', '1', '省市区', '350000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350203', '361001', '思明区', '1', '省市区', '350200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350205', '361026', '海沧区', '1', '省市区', '350200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350206', '361006', '湖里区', '1', '省市区', '350200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350211', '361021', '集美区', '1', '省市区', '350200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350212', '361100', '同安区', '1', '省市区', '350200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350213', '361101', '翔安区', '1', '省市区', '350200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350300', '351100', '莆田市', '1', '省市区', '350000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350302', '351100', '城厢区', '1', '省市区', '350300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350303', '351111', '涵江区', '1', '省市区', '350300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350304', '351100', '荔城区', '1', '省市区', '350300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350305', '351152', '秀屿区', '1', '省市区', '350300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350322', '351200', '仙游县', '1', '省市区', '350300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350400', '365000', '三明市', '1', '省市区', '350000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350402', '365000', '梅列区', '1', '省市区', '350400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350403', '365001', '三元区', '1', '省市区', '350400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350421', '365200', '明溪县', '1', '省市区', '350400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350423', '365300', '清流县', '1', '省市区', '350400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350424', '365400', '宁化县', '1', '省市区', '350400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350425', '366100', '大田县', '1', '省市区', '350400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350426', '365100', '尤溪县', '1', '省市区', '350400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350427', '365500', '沙县', '1', '省市区', '350400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350428', '353300', '将乐县', '1', '省市区', '350400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350429', '354400', '泰宁县', '1', '省市区', '350400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350430', '354500', '建宁县', '1', '省市区', '350400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350481', '366000', '永安市', '1', '省市区', '350400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350500', '362000', '泉州市', '1', '省市区', '350000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350502', '362000', '鲤城区', '1', '省市区', '350500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350503', '362000', '丰泽区', '1', '省市区', '350500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350504', '362011', '洛江区', '1', '省市区', '350500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350505', '362114', '泉港区', '1', '省市区', '350500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350521', '362100', '惠安县', '1', '省市区', '350500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350524', '362400', '安溪县', '1', '省市区', '350500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350525', '362600', '永春县', '1', '省市区', '350500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350526', '362500', '德化县', '1', '省市区', '350500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350527', '', '金门县', '1', '省市区', '350500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350581', '362700', '石狮市', '1', '省市区', '350500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350582', '362200', '晋江市', '1', '省市区', '350500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350583', '362300', '南安市', '1', '省市区', '350500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350600', '363005', '漳州市', '1', '省市区', '350000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350602', '363000', '芗城区', '1', '省市区', '350600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350603', '363005', '龙文区', '1', '省市区', '350600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350622', '363300', '云霄县', '1', '省市区', '350600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350623', '363200', '漳浦县', '1', '省市区', '350600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350624', '363500', '诏安县', '1', '省市区', '350600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350625', '363900', '长泰县', '1', '省市区', '350600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350626', '363400', '东山县', '1', '省市区', '350600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350627', '363600', '南靖县', '1', '省市区', '350600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350628', '363700', '平和县', '1', '省市区', '350600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350629', '363800', '华安县', '1', '省市区', '350600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350681', '363100', '龙海市', '1', '省市区', '350600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350700', '353000', '南平市', '1', '省市区', '350000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350702', '353000', '延平区', '1', '省市区', '350700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350703', '354200', '建阳区', '1', '省市区', '350700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350721', '353200', '顺昌县', '1', '省市区', '350700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350722', '353400', '浦城县', '1', '省市区', '350700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350723', '354100', '光泽县', '1', '省市区', '350700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350724', '353500', '松溪县', '1', '省市区', '350700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350725', '353600', '政和县', '1', '省市区', '350700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350781', '354000', '邵武市', '1', '省市区', '350700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350782', '354300', '武夷山市', '1', '省市区', '350700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350783', '353100', '建瓯市', '1', '省市区', '350700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350800', '364000', '龙岩市', '1', '省市区', '350000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350802', '364000', '新罗区', '1', '省市区', '350800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350821', '366300', '长汀县', '1', '省市区', '350800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350822', '364100', '永定区', '1', '省市区', '350800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350823', '364200', '上杭县', '1', '省市区', '350800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350824', '364300', '武平县', '1', '省市区', '350800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350825', '366200', '连城县', '1', '省市区', '350800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350881', '364400', '漳平市', '1', '省市区', '350800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350900', '352100', '宁德市', '1', '省市区', '350000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350902', '352100', '蕉城区', '1', '省市区', '350900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350921', '355100', '霞浦县', '1', '省市区', '350900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350922', '352200', '古田县', '1', '省市区', '350900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350923', '352300', '屏南县', '1', '省市区', '350900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350924', '355500', '寿宁县', '1', '省市区', '350900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350925', '355400', '周宁县', '1', '省市区', '350900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350926', '355300', '柘荣县', '1', '省市区', '350900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350981', '355000', '福安市', '1', '省市区', '350900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('350982', '355200', '福鼎市', '1', '省市区', '350900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('36', '803', '大通', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('360000', '', '江西省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360100', '330008', '南昌市', '1', '省市区', '360000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360102', '330006', '东湖区', '1', '省市区', '360100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360103', '330009', '西湖区', '1', '省市区', '360100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360104', '330001', '青云谱区', '1', '省市区', '360100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360105', '330004', '湾里区', '1', '省市区', '360100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360111', '330029', '青山湖区', '1', '省市区', '360100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360121', '330200', '南昌县', '1', '省市区', '360100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360122', '330100', '新建县', '1', '省市区', '360100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360123', '330500', '安义县', '1', '省市区', '360100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360124', '331700', '进贤县', '1', '省市区', '360100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360200', '333000', '景德镇市', '1', '省市区', '360000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360202', '333000', '昌江区', '1', '省市区', '360200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360203', '333000', '珠山区', '1', '省市区', '360200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360222', '333400', '浮梁县', '1', '省市区', '360200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360281', '333300', '乐平市', '1', '省市区', '360200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360300', '337000', '萍乡市', '1', '省市区', '360000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360302', '337000', '安源区', '1', '省市区', '360300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360313', '337016', '湘东区', '1', '省市区', '360300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360321', '337100', '莲花县', '1', '省市区', '360300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360322', '337009', '上栗县', '1', '省市区', '360300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360323', '337053', '芦溪县', '1', '省市区', '360300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360400', '332000', '九江市', '1', '省市区', '360000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360402', '332005', '庐山区', '1', '省市区', '360400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360403', '332000', '浔阳区', '1', '省市区', '360400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360421', '332100', '九江县', '1', '省市区', '360400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360423', '332300', '武宁县', '1', '省市区', '360400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360424', '332400', '修水县', '1', '省市区', '360400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360425', '330300', '永修县', '1', '省市区', '360400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360426', '330400', '德安县', '1', '省市区', '360400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360427', '332800', '星子县', '1', '省市区', '360400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360428', '332600', '都昌县', '1', '省市区', '360400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360429', '332500', '湖口县', '1', '省市区', '360400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360430', '332700', '彭泽县', '1', '省市区', '360400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360481', '332200', '瑞昌市', '1', '省市区', '360400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360482', '332020', '共青城市', '1', '省市区', '360400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360500', '338025', '新余市', '1', '省市区', '360000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360502', '338025', '渝水区', '1', '省市区', '360500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360521', '336600', '分宜县', '1', '省市区', '360500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360600', '335000', '鹰潭市', '1', '省市区', '360000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360602', '335000', '月湖区', '1', '省市区', '360600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360622', '335200', '余江县', '1', '省市区', '360600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360681', '335400', '贵溪市', '1', '省市区', '360600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360700', '341000', '赣州市', '1', '省市区', '360000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360702', '341000', '章贡区', '1', '省市区', '360700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360703', '341400', '南康区', '1', '省市区', '360700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360721', '341100', '赣县', '1', '省市区', '360700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360722', '341600', '信丰县', '1', '省市区', '360700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360723', '341500', '大余县', '1', '省市区', '360700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360724', '341200', '上犹县', '1', '省市区', '360700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360725', '341300', '崇义县', '1', '省市区', '360700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360726', '342100', '安远县', '1', '省市区', '360700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360727', '341700', '龙南县', '1', '省市区', '360700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360728', '341900', '定南县', '1', '省市区', '360700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360729', '341800', '全南县', '1', '省市区', '360700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360730', '342800', '宁都县', '1', '省市区', '360700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360731', '342300', '于都县', '1', '省市区', '360700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360732', '342400', '兴国县', '1', '省市区', '360700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360733', '342600', '会昌县', '1', '省市区', '360700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360734', '342200', '寻乌县', '1', '省市区', '360700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360735', '342700', '石城县', '1', '省市区', '360700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360781', '342500', '瑞金市', '1', '省市区', '360700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360800', '343000', '吉安市', '1', '省市区', '360000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360802', '343000', '吉州区', '1', '省市区', '360800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360803', '343009', '青原区', '1', '省市区', '360800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360821', '343100', '吉安县', '1', '省市区', '360800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360822', '331600', '吉水县', '1', '省市区', '360800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360823', '331409', '峡江县', '1', '省市区', '360800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360824', '331300', '新干县', '1', '省市区', '360800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360825', '331500', '永丰县', '1', '省市区', '360800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360826', '343700', '泰和县', '1', '省市区', '360800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360827', '343900', '遂川县', '1', '省市区', '360800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360828', '343800', '万安县', '1', '省市区', '360800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360829', '343200', '安福县', '1', '省市区', '360800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360830', '343400', '永新县', '1', '省市区', '360800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360881', '343600', '井冈山市', '1', '省市区', '360800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360900', '336000', '宜春市', '1', '省市区', '360000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360902', '336000', '袁州区', '1', '省市区', '360900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360921', '330700', '奉新县', '1', '省市区', '360900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360922', '336100', '万载县', '1', '省市区', '360900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360923', '336400', '上高县', '1', '省市区', '360900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360924', '336300', '宜丰县', '1', '省市区', '360900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360925', '330600', '靖安县', '1', '省市区', '360900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360926', '336200', '铜鼓县', '1', '省市区', '360900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360981', '331100', '丰城市', '1', '省市区', '360900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360982', '331200', '樟树市', '1', '省市区', '360900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('360983', '330800', '高安市', '1', '省市区', '360900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361000', '344000', '抚州市', '1', '省市区', '360000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361002', '344000', '临川区', '1', '省市区', '361000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361021', '344700', '南城县', '1', '省市区', '361000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361022', '344600', '黎川县', '1', '省市区', '361000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361023', '344500', '南丰县', '1', '省市区', '361000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361024', '344200', '崇仁县', '1', '省市区', '361000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361025', '344300', '乐安县', '1', '省市区', '361000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361026', '344400', '宜黄县', '1', '省市区', '361000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361027', '344800', '金溪县', '1', '省市区', '361000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361028', '335300', '资溪县', '1', '省市区', '361000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361029', '331800', '东乡县', '1', '省市区', '361000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361030', '344900', '广昌县', '1', '省市区', '361000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361100', '334000', '上饶市', '1', '省市区', '360000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361102', '334000', '信州区', '1', '省市区', '361100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361121', '334100', '上饶县', '1', '省市区', '361100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361122', '334600', '广丰县', '1', '省市区', '361100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361123', '334700', '玉山县', '1', '省市区', '361100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361124', '334500', '铅山县', '1', '省市区', '361100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361125', '334300', '横峰县', '1', '省市区', '361100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361126', '334400', '弋阳县', '1', '省市区', '361100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361127', '335100', '余干县', '1', '省市区', '361100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361128', '333100', '鄱阳县', '1', '省市区', '361100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361129', '335500', '万年县', '1', '省市区', '361100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361130', '333200', '婺源县', '1', '省市区', '361100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('361181', '334200', '德兴市', '1', '省市区', '361100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('37', '91', 'SUV', '9', '车型', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('370000', '', '山东省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370100', '250001', '济南市', '1', '省市区', '370000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370102', '250014', '历下区', '1', '省市区', '370100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370103', '250001', '市中区', '1', '省市区', '370100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370104', '250117', '槐荫区', '1', '省市区', '370100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370105', '250031', '天桥区', '1', '省市区', '370100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370112', '250100', '历城区', '1', '省市区', '370100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370113', '250300', '长清区', '1', '省市区', '370100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370124', '250400', '平阴县', '1', '省市区', '370100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370125', '251400', '济阳县', '1', '省市区', '370100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370126', '251600', '商河县', '1', '省市区', '370100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370181', '250200', '章丘市', '1', '省市区', '370100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370200', '266001', '青岛市', '1', '省市区', '370000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370202', '266001', '市南区', '1', '省市区', '370200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370203', '266011', '市北区', '1', '省市区', '370200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370211', '266500', '黄岛区', '1', '省市区', '370200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370212', '266100', '崂山区', '1', '省市区', '370200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370213', '266021', '李沧区', '1', '省市区', '370200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370214', '266041', '城阳区', '1', '省市区', '370200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370281', '266300', '胶州市', '1', '省市区', '370200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370282', '266200', '即墨市', '1', '省市区', '370200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370283', '266700', '平度市', '1', '省市区', '370200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370285', '266600', '莱西市', '1', '省市区', '370200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370286', '266500', '西海岸新区', '1', '省市区', '370200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370300', '255039', '淄博市', '1', '省市区', '370000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370302', '255100', '淄川区', '1', '省市区', '370300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370303', '255022', '张店区', '1', '省市区', '370300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370304', '255200', '博山区', '1', '省市区', '370300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370305', '255400', '临淄区', '1', '省市区', '370300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370306', '255300', '周村区', '1', '省市区', '370300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370321', '256400', '桓台县', '1', '省市区', '370300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370322', '256300', '高青县', '1', '省市区', '370300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370323', '256100', '沂源县', '1', '省市区', '370300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370400', '277101', '枣庄市', '1', '省市区', '370000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370402', '277101', '市中区', '1', '省市区', '370400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370403', '277000', '薛城区', '1', '省市区', '370400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370404', '277300', '峄城区', '1', '省市区', '370400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370405', '277400', '台儿庄区', '1', '省市区', '370400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370406', '277200', '山亭区', '1', '省市区', '370400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370481', '277500', '滕州市', '1', '省市区', '370400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370500', '257093', '东营市', '1', '省市区', '370000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370502', '257029', '东营区', '1', '省市区', '370500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370503', '257200', '河口区', '1', '省市区', '370500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370521', '257500', '垦利县', '1', '省市区', '370500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370522', '257400', '利津县', '1', '省市区', '370500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370523', '257300', '广饶县', '1', '省市区', '370500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370600', '264010', '烟台市', '1', '省市区', '370000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370602', '264001', '芝罘区', '1', '省市区', '370600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370611', '265500', '福山区', '1', '省市区', '370600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370612', '264100', '牟平区', '1', '省市区', '370600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370613', '264600', '莱山区', '1', '省市区', '370600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370634', '265800', '长岛县', '1', '省市区', '370600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370681', '265700', '龙口市', '1', '省市区', '370600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370682', '265200', '莱阳市', '1', '省市区', '370600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370683', '261400', '莱州市', '1', '省市区', '370600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370684', '265600', '蓬莱市', '1', '省市区', '370600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370685', '265400', '招远市', '1', '省市区', '370600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370686', '265300', '栖霞市', '1', '省市区', '370600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370687', '265100', '海阳市', '1', '省市区', '370600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370700', '261041', '潍坊市', '1', '省市区', '370000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370702', '261021', '潍城区', '1', '省市区', '370700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370703', '261100', '寒亭区', '1', '省市区', '370700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370704', '261200', '坊子区', '1', '省市区', '370700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370705', '261031', '奎文区', '1', '省市区', '370700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370724', '262600', '临朐县', '1', '省市区', '370700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370725', '262400', '昌乐县', '1', '省市区', '370700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370781', '262500', '青州市', '1', '省市区', '370700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370782', '262200', '诸城市', '1', '省市区', '370700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370783', '262700', '寿光市', '1', '省市区', '370700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370784', '262100', '安丘市', '1', '省市区', '370700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370785', '261500', '高密市', '1', '省市区', '370700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370786', '261300', '昌邑市', '1', '省市区', '370700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370800', '272119', '济宁市', '1', '省市区', '370000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370811', '272113', '任城区', '1', '省市区', '370800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370812', '272000', '兖州区', '1', '省市区', '370800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370826', '277600', '微山县', '1', '省市区', '370800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370827', '272300', '鱼台县', '1', '省市区', '370800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370828', '272200', '金乡县', '1', '省市区', '370800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370829', '272400', '嘉祥县', '1', '省市区', '370800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370830', '272501', '汶上县', '1', '省市区', '370800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370831', '273200', '泗水县', '1', '省市区', '370800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370832', '272600', '梁山县', '1', '省市区', '370800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370881', '273100', '曲阜市', '1', '省市区', '370800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370883', '273500', '邹城市', '1', '省市区', '370800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370900', '271000', '泰安市', '1', '省市区', '370000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370902', '271000', '泰山区', '1', '省市区', '370900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370911', '271000', '岱岳区', '1', '省市区', '370900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370921', '271400', '宁阳县', '1', '省市区', '370900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370923', '271500', '东平县', '1', '省市区', '370900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370982', '271200', '新泰市', '1', '省市区', '370900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('370983', '271600', '肥城市', '1', '省市区', '370900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371000', '264200', '威海市', '1', '省市区', '370000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371002', '264200', '环翠区', '1', '省市区', '371000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371003', '266440', '文登区', '1', '省市区', '371000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371082', '264300', '荣成市', '1', '省市区', '371000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371083', '264500', '乳山市', '1', '省市区', '371000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371100', '276800', '日照市', '1', '省市区', '370000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371102', '276800', '东港区', '1', '省市区', '371100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371103', '276808', '岚山区', '1', '省市区', '371100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371121', '262300', '五莲县', '1', '省市区', '371100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371122', '276500', '莒县', '1', '省市区', '371100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371200', '271100', '莱芜市', '1', '省市区', '370000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371202', '271199', '莱城区', '1', '省市区', '371200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371203', '271100', '钢城区', '1', '省市区', '371200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371300', '253000', '临沂市', '1', '省市区', '370000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371302', '276002', '兰山区', '1', '省市区', '371300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371311', '276022', '罗庄区', '1', '省市区', '371300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371312', '276034', '河东区', '1', '省市区', '371300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371321', '276300', '沂南县', '1', '省市区', '371300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371322', '276100', '郯城县', '1', '省市区', '371300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371323', '276400', '沂水县', '1', '省市区', '371300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371324', '277700', '兰陵县', '1', '省市区', '371300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371325', '273400', '费县', '1', '省市区', '371300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371326', '273300', '平邑县', '1', '省市区', '371300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371327', '276600', '莒南县', '1', '省市区', '371300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371328', '276200', '蒙阴县', '1', '省市区', '371300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371329', '276700', '临沭县', '1', '省市区', '371300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371400', '253000', '德州市', '1', '省市区', '370000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371402', '253012', '德城区', '1', '省市区', '371400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371403', '253500', '陵城区', '1', '省市区', '371400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371422', '253400', '宁津县', '1', '省市区', '371400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371423', '253700', '庆云县', '1', '省市区', '371400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371424', '251500', '临邑县', '1', '省市区', '371400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371425', '251100', '齐河县', '1', '省市区', '371400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371426', '253100', '平原县', '1', '省市区', '371400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371427', '253200', '夏津县', '1', '省市区', '371400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371428', '253300', '武城县', '1', '省市区', '371400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371481', '253600', '乐陵市', '1', '省市区', '371400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371482', '251200', '禹城市', '1', '省市区', '371400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371500', '252052', '聊城市', '1', '省市区', '370000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371502', '252000', '东昌府区', '1', '省市区', '371500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371521', '252300', '阳谷县', '1', '省市区', '371500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371522', '252400', '莘县', '1', '省市区', '371500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371523', '252100', '茌平县', '1', '省市区', '371500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371524', '252200', '东阿县', '1', '省市区', '371500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371525', '252500', '冠县', '1', '省市区', '371500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371526', '252800', '高唐县', '1', '省市区', '371500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371581', '252600', '临清市', '1', '省市区', '371500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371600', '256619', '滨州市', '1', '省市区', '370000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371602', '256613', '滨城区', '1', '省市区', '371600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371603', '256800', '沾化区', '1', '省市区', '371600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371621', '251700', '惠民县', '1', '省市区', '371600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371622', '251800', '阳信县', '1', '省市区', '371600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371623', '251900', '无棣县', '1', '省市区', '371600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371625', '256500', '博兴县', '1', '省市区', '371600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371626', '256200', '邹平县', '1', '省市区', '371600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371627', '256200', '北海新区', '1', '省市区', '371600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371700', '274020', '菏泽市', '1', '省市区', '370000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371702', '274009', '牡丹区', '1', '省市区', '371700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371721', '274400', '曹县', '1', '省市区', '371700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371722', '273700', '单县', '1', '省市区', '371700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371723', '274200', '成武县', '1', '省市区', '371700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371724', '274900', '巨野县', '1', '省市区', '371700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371725', '274700', '郓城县', '1', '省市区', '371700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371726', '274600', '鄄城县', '1', '省市区', '371700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371727', '274100', '定陶县', '1', '省市区', '371700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('371728', '274500', '东明县', '1', '省市区', '371700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('38', '92', '经济型', '9', '车型', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('39', '93', '商务型', '9', '车型', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('4', '4', '自动档', '3', '变速器类型', '0', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('40', '94', '豪华型', '9', '车型', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('41', '95', '商务车', '9', '车型', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('410000', '', '河南省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410100', '450000', '郑州市', '1', '省市区', '410000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410102', '450007', '中原区', '1', '省市区', '410100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410103', '450052', '二七区', '1', '省市区', '410100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410104', '450000', '管城回族区', '1', '省市区', '410100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410105', '450003', '金水区', '1', '省市区', '410100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410106', '450041', '上街区', '1', '省市区', '410100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410108', '450053', '惠济区', '1', '省市区', '410100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410122', '451450', '中牟县', '1', '省市区', '410100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410181', '451200', '巩义市', '1', '省市区', '410100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410182', '450100', '荥阳市', '1', '省市区', '410100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410183', '452300', '新密市', '1', '省市区', '410100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410184', '451100', '新郑市', '1', '省市区', '410100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410185', '452470', '登封市', '1', '省市区', '410100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410200', '475001', '开封市', '1', '省市区', '410000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410202', '475100', '龙亭区', '1', '省市区', '410200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410203', '475000', '顺河回族区', '1', '省市区', '410200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410204', '475000', '鼓楼区', '1', '省市区', '410200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410205', '475003', '禹王台区', '1', '省市区', '410200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410212', '475100', '祥符区', '1', '省市区', '410200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410221', '475200', '杞县', '1', '省市区', '410200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410222', '475400', '通许县', '1', '省市区', '410200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410223', '475500', '尉氏县', '1', '省市区', '410200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410225', '475300', '兰考县', '1', '省市区', '410200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410300', '471000', '洛阳市', '1', '省市区', '410000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410302', '471002', '老城区', '1', '省市区', '410300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410303', '471000', '西工区', '1', '省市区', '410300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410304', '471002', '瀍河回族区', '1', '省市区', '410300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410305', '471003', '涧西区', '1', '省市区', '410300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410306', '471012', '吉利区', '1', '省市区', '410300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410311', '471000', '洛龙区', '1', '省市区', '410300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410322', '471100', '孟津县', '1', '省市区', '410300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410323', '471800', '新安县', '1', '省市区', '410300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410324', '471500', '栾川县', '1', '省市区', '410300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410325', '471400', '嵩县', '1', '省市区', '410300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410326', '471200', '汝阳县', '1', '省市区', '410300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410327', '471600', '宜阳县', '1', '省市区', '410300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410328', '471700', '洛宁县', '1', '省市区', '410300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410329', '471300', '伊川县', '1', '省市区', '410300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410381', '471900', '偃师市', '1', '省市区', '410300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410400', '467000', '平顶山市', '1', '省市区', '410000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410402', '467002', '新华区', '1', '省市区', '410400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410403', '467021', '卫东区', '1', '省市区', '410400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410404', '467045', '石龙区', '1', '省市区', '410400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410411', '467000', '湛河区', '1', '省市区', '410400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410421', '467400', '宝丰县', '1', '省市区', '410400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410422', '467200', '叶县', '1', '省市区', '410400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410423', '467300', '鲁山县', '1', '省市区', '410400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410425', '467100', '郏县', '1', '省市区', '410400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410481', '462500', '舞钢市', '1', '省市区', '410400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410482', '467500', '汝州市', '1', '省市区', '410400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410500', '455000', '安阳市', '1', '省市区', '410000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410502', '455000', '文峰区', '1', '省市区', '410500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410503', '455001', '北关区', '1', '省市区', '410500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410505', '455004', '殷都区', '1', '省市区', '410500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410506', '455001', '龙安区', '1', '省市区', '410500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410522', '455000', '安阳县', '1', '省市区', '410500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410523', '456150', '汤阴县', '1', '省市区', '410500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410526', '456400', '滑县', '1', '省市区', '410500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410527', '456350', '内黄县', '1', '省市区', '410500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410581', '456550', '林州市', '1', '省市区', '410500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410600', '458030', '鹤壁市', '1', '省市区', '410000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410602', '458010', '鹤山区', '1', '省市区', '410600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410603', '458000', '山城区', '1', '省市区', '410600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410611', '458000', '淇滨区', '1', '省市区', '410600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410621', '456250', '浚县', '1', '省市区', '410600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410622', '456750', '淇县', '1', '省市区', '410600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410700', '453000', '新乡市', '1', '省市区', '410000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410702', '453000', '红旗区', '1', '省市区', '410700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410703', '453000', '卫滨区', '1', '省市区', '410700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410704', '453011', '凤泉区', '1', '省市区', '410700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410711', '453002', '牧野区', '1', '省市区', '410700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410721', '453700', '新乡县', '1', '省市区', '410700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410724', '453800', '获嘉县', '1', '省市区', '410700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410725', '453500', '原阳县', '1', '省市区', '410700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410726', '453200', '延津县', '1', '省市区', '410700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410727', '453300', '封丘县', '1', '省市区', '410700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410728', '453400', '长垣县', '1', '省市区', '410700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410781', '453100', '卫辉市', '1', '省市区', '410700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410782', '453600', '辉县市', '1', '省市区', '410700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410800', '454002', '焦作市', '1', '省市区', '410000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410802', '454000', '解放区', '1', '省市区', '410800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410803', '454191', '中站区', '1', '省市区', '410800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410804', '454171', '马村区', '1', '省市区', '410800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410811', '454002', '山阳区', '1', '省市区', '410800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410821', '454350', '修武县', '1', '省市区', '410800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410822', '454450', '博爱县', '1', '省市区', '410800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410823', '454950', '武陟县', '1', '省市区', '410800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410825', '454850', '温县', '1', '省市区', '410800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410882', '454550', '沁阳市', '1', '省市区', '410800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410883', '454750', '孟州市', '1', '省市区', '410800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410900', '457000', '濮阳市', '1', '省市区', '410000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410902', '457001', '华龙区', '1', '省市区', '410900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410922', '457300', '清丰县', '1', '省市区', '410900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410923', '457400', '南乐县', '1', '省市区', '410900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410926', '457500', '范县', '1', '省市区', '410900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410927', '457600', '台前县', '1', '省市区', '410900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('410928', '457100', '濮阳县', '1', '省市区', '410900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411000', '461000', '许昌市', '1', '省市区', '410000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411002', '461000', '魏都区', '1', '省市区', '411000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411023', '461100', '许昌县', '1', '省市区', '411000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411024', '461200', '鄢陵县', '1', '省市区', '411000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411025', '461700', '襄城县', '1', '省市区', '411000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411081', '461670', '禹州市', '1', '省市区', '411000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411082', '461500', '长葛市', '1', '省市区', '411000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411100', '462000', '漯河市', '1', '省市区', '410000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411102', '462000', '源汇区', '1', '省市区', '411100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411103', '462300', '郾城区', '1', '省市区', '411100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411104', '462300', '召陵区', '1', '省市区', '411100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411121', '462400', '舞阳县', '1', '省市区', '411100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411122', '462600', '临颍县', '1', '省市区', '411100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411200', '472000', '三门峡市', '1', '省市区', '410000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411202', '472000', '湖滨区', '1', '省市区', '411200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411221', '472400', '渑池县', '1', '省市区', '411200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411222', '472100', '陕县', '1', '省市区', '411200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411224', '472200', '卢氏县', '1', '省市区', '411200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411281', '472300', '义马市', '1', '省市区', '411200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411282', '472500', '灵宝市', '1', '省市区', '411200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411300', '473002', '南阳市', '1', '省市区', '410000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411302', '473001', '宛城区', '1', '省市区', '411300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411303', '473003', '卧龙区', '1', '省市区', '411300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411321', '474650', '南召县', '1', '省市区', '411300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411322', '473200', '方城县', '1', '省市区', '411300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411323', '474550', '西峡县', '1', '省市区', '411300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411324', '474250', '镇平县', '1', '省市区', '411300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411325', '474350', '内乡县', '1', '省市区', '411300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411326', '474450', '淅川县', '1', '省市区', '411300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411327', '473300', '社旗县', '1', '省市区', '411300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411328', '473400', '唐河县', '1', '省市区', '411300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411329', '473500', '新野县', '1', '省市区', '411300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411330', '474750', '桐柏县', '1', '省市区', '411300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411381', '474150', '邓州市', '1', '省市区', '411300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411400', '476000', '商丘市', '1', '省市区', '410000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411402', '476000', '梁园区', '1', '省市区', '411400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411403', '476100', '睢阳区', '1', '省市区', '411400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411421', '476800', '民权县', '1', '省市区', '411400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411422', '476900', '睢县', '1', '省市区', '411400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411423', '476700', '宁陵县', '1', '省市区', '411400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411424', '476200', '柘城县', '1', '省市区', '411400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411425', '476300', '虞城县', '1', '省市区', '411400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411426', '476400', '夏邑县', '1', '省市区', '411400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411481', '476600', '永城市', '1', '省市区', '411400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411500', '464000', '信阳市', '1', '省市区', '410000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411502', '464000', '浉河区', '1', '省市区', '411500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411503', '464100', '平桥区', '1', '省市区', '411500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411521', '464200', '罗山县', '1', '省市区', '411500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411522', '465450', '光山县', '1', '省市区', '411500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411523', '465550', '新县', '1', '省市区', '411500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411524', '465350', '商城县', '1', '省市区', '411500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411525', '465250', '固始县', '1', '省市区', '411500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411526', '465150', '潢川县', '1', '省市区', '411500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411527', '464400', '淮滨县', '1', '省市区', '411500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411528', '464300', '息县', '1', '省市区', '411500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411600', '466000', '周口市', '1', '省市区', '410000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411602', '466000', '川汇区', '1', '省市区', '411600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411621', '461300', '扶沟县', '1', '省市区', '411600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411622', '466600', '西华县', '1', '省市区', '411600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411623', '466100', '商水县', '1', '省市区', '411600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411624', '466300', '沈丘县', '1', '省市区', '411600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411625', '477150', '郸城县', '1', '省市区', '411600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411626', '466700', '淮阳县', '1', '省市区', '411600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411627', '461400', '太康县', '1', '省市区', '411600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411628', '477200', '鹿邑县', '1', '省市区', '411600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411681', '466200', '项城市', '1', '省市区', '411600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411700', '463000', '驻马店市', '1', '省市区', '410000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411702', '463000', '驿城区', '1', '省市区', '411700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411721', '463900', '西平县', '1', '省市区', '411700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411722', '463800', '上蔡县', '1', '省市区', '411700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411723', '463400', '平舆县', '1', '省市区', '411700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411724', '463600', '正阳县', '1', '省市区', '411700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411725', '463200', '确山县', '1', '省市区', '411700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411726', '463700', '泌阳县', '1', '省市区', '411700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411727', '463300', '汝南县', '1', '省市区', '411700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411728', '463100', '遂平县', '1', '省市区', '411700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('411729', '463500', '新蔡县', '1', '省市区', '411700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('419000', '', '直辖县级', '1', '省市区', '410000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('419001', '454650', '济源市', '1', '省市区', '419000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('42', '96', '电动车', '9', '车型', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('420000', '', '湖北省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420100', '430014', '武汉市', '1', '省市区', '420000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420102', '430014', '江岸区', '1', '省市区', '420100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420103', '430021', '江汉区', '1', '省市区', '420100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420104', '430033', '硚口区', '1', '省市区', '420100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420105', '430050', '汉阳区', '1', '省市区', '420100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420106', '430061', '武昌区', '1', '省市区', '420100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420107', '430080', '青山区', '1', '省市区', '420100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420111', '430070', '洪山区', '1', '省市区', '420100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420112', '430040', '东西湖区', '1', '省市区', '420100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420113', '430090', '汉南区', '1', '省市区', '420100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420114', '430100', '蔡甸区', '1', '省市区', '420100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420115', '430200', '江夏区', '1', '省市区', '420100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420116', '432200', '黄陂区', '1', '省市区', '420100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420117', '431400', '新洲区', '1', '省市区', '420100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420200', '435003', '黄石市', '1', '省市区', '420000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420202', '435000', '黄石港区', '1', '省市区', '420200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420203', '435001', '西塞山区', '1', '省市区', '420200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420204', '435005', '下陆区', '1', '省市区', '420200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420205', '435006', '铁山区', '1', '省市区', '420200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420222', '435200', '阳新县', '1', '省市区', '420200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420281', '435100', '大冶市', '1', '省市区', '420200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420300', '442000', '十堰市', '1', '省市区', '420000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420302', '442012', '茅箭区', '1', '省市区', '420300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420303', '442001', '张湾区', '1', '省市区', '420300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420304', '442500', '郧阳区', '1', '省市区', '420300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420322', '442600', '郧西县', '1', '省市区', '420300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420323', '442200', '竹山县', '1', '省市区', '420300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420324', '442300', '竹溪县', '1', '省市区', '420300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420325', '442100', '房县', '1', '省市区', '420300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420381', '442700', '丹江口市', '1', '省市区', '420300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420500', '443000', '宜昌市', '1', '省市区', '420000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420502', '443000', '西陵区', '1', '省市区', '420500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420503', '443001', '伍家岗区', '1', '省市区', '420500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420504', '443006', '点军区', '1', '省市区', '420500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420505', '443007', '猇亭区', '1', '省市区', '420500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420506', '443100', '夷陵区', '1', '省市区', '420500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420525', '444200', '远安县', '1', '省市区', '420500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420526', '443711', '兴山县', '1', '省市区', '420500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420527', '443600', '秭归县', '1', '省市区', '420500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420528', '443500', '长阳土家族自治县', '1', '省市区', '420500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420529', '443413', '五峰土家族自治县', '1', '省市区', '420500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420581', '443300', '宜都市', '1', '省市区', '420500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420582', '444100', '当阳市', '1', '省市区', '420500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420583', '443200', '枝江市', '1', '省市区', '420500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420600', '441021', '襄阳市', '1', '省市区', '420000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420602', '441021', '襄城区', '1', '省市区', '420600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420606', '441001', '樊城区', '1', '省市区', '420600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420607', '441100', '襄州区', '1', '省市区', '420600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420624', '441500', '南漳县', '1', '省市区', '420600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420625', '441700', '谷城县', '1', '省市区', '420600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420626', '441600', '保康县', '1', '省市区', '420600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420682', '441800', '老河口市', '1', '省市区', '420600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420683', '441200', '枣阳市', '1', '省市区', '420600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420684', '441400', '宜城市', '1', '省市区', '420600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420700', '436000', '鄂州市', '1', '省市区', '420000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420702', '436064', '梁子湖区', '1', '省市区', '420700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420703', '436030', '华容区', '1', '省市区', '420700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420704', '436000', '鄂城区', '1', '省市区', '420700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420800', '448000', '荆门市', '1', '省市区', '420000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420802', '448004', '东宝区', '1', '省市区', '420800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420804', '448124', '掇刀区', '1', '省市区', '420800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420821', '431800', '京山县', '1', '省市区', '420800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420822', '448200', '沙洋县', '1', '省市区', '420800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420881', '431900', '钟祥市', '1', '省市区', '420800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420900', '432100', '孝感市', '1', '省市区', '420000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420902', '432100', '孝南区', '1', '省市区', '420900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420921', '432900', '孝昌县', '1', '省市区', '420900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420922', '432800', '大悟县', '1', '省市区', '420900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420923', '432500', '云梦县', '1', '省市区', '420900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420981', '432400', '应城市', '1', '省市区', '420900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420982', '432600', '安陆市', '1', '省市区', '420900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('420984', '432300', '汉川市', '1', '省市区', '420900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421000', '434000', '荆州市', '1', '省市区', '420000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421002', '434000', '沙市区', '1', '省市区', '421000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421003', '434020', '荆州区', '1', '省市区', '421000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421022', '434300', '公安县', '1', '省市区', '421000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421023', '433300', '监利县', '1', '省市区', '421000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421024', '434101', '江陵县', '1', '省市区', '421000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421081', '434400', '石首市', '1', '省市区', '421000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421083', '433200', '洪湖市', '1', '省市区', '421000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421087', '434200', '松滋市', '1', '省市区', '421000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421100', '438000', '黄冈市', '1', '省市区', '420000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421102', '438000', '黄州区', '1', '省市区', '421100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421121', '438800', '团风县', '1', '省市区', '421100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421122', '438401', '红安县', '1', '省市区', '421100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421123', '438600', '罗田县', '1', '省市区', '421100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421124', '438700', '英山县', '1', '省市区', '421100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421125', '438200', '浠水县', '1', '省市区', '421100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421126', '435300', '蕲春县', '1', '省市区', '421100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421127', '435500', '黄梅县', '1', '省市区', '421100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421181', '438300', '麻城市', '1', '省市区', '421100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421182', '435400', '武穴市', '1', '省市区', '421100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421200', '437000', '咸宁市', '1', '省市区', '420000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421202', '437000', '咸安区', '1', '省市区', '421200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421221', '437200', '嘉鱼县', '1', '省市区', '421200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421222', '437400', '通城县', '1', '省市区', '421200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421223', '437500', '崇阳县', '1', '省市区', '421200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421224', '437600', '通山县', '1', '省市区', '421200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421281', '437300', '赤壁市', '1', '省市区', '421200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421300', '441300', '随州市', '1', '省市区', '420000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421303', '441300', '曾都区', '1', '省市区', '421300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421321', '441309', '随县', '1', '省市区', '421300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('421381', '432700', '广水市', '1', '省市区', '421300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('422800', '445000', '恩施土家族苗族自治州', '1', '省市区', '420000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('422801', '445000', '恩施市', '1', '省市区', '422800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('422802', '445400', '利川市', '1', '省市区', '422800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('422822', '445300', '建始县', '1', '省市区', '422800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('422823', '444300', '巴东县', '1', '省市区', '422800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('422825', '445500', '宣恩县', '1', '省市区', '422800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('422826', '445600', '咸丰县', '1', '省市区', '422800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('422827', '445700', '来凤县', '1', '省市区', '422800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('422828', '445800', '鹤峰县', '1', '省市区', '422800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('429000', '', '直辖县级', '1', '省市区', '420000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('429004', '433000', '仙桃市', '1', '省市区', '429000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('429005', '433100', '潜江市', '1', '省市区', '429000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('429006', '431700', '天门市', '1', '省市区', '429000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('429021', '442400', '神农架林区', '1', '省市区', '429000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('43', '97', '个性车', '9', '车型', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('430000', '', '湖南省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430100', '410005', '长沙市', '1', '省市区', '430000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430102', '410011', '芙蓉区', '1', '省市区', '430100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430103', '410004', '天心区', '1', '省市区', '430100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430104', '410013', '岳麓区', '1', '省市区', '430100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430105', '410008', '开福区', '1', '省市区', '430100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430111', '410011', '雨花区', '1', '省市区', '430100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430112', '410200', '望城区', '1', '省市区', '430100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430121', '410100', '长沙县', '1', '省市区', '430100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430124', '410600', '宁乡县', '1', '省市区', '430100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430181', '410300', '浏阳市', '1', '省市区', '430100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430200', '412000', '株洲市', '1', '省市区', '430000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430202', '412000', '荷塘区', '1', '省市区', '430200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430203', '412000', '芦淞区', '1', '省市区', '430200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430204', '412005', '石峰区', '1', '省市区', '430200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430211', '412007', '天元区', '1', '省市区', '430200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430221', '412100', '株洲县', '1', '省市区', '430200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430223', '412300', '攸县', '1', '省市区', '430200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430224', '412400', '茶陵县', '1', '省市区', '430200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430225', '412500', '炎陵县', '1', '省市区', '430200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430281', '412200', '醴陵市', '1', '省市区', '430200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430300', '411100', '湘潭市', '1', '省市区', '430000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430302', '411100', '雨湖区', '1', '省市区', '430300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430304', '411101', '岳塘区', '1', '省市区', '430300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430321', '411228', '湘潭县', '1', '省市区', '430300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430381', '411400', '湘乡市', '1', '省市区', '430300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430382', '411300', '韶山市', '1', '省市区', '430300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430400', '421001', '衡阳市', '1', '省市区', '430000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430405', '421002', '珠晖区', '1', '省市区', '430400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430406', '421001', '雁峰区', '1', '省市区', '430400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430407', '421005', '石鼓区', '1', '省市区', '430400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430408', '421001', '蒸湘区', '1', '省市区', '430400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430412', '421900', '南岳区', '1', '省市区', '430400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430421', '421200', '衡阳县', '1', '省市区', '430400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430422', '421131', '衡南县', '1', '省市区', '430400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430423', '421300', '衡山县', '1', '省市区', '430400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430424', '421400', '衡东县', '1', '省市区', '430400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430426', '421600', '祁东县', '1', '省市区', '430400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430481', '421800', '耒阳市', '1', '省市区', '430400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430482', '421500', '常宁市', '1', '省市区', '430400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430500', '422000', '邵阳市', '1', '省市区', '430000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430502', '422001', '双清区', '1', '省市区', '430500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430503', '422000', '大祥区', '1', '省市区', '430500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430511', '422007', '北塔区', '1', '省市区', '430500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430521', '422800', '邵东县', '1', '省市区', '430500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430522', '422900', '新邵县', '1', '省市区', '430500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430523', '422100', '邵阳县', '1', '省市区', '430500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430524', '422200', '隆回县', '1', '省市区', '430500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430525', '422300', '洞口县', '1', '省市区', '430500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430527', '422600', '绥宁县', '1', '省市区', '430500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430528', '422700', '新宁县', '1', '省市区', '430500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430529', '422500', '城步苗族自治县', '1', '省市区', '430500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430581', '422400', '武冈市', '1', '省市区', '430500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430600', '414000', '岳阳市', '1', '省市区', '430000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430602', '414000', '岳阳楼区', '1', '省市区', '430600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430603', '414009', '云溪区', '1', '省市区', '430600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430611', '414005', '君山区', '1', '省市区', '430600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430621', '414100', '岳阳县', '1', '省市区', '430600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430623', '414200', '华容县', '1', '省市区', '430600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430624', '414600', '湘阴县', '1', '省市区', '430600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430626', '414500', '平江县', '1', '省市区', '430600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430681', '414400', '汨罗市', '1', '省市区', '430600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430682', '414300', '临湘市', '1', '省市区', '430600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430700', '415000', '常德市', '1', '省市区', '430000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430702', '415000', '武陵区', '1', '省市区', '430700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430703', '415101', '鼎城区', '1', '省市区', '430700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430721', '415600', '安乡县', '1', '省市区', '430700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430722', '415900', '汉寿县', '1', '省市区', '430700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430723', '415500', '澧县', '1', '省市区', '430700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430724', '415200', '临澧县', '1', '省市区', '430700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430725', '415700', '桃源县', '1', '省市区', '430700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430726', '415300', '石门县', '1', '省市区', '430700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430781', '415400', '津市市', '1', '省市区', '430700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430800', '427000', '张家界市', '1', '省市区', '430000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430802', '427000', '永定区', '1', '省市区', '430800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430811', '427400', '武陵源区', '1', '省市区', '430800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430821', '427200', '慈利县', '1', '省市区', '430800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430822', '427100', '桑植县', '1', '省市区', '430800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430900', '413000', '益阳市', '1', '省市区', '430000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430902', '413001', '资阳区', '1', '省市区', '430900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430903', '413002', '赫山区', '1', '省市区', '430900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430921', '413200', '南县', '1', '省市区', '430900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430922', '413400', '桃江县', '1', '省市区', '430900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430923', '413500', '安化县', '1', '省市区', '430900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('430981', '413100', '沅江市', '1', '省市区', '430900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431000', '423000', '郴州市', '1', '省市区', '430000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431002', '423000', '北湖区', '1', '省市区', '431000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431003', '423000', '苏仙区', '1', '省市区', '431000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431021', '424400', '桂阳县', '1', '省市区', '431000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431022', '424200', '宜章县', '1', '省市区', '431000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431023', '423300', '永兴县', '1', '省市区', '431000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431024', '424500', '嘉禾县', '1', '省市区', '431000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431025', '424300', '临武县', '1', '省市区', '431000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431026', '424100', '汝城县', '1', '省市区', '431000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431027', '423500', '桂东县', '1', '省市区', '431000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431028', '423600', '安仁县', '1', '省市区', '431000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431081', '423400', '资兴市', '1', '省市区', '431000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431100', '425000', '永州市', '1', '省市区', '430000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431102', '425100', '零陵区', '1', '省市区', '431100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431103', '425100', '冷水滩区', '1', '省市区', '431100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431121', '426100', '祁阳县', '1', '省市区', '431100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431122', '425900', '东安县', '1', '省市区', '431100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431123', '425200', '双牌县', '1', '省市区', '431100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431124', '425300', '道县', '1', '省市区', '431100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431125', '425400', '江永县', '1', '省市区', '431100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431126', '425600', '宁远县', '1', '省市区', '431100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431127', '425800', '蓝山县', '1', '省市区', '431100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431128', '425700', '新田县', '1', '省市区', '431100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431129', '425500', '江华瑶族自治县', '1', '省市区', '431100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431200', '418000', '怀化市', '1', '省市区', '430000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431202', '418000', '鹤城区', '1', '省市区', '431200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431221', '418005', '中方县', '1', '省市区', '431200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431222', '419600', '沅陵县', '1', '省市区', '431200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431223', '419500', '辰溪县', '1', '省市区', '431200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431224', '419300', '溆浦县', '1', '省市区', '431200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431225', '418300', '会同县', '1', '省市区', '431200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431226', '419400', '麻阳苗族自治县', '1', '省市区', '431200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431227', '419200', '新晃侗族自治县', '1', '省市区', '431200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431228', '419100', '芷江侗族自治县', '1', '省市区', '431200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431229', '418400', '靖州苗族侗族自治县', '1', '省市区', '431200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431230', '418500', '通道侗族自治县', '1', '省市区', '431200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431281', '418100', '洪江市', '1', '省市区', '431200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431300', '417000', '娄底市', '1', '省市区', '430000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431302', '417000', '娄星区', '1', '省市区', '431300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431321', '417700', '双峰县', '1', '省市区', '431300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431322', '417600', '新化县', '1', '省市区', '431300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431381', '417500', '冷水江市', '1', '省市区', '431300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('431382', '417100', '涟源市', '1', '省市区', '431300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('433100', '416000', '湘西土家族苗族自治州', '1', '省市区', '430000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('433101', '416000', '吉首市', '1', '省市区', '433100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('433122', '416100', '泸溪县', '1', '省市区', '433100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('433123', '416200', '凤凰县', '1', '省市区', '433100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('433124', '416400', '花垣县', '1', '省市区', '433100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('433125', '416500', '保靖县', '1', '省市区', '433100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('433126', '416300', '古丈县', '1', '省市区', '433100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('433127', '416700', '永顺县', '1', '省市区', '433100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('433130', '416800', '龙山县', '1', '省市区', '433100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('44', '1001', '汽油', '10', '燃料类型', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('440000', '', '广东省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440100', '510032', '广州市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440103', '510170', '荔湾区', '1', '省市区', '440100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440104', '510030', '越秀区', '1', '省市区', '440100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440105', '510300', '海珠区', '1', '省市区', '440100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440106', '510665', '天河区', '1', '省市区', '440100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440111', '510405', '白云区', '1', '省市区', '440100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440112', '510700', '黄埔区', '1', '省市区', '440100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440113', '511400', '番禺区', '1', '省市区', '440100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440114', '510800', '花都区', '1', '省市区', '440100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440115', '511458', '南沙区', '1', '省市区', '440100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440117', '510900', '从化区', '1', '省市区', '440100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440118', '511300', '增城区', '1', '省市区', '440100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440200', '512002', '韶关市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440203', '512026', '武江区', '1', '省市区', '440200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440204', '512023', '浈江区', '1', '省市区', '440200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440205', '512101', '曲江区', '1', '省市区', '440200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440222', '512500', '始兴县', '1', '省市区', '440200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440224', '512300', '仁化县', '1', '省市区', '440200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440229', '512600', '翁源县', '1', '省市区', '440200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440232', '512700', '乳源瑶族自治县', '1', '省市区', '440200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440233', '511100', '新丰县', '1', '省市区', '440200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440281', '512200', '乐昌市', '1', '省市区', '440200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440282', '512400', '南雄市', '1', '省市区', '440200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440300', '518035', '深圳市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440303', '518021', '罗湖区', '1', '省市区', '440300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440304', '518048', '福田区', '1', '省市区', '440300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440305', '518051', '南山区', '1', '省市区', '440300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440306', '518101', '宝安区', '1', '省市区', '440300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440307', '518172', '龙岗区', '1', '省市区', '440300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440308', '518081', '盐田区', '1', '省市区', '440300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440309', '518100', '光明新区', '1', '省市区', '440300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440310', '518000', '坪山新区', '1', '省市区', '440300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440311', '518000', '大鹏新区', '1', '省市区', '440300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440312', '518100', '龙华新区', '1', '省市区', '440300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440400', '519000', '珠海市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440402', '519000', '香洲区', '1', '省市区', '440400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440403', '519110', '斗门区', '1', '省市区', '440400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440404', '519040', '金湾区', '1', '省市区', '440400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440500', '515041', '汕头市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440507', '515041', '龙湖区', '1', '省市区', '440500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440511', '515041', '金平区', '1', '省市区', '440500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440512', '515071', '濠江区', '1', '省市区', '440500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440513', '515100', '潮阳区', '1', '省市区', '440500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440514', '515144', '潮南区', '1', '省市区', '440500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440515', '515800', '澄海区', '1', '省市区', '440500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440523', '515900', '南澳县', '1', '省市区', '440500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440600', '528000', '佛山市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440604', '528000', '禅城区', '1', '省市区', '440600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440605', '528251', '南海区', '1', '省市区', '440600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440606', '528300', '顺德区', '1', '省市区', '440600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440607', '528133', '三水区', '1', '省市区', '440600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440608', '528500', '高明区', '1', '省市区', '440600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440700', '529000', '江门市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440703', '529000', '蓬江区', '1', '省市区', '440700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440704', '529040', '江海区', '1', '省市区', '440700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440705', '529100', '新会区', '1', '省市区', '440700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440781', '529200', '台山市', '1', '省市区', '440700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440783', '529337', '开平市', '1', '省市区', '440700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440784', '529700', '鹤山市', '1', '省市区', '440700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440785', '529400', '恩平市', '1', '省市区', '440700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440800', '524047', '湛江市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440802', '524033', '赤坎区', '1', '省市区', '440800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440803', '524011', '霞山区', '1', '省市区', '440800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440804', '524057', '坡头区', '1', '省市区', '440800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440811', '524094', '麻章区', '1', '省市区', '440800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440823', '524300', '遂溪县', '1', '省市区', '440800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440825', '524100', '徐闻县', '1', '省市区', '440800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440881', '524400', '廉江市', '1', '省市区', '440800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440882', '524200', '雷州市', '1', '省市区', '440800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440883', '524500', '吴川市', '1', '省市区', '440800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440900', '525000', '茂名市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440902', '525000', '茂南区', '1', '省市区', '440900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440904', '525400', '电白区', '1', '省市区', '440900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440981', '525200', '高州市', '1', '省市区', '440900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440982', '525100', '化州市', '1', '省市区', '440900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('440983', '525300', '信宜市', '1', '省市区', '440900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441200', '526040', '肇庆市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441202', '526060', '端州区', '1', '省市区', '441200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441203', '526070', '鼎湖区', '1', '省市区', '441200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441223', '526300', '广宁县', '1', '省市区', '441200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441224', '526400', '怀集县', '1', '省市区', '441200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441225', '526500', '封开县', '1', '省市区', '441200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441226', '526600', '德庆县', '1', '省市区', '441200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441283', '526100', '高要市', '1', '省市区', '441200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441284', '526200', '四会市', '1', '省市区', '441200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441300', '516000', '惠州市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441302', '516008', '惠城区', '1', '省市区', '441300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441303', '516211', '惠阳区', '1', '省市区', '441300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441322', '516100', '博罗县', '1', '省市区', '441300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441323', '516300', '惠东县', '1', '省市区', '441300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441324', '516800', '龙门县', '1', '省市区', '441300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441400', '514021', '梅州市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441402', '514000', '梅江区', '1', '省市区', '441400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441403', '514787', '梅县区', '1', '省市区', '441400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441422', '514200', '大埔县', '1', '省市区', '441400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441423', '514300', '丰顺县', '1', '省市区', '441400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441424', '514400', '五华县', '1', '省市区', '441400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441426', '514600', '平远县', '1', '省市区', '441400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441427', '514100', '蕉岭县', '1', '省市区', '441400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441481', '514500', '兴宁市', '1', '省市区', '441400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441500', '516600', '汕尾市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441502', '516600', '城区', '1', '省市区', '441500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441521', '516400', '海丰县', '1', '省市区', '441500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441523', '516700', '陆河县', '1', '省市区', '441500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441581', '516500', '陆丰市', '1', '省市区', '441500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441600', '517000', '河源市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441602', '517000', '源城区', '1', '省市区', '441600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441621', '517400', '紫金县', '1', '省市区', '441600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441622', '517300', '龙川县', '1', '省市区', '441600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441623', '517100', '连平县', '1', '省市区', '441600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441624', '517200', '和平县', '1', '省市区', '441600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441625', '517583', '东源县', '1', '省市区', '441600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441700', '529500', '阳江市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441702', '529500', '江城区', '1', '省市区', '441700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441704', '529900', '阳东区', '1', '省市区', '441700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441721', '529800', '阳西县', '1', '省市区', '441700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441781', '529600', '阳春市', '1', '省市区', '441700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441800', '511500', '清远市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441802', '511515', '清城区', '1', '省市区', '441800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441803', '511810', '清新区', '1', '省市区', '441800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441821', '511600', '佛冈县', '1', '省市区', '441800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441823', '513100', '阳山县', '1', '省市区', '441800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441825', '513200', '连山壮族瑶族自治县', '1', '省市区', '441800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441826', '513300', '连南瑶族自治县', '1', '省市区', '441800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441881', '513000', '英德市', '1', '省市区', '441800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441882', '513400', '连州市', '1', '省市区', '441800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441900', '523888', '东莞市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441901', '523128', '莞城区', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441902', '523617', '南城区', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441904', '523039', '万江区', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441905', '523290', '石碣镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441906', '523326', '石龙镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441907', '523380', '茶山镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441908', '523346', '石排镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441909', '523507', '企石镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441910', '523471', '横沥镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441911', '523520', '桥头镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441912', '523592', '谢岗镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441913', '523451', '东坑镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441914', '523560', '常平镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441915', '523411', '寮步镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441916', '523770', '大朗镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441917', '523143', '麻涌镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441918', '523233', '中堂镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441919', '523282', '高埗镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441920', '523619', '樟木头镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441921', '523835', '大岭山镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441922', '523203', '望牛墩镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441923', '523755', '黄江镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441924', '523163', '洪梅镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441925', '523660', '清溪镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441926', '523988', '沙田镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441927', '523171', '道滘镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441928', '523713', '塘厦镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441929', '523932', '虎门镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441930', '523960', '厚街镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441931', '523690', '凤岗镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('441932', '523850', '长安镇', '1', '省市区', '441900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442000', '528403', '中山市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442001', '528400', '石岐区', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442004', '528400', '南区', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442005', '528458', '五桂山区', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442006', '528437', '火炬开发区', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442007', '528429', '黄圃镇', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442008', '528421', '南头镇', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442009', '528425', '东凤镇', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442010', '528434', '阜沙镇', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442011', '528415', '小榄镇', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442012', '528400', '东升镇', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442013', '528422', '古镇镇', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442014', '528478', '横栏镇', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442015', '528422', '三角镇', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442016', '528441', '民众镇', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442017', '528454', '南朗镇', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442018', '528447', '港口镇', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442019', '528476', '大涌镇', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442020', '528471', '沙溪镇', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442021', '528463', '三乡镇', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442022', '528459', '板芙镇', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442023', '528462', '神湾镇', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('442024', '528467', '坦洲镇', '1', '省市区', '442000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('445100', '521000', '潮州市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('445102', '521000', '湘桥区', '1', '省市区', '445100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('445103', '515638', '潮安区', '1', '省市区', '445100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('445122', '515700', '饶平县', '1', '省市区', '445100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('445200', '522000', '揭阳市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('445202', '522000', '榕城区', '1', '省市区', '445200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('445203', '515500', '揭东区', '1', '省市区', '445200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('445222', '515400', '揭西县', '1', '省市区', '445200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('445224', '515200', '惠来县', '1', '省市区', '445200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('445281', '515300', '普宁市', '1', '省市区', '445200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('445300', '527300', '云浮市', '1', '省市区', '440000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('445302', '527300', '云城区', '1', '省市区', '445300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('445303', '527500', '云安区', '1', '省市区', '445300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('445321', '527400', '新兴县', '1', '省市区', '445300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('445322', '527100', '郁南县', '1', '省市区', '445300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('445381', '527200', '罗定市', '1', '省市区', '445300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('45', '1002', '柴油', '10', '燃料类型', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('450000', '', '广西壮族自治区', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450100', '530028', '南宁市', '1', '省市区', '450000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450102', '530023', '兴宁区', '1', '省市区', '450100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450103', '530213', '青秀区', '1', '省市区', '450100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450105', '530031', '江南区', '1', '省市区', '450100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450107', '530001', '西乡塘区', '1', '省市区', '450100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450108', '530219', '良庆区', '1', '省市区', '450100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450109', '530200', '邕宁区', '1', '省市区', '450100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450122', '530100', '武鸣县', '1', '省市区', '450100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450123', '532700', '隆安县', '1', '省市区', '450100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450124', '530600', '马山县', '1', '省市区', '450100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450125', '530500', '上林县', '1', '省市区', '450100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450126', '530400', '宾阳县', '1', '省市区', '450100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450127', '530300', '横县', '1', '省市区', '450100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450128', '530000', '埌东新区', '1', '省市区', '450100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450200', '545001', '柳州市', '1', '省市区', '450000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450202', '545001', '城中区', '1', '省市区', '450200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450203', '545005', '鱼峰区', '1', '省市区', '450200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450204', '545007', '柳南区', '1', '省市区', '450200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450205', '545002', '柳北区', '1', '省市区', '450200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450221', '545100', '柳江县', '1', '省市区', '450200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450222', '545200', '柳城县', '1', '省市区', '450200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450223', '545600', '鹿寨县', '1', '省市区', '450200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450224', '545400', '融安县', '1', '省市区', '450200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450225', '545300', '融水苗族自治县', '1', '省市区', '450200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450226', '545500', '三江侗族自治县', '1', '省市区', '450200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450227', '545000', '柳东新区', '1', '省市区', '450200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450300', '541100', '桂林市', '1', '省市区', '450000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450302', '541001', '秀峰区', '1', '省市区', '450300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450303', '541001', '叠彩区', '1', '省市区', '450300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450304', '541002', '象山区', '1', '省市区', '450300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450305', '541004', '七星区', '1', '省市区', '450300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450311', '541006', '雁山区', '1', '省市区', '450300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450312', '541100', '临桂区', '1', '省市区', '450300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450321', '541900', '阳朔县', '1', '省市区', '450300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450323', '541200', '灵川县', '1', '省市区', '450300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450324', '541503', '全州县', '1', '省市区', '450300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450325', '541300', '兴安县', '1', '省市区', '450300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450326', '541800', '永福县', '1', '省市区', '450300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450327', '541600', '灌阳县', '1', '省市区', '450300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450328', '541700', '龙胜各族自治县', '1', '省市区', '450300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450329', '541400', '资源县', '1', '省市区', '450300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450330', '542400', '平乐县', '1', '省市区', '450300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450331', '546600', '荔浦县', '1', '省市区', '450300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450332', '542500', '恭城瑶族自治县', '1', '省市区', '450300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450400', '543002', '梧州市', '1', '省市区', '450000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450403', '543000', '万秀区', '1', '省市区', '450400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450405', '543003', '长洲区', '1', '省市区', '450400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450406', '543002', '龙圩区', '1', '省市区', '450400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450421', '543100', '苍梧县', '1', '省市区', '450400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450422', '543300', '藤县', '1', '省市区', '450400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450423', '546700', '蒙山县', '1', '省市区', '450400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450481', '543200', '岑溪市', '1', '省市区', '450400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450500', '536000', '北海市', '1', '省市区', '450000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450502', '536000', '海城区', '1', '省市区', '450500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450503', '536000', '银海区', '1', '省市区', '450500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450512', '536017', '铁山港区', '1', '省市区', '450500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450521', '536100', '合浦县', '1', '省市区', '450500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450600', '538001', '防城港市', '1', '省市区', '450000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450602', '538001', '港口区', '1', '省市区', '450600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450603', '538021', '防城区', '1', '省市区', '450600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450621', '535500', '上思县', '1', '省市区', '450600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450681', '538100', '东兴市', '1', '省市区', '450600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450700', '535099', '钦州市', '1', '省市区', '450000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450702', '535099', '钦南区', '1', '省市区', '450700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450703', '535099', '钦北区', '1', '省市区', '450700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450721', '535099', '灵山县', '1', '省市区', '450700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450722', '535099', '浦北县', '1', '省市区', '450700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450800', '537100', '贵港市', '1', '省市区', '450000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450802', '537100', '港北区', '1', '省市区', '450800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450803', '537100', '港南区', '1', '省市区', '450800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450804', '537121', '覃塘区', '1', '省市区', '450800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450821', '537300', '平南县', '1', '省市区', '450800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450881', '537200', '桂平市', '1', '省市区', '450800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450900', '537000', '玉林市', '1', '省市区', '450000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450902', '537000', '玉州区', '1', '省市区', '450900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450903', '537023', '福绵区', '1', '省市区', '450900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450904', '537000', '玉东新区', '1', '省市区', '450900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450921', '537500', '容县', '1', '省市区', '450900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450922', '537700', '陆川县', '1', '省市区', '450900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450923', '537600', '博白县', '1', '省市区', '450900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450924', '537800', '兴业县', '1', '省市区', '450900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('450981', '537400', '北流市', '1', '省市区', '450900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451000', '533000', '百色市', '1', '省市区', '450000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451002', '533000', '右江区', '1', '省市区', '451000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451021', '533600', '田阳县', '1', '省市区', '451000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451022', '531500', '田东县', '1', '省市区', '451000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451023', '531400', '平果县', '1', '省市区', '451000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451024', '533700', '德保县', '1', '省市区', '451000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451025', '533800', '靖西县', '1', '省市区', '451000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451026', '533900', '那坡县', '1', '省市区', '451000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451027', '533100', '凌云县', '1', '省市区', '451000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451028', '533200', '乐业县', '1', '省市区', '451000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451029', '533300', '田林县', '1', '省市区', '451000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451030', '533500', '西林县', '1', '省市区', '451000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451031', '533400', '隆林各族自治县', '1', '省市区', '451000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451100', '542800', '贺州市', '1', '省市区', '450000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451102', '542800', '八步区', '1', '省市区', '451100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451121', '546800', '昭平县', '1', '省市区', '451100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451122', '542600', '钟山县', '1', '省市区', '451100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451123', '542700', '富川瑶族自治县', '1', '省市区', '451100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451124', '542800', '平桂管理区', '1', '省市区', '451100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451200', '547000', '河池市', '1', '省市区', '450000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451202', '547000', '金城江区', '1', '省市区', '451200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451221', '547200', '南丹县', '1', '省市区', '451200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451222', '547300', '天峨县', '1', '省市区', '451200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451223', '547600', '凤山县', '1', '省市区', '451200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451224', '547400', '东兰县', '1', '省市区', '451200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451225', '546400', '罗城仫佬族自治县', '1', '省市区', '451200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451226', '547100', '环江毛南族自治县', '1', '省市区', '451200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451227', '547500', '巴马瑶族自治县', '1', '省市区', '451200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451228', '530700', '都安瑶族自治县', '1', '省市区', '451200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451229', '530800', '大化瑶族自治县', '1', '省市区', '451200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451281', '546300', '宜州市', '1', '省市区', '451200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451300', '546100', '来宾市', '1', '省市区', '450000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451302', '546100', '兴宾区', '1', '省市区', '451300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451321', '546200', '忻城县', '1', '省市区', '451300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451322', '545800', '象州县', '1', '省市区', '451300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451323', '545900', '武宣县', '1', '省市区', '451300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451324', '545799', '金秀瑶族自治县', '1', '省市区', '451300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451381', '546500', '合山市', '1', '省市区', '451300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451400', '532299', '崇左市', '1', '省市区', '450000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451402', '532299', '江州区', '1', '省市区', '451400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451421', '532199', '扶绥县', '1', '省市区', '451400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451422', '532599', '宁明县', '1', '省市区', '451400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451423', '532499', '龙州县', '1', '省市区', '451400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451424', '532399', '大新县', '1', '省市区', '451400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451425', '532899', '天等县', '1', '省市区', '451400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('451481', '532699', '凭祥市', '1', '省市区', '451400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('46', '1101', '4驱', '11', '驱动方式', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('460000', '', '海南省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('460100', '570000', '海口市', '1', '省市区', '460000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('460105', '570311', '秀英区', '1', '省市区', '460100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('460106', '570145', '龙华区', '1', '省市区', '460100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('460107', '571100', '琼山区', '1', '省市区', '460100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('460108', '570203', '美兰区', '1', '省市区', '460100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('460200', '572000', '三亚市', '1', '省市区', '460000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('460202', '572000', '海棠区', '1', '省市区', '460200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('460203', '572000', '吉阳区', '1', '省市区', '460200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('460204', '572000', '天涯区', '1', '省市区', '460200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('460205', '572000', '崖州区', '1', '省市区', '460200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('460300', '573199', '三沙市', '1', '省市区', '460000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('460321', '572000', '西沙群岛', '1', '省市区', '460300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('460322', '573100', '南沙群岛', '1', '省市区', '460300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('460323', '573100', '中沙群岛', '1', '省市区', '460300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('469000', '', '直辖县级', '1', '省市区', '460000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('469001', '572200', '五指山市', '1', '省市区', '469000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('469002', '571400', '琼海市', '1', '省市区', '469000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('469003', '571700', '儋州市', '1', '省市区', '469000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('469005', '571339', '文昌市', '1', '省市区', '469000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('469006', '571500', '万宁市', '1', '省市区', '469000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('469007', '572600', '东方市', '1', '省市区', '469000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('469021', '571200', '定安县', '1', '省市区', '469000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('469022', '571600', '屯昌县', '1', '省市区', '469000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('469023', '571900', '澄迈县', '1', '省市区', '469000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('469024', '571800', '临高县', '1', '省市区', '469000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('469025', '572800', '白沙黎族自治县', '1', '省市区', '469000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('469026', '572700', '昌江黎族自治县', '1', '省市区', '469000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('469027', '572500', '乐东黎族自治县', '1', '省市区', '469000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('469028', '572400', '陵水黎族自治县', '1', '省市区', '469000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('469029', '572300', '保亭黎族苗族自治县', '1', '省市区', '469000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('469030', '572900', '琼中黎族苗族自治县', '1', '省市区', '469000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('47', '1102', '前驱', '11', '驱动方式', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('48', '1103', '后驱', '11', '驱动方式', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('49', '804', '路虎', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('50', '805', '领克', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('500000', '', '重庆', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500100', '400000', '重庆市', '1', '省市区', '500000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500101', '404000', '万州区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500102', '408000', '涪陵区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500103', '400010', '渝中区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500104', '400080', '大渡口区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500105', '400020', '江北区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500106', '400030', '沙坪坝区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500107', '400050', '九龙坡区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500108', '400064', '南岸区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500109', '400700', '北碚区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500110', '400800', '綦江区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500111', '400900', '大足区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500112', '401120', '渝北区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500113', '401320', '巴南区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500114', '409700', '黔江区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500115', '401220', '长寿区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500116', '402260', '江津区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500117', '401520', '合川区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500118', '402160', '永川区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500119', '408400', '南川区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500120', '402760', '璧山区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500151', '402560', '铜梁区', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500223', '402660', '潼南县', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500226', '402460', '荣昌县', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500228', '405200', '梁平县', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500229', '405900', '城口县', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500230', '408200', '丰都县', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500231', '408300', '垫江县', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500232', '408500', '武隆县', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500233', '404300', '忠县', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500234', '405400', '开县', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500235', '404500', '云阳县', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500236', '404600', '奉节县', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500237', '404700', '巫山县', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500238', '405800', '巫溪县', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500240', '409100', '石柱土家族自治县', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500241', '409900', '秀山土家族苗族自治县', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500242', '409800', '酉阳土家族苗族自治县', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500243', '409600', '彭水苗族土家族自治县', '1', '省市区', '500100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500300', '400000', '两江新区', '1', '省市区', '500000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500301', '400000', '北部新区', '1', '省市区', '500300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500302', '400000', '保税港区', '1', '省市区', '500300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('500303', '400000', '工业园区', '1', '省市区', '500300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('51', '806', '比亚迪', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('510000', '', '四川省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510100', '610015', '成都市', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510104', '610021', '锦江区', '1', '省市区', '510100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510105', '610031', '青羊区', '1', '省市区', '510100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510106', '610036', '金牛区', '1', '省市区', '510100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510107', '610041', '武侯区', '1', '省市区', '510100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510108', '610066', '成华区', '1', '省市区', '510100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510112', '610100', '龙泉驿区', '1', '省市区', '510100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510113', '610300', '青白江区', '1', '省市区', '510100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510114', '610500', '新都区', '1', '省市区', '510100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510115', '611130', '温江区', '1', '省市区', '510100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510121', '610400', '金堂县', '1', '省市区', '510100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510122', '610200', '双流县', '1', '省市区', '510100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510124', '611730', '郫县', '1', '省市区', '510100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510129', '611330', '大邑县', '1', '省市区', '510100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510131', '611630', '蒲江县', '1', '省市区', '510100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510132', '611430', '新津县', '1', '省市区', '510100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510181', '611830', '都江堰市', '1', '省市区', '510100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510182', '611930', '彭州市', '1', '省市区', '510100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510183', '611530', '邛崃市', '1', '省市区', '510100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510184', '611230', '崇州市', '1', '省市区', '510100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510300', '643000', '自贡市', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510302', '643000', '自流井区', '1', '省市区', '510300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510303', '643020', '贡井区', '1', '省市区', '510300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510304', '643010', '大安区', '1', '省市区', '510300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510311', '643030', '沿滩区', '1', '省市区', '510300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510321', '643100', '荣县', '1', '省市区', '510300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510322', '643200', '富顺县', '1', '省市区', '510300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510400', '617000', '攀枝花市', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510402', '617067', '东区', '1', '省市区', '510400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510403', '617068', '西区', '1', '省市区', '510400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510411', '617061', '仁和区', '1', '省市区', '510400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510421', '617200', '米易县', '1', '省市区', '510400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510422', '617100', '盐边县', '1', '省市区', '510400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510500', '646000', '泸州市', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510502', '646000', '江阳区', '1', '省市区', '510500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510503', '646300', '纳溪区', '1', '省市区', '510500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510504', '646000', '龙马潭区', '1', '省市区', '510500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510521', '646106', '泸县', '1', '省市区', '510500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510522', '646200', '合江县', '1', '省市区', '510500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510524', '646400', '叙永县', '1', '省市区', '510500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510525', '646500', '古蔺县', '1', '省市区', '510500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510600', '618000', '德阳市', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510603', '618000', '旌阳区', '1', '省市区', '510600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510623', '618100', '中江县', '1', '省市区', '510600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510626', '618500', '罗江县', '1', '省市区', '510600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510681', '618300', '广汉市', '1', '省市区', '510600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510682', '618400', '什邡市', '1', '省市区', '510600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510683', '618200', '绵竹市', '1', '省市区', '510600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510700', '621000', '绵阳市', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510703', '621000', '涪城区', '1', '省市区', '510700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510704', '621022', '游仙区', '1', '省市区', '510700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510722', '621100', '三台县', '1', '省市区', '510700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510723', '621600', '盐亭县', '1', '省市区', '510700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510724', '622650', '安县', '1', '省市区', '510700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510725', '622150', '梓潼县', '1', '省市区', '510700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510726', '622750', '北川羌族自治县', '1', '省市区', '510700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510727', '622550', '平武县', '1', '省市区', '510700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510781', '621700', '江油市', '1', '省市区', '510700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510800', '628000', '广元市', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510802', '628017', '利州区', '1', '省市区', '510800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510811', '628017', '昭化区', '1', '省市区', '510800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510812', '628017', '朝天区', '1', '省市区', '510800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510821', '628200', '旺苍县', '1', '省市区', '510800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510822', '628100', '青川县', '1', '省市区', '510800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510823', '628300', '剑阁县', '1', '省市区', '510800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510824', '628400', '苍溪县', '1', '省市区', '510800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510900', '629000', '遂宁市', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510903', '629000', '船山区', '1', '省市区', '510900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510904', '629000', '安居区', '1', '省市区', '510900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510921', '629100', '蓬溪县', '1', '省市区', '510900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510922', '629200', '射洪县', '1', '省市区', '510900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('510923', '629300', '大英县', '1', '省市区', '510900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511000', '641000', '内江市', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511002', '641000', '市中区', '1', '省市区', '511000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511011', '641100', '东兴区', '1', '省市区', '511000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511024', '642450', '威远县', '1', '省市区', '511000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511025', '641200', '资中县', '1', '省市区', '511000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511028', '642150', '隆昌县', '1', '省市区', '511000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511100', '614000', '乐山市', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511102', '614000', '市中区', '1', '省市区', '511100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511111', '614900', '沙湾区', '1', '省市区', '511100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511112', '614800', '五通桥区', '1', '省市区', '511100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511113', '614700', '金口河区', '1', '省市区', '511100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511123', '614400', '犍为县', '1', '省市区', '511100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511124', '613100', '井研县', '1', '省市区', '511100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511126', '614100', '夹江县', '1', '省市区', '511100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511129', '614500', '沐川县', '1', '省市区', '511100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511132', '614300', '峨边彝族自治县', '1', '省市区', '511100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511133', '614600', '马边彝族自治县', '1', '省市区', '511100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511181', '614200', '峨眉山市', '1', '省市区', '511100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511300', '637000', '南充市', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511302', '637000', '顺庆区', '1', '省市区', '511300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511303', '637100', '高坪区', '1', '省市区', '511300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511304', '637100', '嘉陵区', '1', '省市区', '511300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511321', '637300', '南部县', '1', '省市区', '511300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511322', '637700', '营山县', '1', '省市区', '511300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511323', '637800', '蓬安县', '1', '省市区', '511300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511324', '637600', '仪陇县', '1', '省市区', '511300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511325', '637200', '西充县', '1', '省市区', '511300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511381', '637400', '阆中市', '1', '省市区', '511300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511400', '620020', '眉山市', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511402', '620010', '东坡区', '1', '省市区', '511400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511403', '620860', '彭山区', '1', '省市区', '511400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511421', '620500', '仁寿县', '1', '省市区', '511400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511423', '620360', '洪雅县', '1', '省市区', '511400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511424', '620200', '丹棱县', '1', '省市区', '511400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511425', '620460', '青神县', '1', '省市区', '511400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511500', '644000', '宜宾市', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511502', '644000', '翠屏区', '1', '省市区', '511500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511503', '644100', '南溪区', '1', '省市区', '511500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511521', '644600', '宜宾县', '1', '省市区', '511500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511523', '644200', '江安县', '1', '省市区', '511500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511524', '644300', '长宁县', '1', '省市区', '511500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511525', '645150', '高县', '1', '省市区', '511500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511526', '644500', '珙县', '1', '省市区', '511500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511527', '645250', '筠连县', '1', '省市区', '511500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511528', '644400', '兴文县', '1', '省市区', '511500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511529', '645350', '屏山县', '1', '省市区', '511500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511600', '638000', '广安市', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511602', '638000', '广安区', '1', '省市区', '511600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511603', '638019', '前锋区', '1', '省市区', '511600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511621', '638300', '岳池县', '1', '省市区', '511600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511622', '638400', '武胜县', '1', '省市区', '511600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511623', '638500', '邻水县', '1', '省市区', '511600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511681', '638600', '华蓥市', '1', '省市区', '511600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511700', '635000', '达州市', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511702', '635000', '通川区', '1', '省市区', '511700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511703', '635000', '达川区', '1', '省市区', '511700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511722', '636150', '宣汉县', '1', '省市区', '511700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511723', '636250', '开江县', '1', '省市区', '511700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511724', '635100', '大竹县', '1', '省市区', '511700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511725', '635200', '渠县', '1', '省市区', '511700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511781', '636350', '万源市', '1', '省市区', '511700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511800', '625000', '雅安市', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511802', '625000', '雨城区', '1', '省市区', '511800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511803', '625100', '名山区', '1', '省市区', '511800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511822', '625200', '荥经县', '1', '省市区', '511800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511823', '625300', '汉源县', '1', '省市区', '511800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511824', '625400', '石棉县', '1', '省市区', '511800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511825', '625500', '天全县', '1', '省市区', '511800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511826', '625600', '芦山县', '1', '省市区', '511800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511827', '625700', '宝兴县', '1', '省市区', '511800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511900', '636000', '巴中市', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511902', '636001', '巴州区', '1', '省市区', '511900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511903', '636064', '恩阳区', '1', '省市区', '511900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511921', '636700', '通江县', '1', '省市区', '511900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511922', '636600', '南江县', '1', '省市区', '511900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('511923', '636400', '平昌县', '1', '省市区', '511900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('512000', '641300', '资阳市', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('512002', '641300', '雁江区', '1', '省市区', '512000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('512021', '642350', '安岳县', '1', '省市区', '512000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('512022', '641500', '乐至县', '1', '省市区', '512000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('512081', '641400', '简阳市', '1', '省市区', '512000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513200', '624000', '阿坝藏族羌族自治州', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513221', '623000', '汶川县', '1', '省市区', '513200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513222', '623100', '理县', '1', '省市区', '513200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513223', '623200', '茂县', '1', '省市区', '513200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513224', '623300', '松潘县', '1', '省市区', '513200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513225', '623400', '九寨沟县', '1', '省市区', '513200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513226', '624100', '金川县', '1', '省市区', '513200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513227', '624200', '小金县', '1', '省市区', '513200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513228', '623500', '黑水县', '1', '省市区', '513200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513229', '624000', '马尔康县', '1', '省市区', '513200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513230', '624300', '壤塘县', '1', '省市区', '513200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513231', '624600', '阿坝县', '1', '省市区', '513200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513232', '624500', '若尔盖县', '1', '省市区', '513200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513233', '624400', '红原县', '1', '省市区', '513200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513300', '626000', '甘孜藏族自治州', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513321', '626000', '康定县', '1', '省市区', '513300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513322', '626100', '泸定县', '1', '省市区', '513300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513323', '626300', '丹巴县', '1', '省市区', '513300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513324', '626200', '九龙县', '1', '省市区', '513300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513325', '627450', '雅江县', '1', '省市区', '513300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513326', '626400', '道孚县', '1', '省市区', '513300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513327', '626500', '炉霍县', '1', '省市区', '513300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513328', '626700', '甘孜县', '1', '省市区', '513300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513329', '626800', '新龙县', '1', '省市区', '513300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513330', '627250', '德格县', '1', '省市区', '513300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513331', '627150', '白玉县', '1', '省市区', '513300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513332', '627350', '石渠县', '1', '省市区', '513300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513333', '626600', '色达县', '1', '省市区', '513300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513334', '627550', '理塘县', '1', '省市区', '513300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513335', '627650', '巴塘县', '1', '省市区', '513300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513336', '627850', '乡城县', '1', '省市区', '513300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513337', '627750', '稻城县', '1', '省市区', '513300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513338', '627950', '得荣县', '1', '省市区', '513300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513400', '615000', '凉山彝族自治州', '1', '省市区', '510000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513401', '615000', '西昌市', '1', '省市区', '513400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513422', '615800', '木里藏族自治县', '1', '省市区', '513400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513423', '615700', '盐源县', '1', '省市区', '513400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513424', '615500', '德昌县', '1', '省市区', '513400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513425', '615100', '会理县', '1', '省市区', '513400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513426', '615200', '会东县', '1', '省市区', '513400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513427', '615400', '宁南县', '1', '省市区', '513400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513428', '615300', '普格县', '1', '省市区', '513400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513429', '616350', '布拖县', '1', '省市区', '513400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513430', '616250', '金阳县', '1', '省市区', '513400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513431', '616150', '昭觉县', '1', '省市区', '513400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513432', '616750', '喜德县', '1', '省市区', '513400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513433', '615600', '冕宁县', '1', '省市区', '513400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513434', '616650', '越西县', '1', '省市区', '513400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513435', '616850', '甘洛县', '1', '省市区', '513400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513436', '616450', '美姑县', '1', '省市区', '513400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('513437', '616550', '雷波县', '1', '省市区', '513400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('52', '807', '凯迪拉克', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('520000', '', '贵州省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520100', '550001', '贵阳市', '1', '省市区', '520000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520102', '550001', '南明区', '1', '省市区', '520100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520103', '550001', '云岩区', '1', '省市区', '520100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520111', '550025', '花溪区', '1', '省市区', '520100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520112', '550018', '乌当区', '1', '省市区', '520100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520113', '550014', '白云区', '1', '省市区', '520100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520115', '550009', '观山湖区', '1', '省市区', '520100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520121', '550300', '开阳县', '1', '省市区', '520100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520122', '551100', '息烽县', '1', '省市区', '520100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520123', '550200', '修文县', '1', '省市区', '520100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520181', '551400', '清镇市', '1', '省市区', '520100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520200', '553400', '六盘水市', '1', '省市区', '520000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520201', '553000', '钟山区', '1', '省市区', '520200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520203', '553400', '六枝特区', '1', '省市区', '520200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520221', '553000', '水城县', '1', '省市区', '520200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520222', '561601', '盘县', '1', '省市区', '520200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520300', '563000', '遵义市', '1', '省市区', '520000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520302', '563000', '红花岗区', '1', '省市区', '520300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520303', '563000', '汇川区', '1', '省市区', '520300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520321', '563100', '遵义县', '1', '省市区', '520300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520322', '563200', '桐梓县', '1', '省市区', '520300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520323', '563300', '绥阳县', '1', '省市区', '520300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520324', '563400', '正安县', '1', '省市区', '520300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520325', '563500', '道真仡佬族苗族自治县', '1', '省市区', '520300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520326', '564300', '务川仡佬族苗族自治县', '1', '省市区', '520300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520327', '564200', '凤冈县', '1', '省市区', '520300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520328', '564100', '湄潭县', '1', '省市区', '520300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520329', '564400', '余庆县', '1', '省市区', '520300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520330', '564600', '习水县', '1', '省市区', '520300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520381', '564700', '赤水市', '1', '省市区', '520300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520382', '564500', '仁怀市', '1', '省市区', '520300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520400', '561000', '安顺市', '1', '省市区', '520000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520402', '561000', '西秀区', '1', '省市区', '520400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520421', '561100', '平坝区', '1', '省市区', '520400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520422', '562100', '普定县', '1', '省市区', '520400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520423', '561200', '镇宁布依族苗族自治县', '1', '省市区', '520400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520424', '561300', '关岭布依族苗族自治县', '1', '省市区', '520400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520425', '550800', '紫云苗族布依族自治县', '1', '省市区', '520400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520500', '551700', '毕节市', '1', '省市区', '520000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520502', '551700', '七星关区', '1', '省市区', '520500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520521', '551600', '大方县', '1', '省市区', '520500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520522', '551500', '黔西县', '1', '省市区', '520500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520523', '551800', '金沙县', '1', '省市区', '520500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520524', '552100', '织金县', '1', '省市区', '520500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520525', '553300', '纳雍县', '1', '省市区', '520500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520526', '553100', '威宁彝族回族苗族自治县', '1', '省市区', '520500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520527', '553200', '赫章县', '1', '省市区', '520500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520600', '554300', '铜仁市', '1', '省市区', '520000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520602', '554300', '碧江区', '1', '省市区', '520600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520603', '554200', '万山区', '1', '省市区', '520600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520621', '554400', '江口县', '1', '省市区', '520600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520622', '554004', '玉屏侗族自治县', '1', '省市区', '520600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520623', '555100', '石阡县', '1', '省市区', '520600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520624', '565100', '思南县', '1', '省市区', '520600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520625', '555200', '印江土家族苗族自治县', '1', '省市区', '520600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520626', '565200', '德江县', '1', '省市区', '520600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520627', '565300', '沿河土家族自治县', '1', '省市区', '520600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('520628', '554100', '松桃苗族自治县', '1', '省市区', '520600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522300', '562400', '黔西南布依族苗族自治州', '1', '省市区', '520000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522301', '562400', '兴义市 ', '1', '省市区', '522300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522322', '562300', '兴仁县', '1', '省市区', '522300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522323', '561500', '普安县', '1', '省市区', '522300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522324', '561400', '晴隆县', '1', '省市区', '522300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522325', '562200', '贞丰县', '1', '省市区', '522300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522326', '552300', '望谟县', '1', '省市区', '522300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522327', '552200', '册亨县', '1', '省市区', '522300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522328', '552400', '安龙县', '1', '省市区', '522300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522600', '556000', '黔东南苗族侗族自治州', '1', '省市区', '520000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522601', '556000', '凯里市', '1', '省市区', '522600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522622', '556100', '黄平县', '1', '省市区', '522600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522623', '556200', '施秉县', '1', '省市区', '522600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522624', '556500', '三穗县', '1', '省市区', '522600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522625', '557700', '镇远县', '1', '省市区', '522600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522626', '557800', '岑巩县', '1', '省市区', '522600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522627', '556600', '天柱县', '1', '省市区', '522600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522628', '556700', '锦屏县', '1', '省市区', '522600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522629', '556400', '剑河县', '1', '省市区', '522600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522630', '556300', '台江县', '1', '省市区', '522600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522631', '557300', '黎平县', '1', '省市区', '522600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522632', '557200', '榕江县', '1', '省市区', '522600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522633', '557400', '从江县', '1', '省市区', '522600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522634', '557100', '雷山县', '1', '省市区', '522600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522635', '557600', '麻江县', '1', '省市区', '522600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522636', '557500', '丹寨县', '1', '省市区', '522600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522700', '558000', '黔南布依族苗族自治州', '1', '省市区', '520000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522701', '558000', '都匀市', '1', '省市区', '522700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522702', '550500', '福泉市', '1', '省市区', '522700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522722', '558400', '荔波县', '1', '省市区', '522700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522723', '551300', '贵定县', '1', '省市区', '522700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522725', '550400', '瓮安县', '1', '省市区', '522700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522726', '558200', '独山县', '1', '省市区', '522700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522727', '558300', '平塘县', '1', '省市区', '522700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522728', '550100', '罗甸县', '1', '省市区', '522700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522729', '550700', '长顺县', '1', '省市区', '522700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522730', '551200', '龙里县', '1', '省市区', '522700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522731', '550600', '惠水县', '1', '省市区', '522700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('522732', '558100', '三都水族自治县', '1', '省市区', '522700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('53', '808', '本田', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('530000', '', '云南省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530100', '650500', '昆明市', '1', '省市区', '530000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530102', '650021', '五华区', '1', '省市区', '530100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530103', '650051', '盘龙区', '1', '省市区', '530100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530111', '650200', '官渡区', '1', '省市区', '530100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530112', '650118', '西山区', '1', '省市区', '530100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530113', '654100', '东川区', '1', '省市区', '530100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530114', '650500', '呈贡区', '1', '省市区', '530100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530122', '650600', '晋宁县', '1', '省市区', '530100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530124', '650400', '富民县', '1', '省市区', '530100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530125', '652100', '宜良县', '1', '省市区', '530100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530126', '652200', '石林彝族自治县', '1', '省市区', '530100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530127', '651700', '嵩明县', '1', '省市区', '530100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530128', '651500', '禄劝彝族苗族自治县', '1', '省市区', '530100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530129', '655200', '寻甸回族彝族自治县 ', '1', '省市区', '530100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530181', '650300', '安宁市', '1', '省市区', '530100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530300', '655000', '曲靖市', '1', '省市区', '530000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530302', '655000', '麒麟区', '1', '省市区', '530300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530321', '655100', '马龙县', '1', '省市区', '530300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530322', '655600', '陆良县', '1', '省市区', '530300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530323', '655700', '师宗县', '1', '省市区', '530300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530324', '655800', '罗平县', '1', '省市区', '530300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530325', '655500', '富源县', '1', '省市区', '530300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530326', '654200', '会泽县', '1', '省市区', '530300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530328', '655331', '沾益县', '1', '省市区', '530300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530381', '655400', '宣威市', '1', '省市区', '530300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530400', '653100', '玉溪市', '1', '省市区', '530000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530402', '653100', '红塔区', '1', '省市区', '530400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530421', '652600', '江川县', '1', '省市区', '530400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530422', '652500', '澄江县', '1', '省市区', '530400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530423', '652700', '通海县', '1', '省市区', '530400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530424', '652800', '华宁县', '1', '省市区', '530400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530425', '651100', '易门县', '1', '省市区', '530400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530426', '653200', '峨山彝族自治县', '1', '省市区', '530400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530427', '653400', '新平彝族傣族自治县', '1', '省市区', '530400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530428', '653300', '元江哈尼族彝族傣族自治县', '1', '省市区', '530400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530500', '678000', '保山市', '1', '省市区', '530000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530502', '678000', '隆阳区', '1', '省市区', '530500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530521', '678200', '施甸县', '1', '省市区', '530500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530522', '679100', '腾冲县', '1', '省市区', '530500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530523', '678300', '龙陵县', '1', '省市区', '530500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530524', '678100', '昌宁县', '1', '省市区', '530500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530600', '657000', '昭通市', '1', '省市区', '530000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530602', '657000', '昭阳区', '1', '省市区', '530600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530621', '657100', '鲁甸县', '1', '省市区', '530600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530622', '654600', '巧家县', '1', '省市区', '530600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530623', '657500', '盐津县', '1', '省市区', '530600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530624', '657400', '大关县', '1', '省市区', '530600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530625', '657300', '永善县', '1', '省市区', '530600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530626', '657700', '绥江县', '1', '省市区', '530600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530627', '657200', '镇雄县', '1', '省市区', '530600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530628', '657600', '彝良县', '1', '省市区', '530600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530629', '657900', '威信县', '1', '省市区', '530600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530630', '657800', '水富县', '1', '省市区', '530600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530700', '674100', '丽江市', '1', '省市区', '530000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530702', '674100', '古城区', '1', '省市区', '530700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530721', '674100', '玉龙纳西族自治县', '1', '省市区', '530700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530722', '674200', '永胜县', '1', '省市区', '530700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530723', '674800', '华坪县', '1', '省市区', '530700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530724', '674300', '宁蒗彝族自治县', '1', '省市区', '530700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530800', '665000', '普洱市', '1', '省市区', '530000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530802', '665000', '思茅区', '1', '省市区', '530800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530821', '665100', '宁洱哈尼族彝族自治县', '1', '省市区', '530800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530822', '654800', '墨江哈尼族自治县', '1', '省市区', '530800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530823', '676200', '景东彝族自治县', '1', '省市区', '530800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530824', '666400', '景谷傣族彝族自治县', '1', '省市区', '530800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530825', '666500', '镇沅彝族哈尼族拉祜族自治县', '1', '省市区', '530800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530826', '665900', '江城哈尼族彝族自治县', '1', '省市区', '530800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530827', '665800', '孟连傣族拉祜族佤族自治县', '1', '省市区', '530800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530828', '665600', '澜沧拉祜族自治县', '1', '省市区', '530800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530829', '665700', '西盟佤族自治县', '1', '省市区', '530800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530900', '677000', '临沧市', '1', '省市区', '530000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530902', '677000', '临翔区', '1', '省市区', '530900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530921', '675900', '凤庆县', '1', '省市区', '530900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530922', '675800', '云县', '1', '省市区', '530900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530923', '677600', '永德县', '1', '省市区', '530900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530924', '677704', '镇康县', '1', '省市区', '530900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530925', '677300', '双江拉祜族佤族布朗族傣族自治县', '1', '省市区', '530900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530926', '677500', '耿马傣族佤族自治县', '1', '省市区', '530900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('530927', '677400', '沧源佤族自治县', '1', '省市区', '530900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532300', '675000', '楚雄彝族自治州', '1', '省市区', '530000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532301', '675000', '楚雄市', '1', '省市区', '532300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532322', '675100', '双柏县', '1', '省市区', '532300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532323', '675500', '牟定县', '1', '省市区', '532300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532324', '675200', '南华县', '1', '省市区', '532300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532325', '675300', '姚安县', '1', '省市区', '532300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532326', '675400', '大姚县', '1', '省市区', '532300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532327', '651400', '永仁县', '1', '省市区', '532300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532328', '651300', '元谋县', '1', '省市区', '532300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532329', '651600', '武定县', '1', '省市区', '532300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532331', '651200', '禄丰县', '1', '省市区', '532300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532500', '661400', '红河哈尼族彝族自治州', '1', '省市区', '530000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532501', '661000', '个旧市', '1', '省市区', '532500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532502', '661600', '开远市', '1', '省市区', '532500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532503', '661101', '蒙自市', '1', '省市区', '532500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532504', '652300', '弥勒市', '1', '省市区', '532500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532523', '661200', '屏边苗族自治县', '1', '省市区', '532500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532524', '654300', '建水县', '1', '省市区', '532500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532525', '662200', '石屏县', '1', '省市区', '532500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532527', '652400', '泸西县', '1', '省市区', '532500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532528', '662400', '元阳县', '1', '省市区', '532500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532529', '654400', '红河县', '1', '省市区', '532500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532530', '661500', '金平苗族瑶族傣族自治县', '1', '省市区', '532500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532531', '662500', '绿春县', '1', '省市区', '532500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532532', '661300', '河口瑶族自治县', '1', '省市区', '532500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532600', '663000', '文山壮族苗族自治州', '1', '省市区', '530000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532601', '663000', '文山市', '1', '省市区', '532600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532622', '663100', '砚山县', '1', '省市区', '532600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532623', '663500', '西畴县', '1', '省市区', '532600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532624', '663600', '麻栗坡县', '1', '省市区', '532600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532625', '663700', '马关县', '1', '省市区', '532600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532626', '663200', '丘北县', '1', '省市区', '532600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532627', '663300', '广南县', '1', '省市区', '532600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532628', '663400', '富宁县', '1', '省市区', '532600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532800', '666100', '西双版纳傣族自治州', '1', '省市区', '530000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532801', '666100', '景洪市', '1', '省市区', '532800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532822', '666200', '勐海县', '1', '省市区', '532800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532823', '666300', '勐腊县', '1', '省市区', '532800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532900', '671000', '大理白族自治州', '1', '省市区', '530000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532901', '671000', '大理市', '1', '省市区', '532900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532922', '672500', '漾濞彝族自治县', '1', '省市区', '532900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532923', '672100', '祥云县', '1', '省市区', '532900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532924', '671600', '宾川县', '1', '省市区', '532900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532925', '675600', '弥渡县', '1', '省市区', '532900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532926', '675700', '南涧彝族自治县', '1', '省市区', '532900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532927', '672400', '巍山彝族回族自治县', '1', '省市区', '532900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532928', '672600', '永平县', '1', '省市区', '532900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532929', '672700', '云龙县', '1', '省市区', '532900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532930', '671200', '洱源县', '1', '省市区', '532900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532931', '671300', '剑川县', '1', '省市区', '532900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('532932', '671500', '鹤庆县', '1', '省市区', '532900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('533100', '678400', '德宏傣族景颇族自治州', '1', '省市区', '530000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('533102', '678600', '瑞丽市', '1', '省市区', '533100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('533103', '678400', '芒市', '1', '省市区', '533100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('533122', '679200', '梁河县', '1', '省市区', '533100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('533123', '679300', '盈江县', '1', '省市区', '533100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('533124', '678700', '陇川县', '1', '省市区', '533100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('533300', '673100', '怒江傈僳族自治州', '1', '省市区', '530000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('533321', '673100', '泸水县', '1', '省市区', '533300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('533323', '673400', '福贡县', '1', '省市区', '533300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('533324', '673500', '贡山独龙族怒族自治县', '1', '省市区', '533300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('533325', '671400', '兰坪白族普米族自治县', '1', '省市区', '533300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('533400', '674400', '迪庆藏族自治州', '1', '省市区', '530000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('533421', '674400', '香格里拉市', '1', '省市区', '533400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('533422', '674500', '德钦县', '1', '省市区', '533400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('533423', '674600', '维西傈僳族自治县', '1', '省市区', '533400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('54', '809', '雪铁龙', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('540000', '', '西藏自治区', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540100', '850000', '拉萨市', '1', '省市区', '540000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540102', '850000', '城关区', '1', '省市区', '540100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540121', '851600', '林周县', '1', '省市区', '540100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540122', '851500', '当雄县', '1', '省市区', '540100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540123', '851300', '尼木县', '1', '省市区', '540100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540124', '850600', '曲水县', '1', '省市区', '540100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540125', '851400', '堆龙德庆县', '1', '省市区', '540100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540126', '850100', '达孜县', '1', '省市区', '540100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540127', '850200', '墨竹工卡县', '1', '省市区', '540100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540200', '857000', '日喀则市', '1', '省市区', '540000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540202', '857000', '桑珠孜区', '1', '省市区', '540200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540221', '857100', '南木林县', '1', '省市区', '540200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540222', '857400', '江孜县', '1', '省市区', '540200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540223', '858200', '定日县', '1', '省市区', '540200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540224', '857800', '萨迦县', '1', '省市区', '540200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540225', '858100', '拉孜县', '1', '省市区', '540200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540226', '858500', '昂仁县', '1', '省市区', '540200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540227', '858900', '谢通门县', '1', '省市区', '540200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540228', '857300', '白朗县', '1', '省市区', '540200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540229', '857200', '仁布县', '1', '省市区', '540200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540230', '857500', '康马县', '1', '省市区', '540200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540231', '857900', '定结县', '1', '省市区', '540200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540232', '858800', '仲巴县', '1', '省市区', '540200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540233', '857600', '亚东县', '1', '省市区', '540200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540234', '858700', '吉隆县', '1', '省市区', '540200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540235', '858300', '聂拉木县', '1', '省市区', '540200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540236', '857800', '萨嘎县', '1', '省市区', '540200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540237', '857700', '岗巴县', '1', '省市区', '540200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540300', '854000', '昌都市', '1', '省市区', '540000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540302', '854000', '卡若区', '1', '省市区', '540300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540321', '854100', '江达县', '1', '省市区', '540300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540322', '854200', '贡觉县', '1', '省市区', '540300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540323', '855600', '类乌齐县', '1', '省市区', '540300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540324', '855700', '丁青县', '1', '省市区', '540300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540325', '854300', '察雅县', '1', '省市区', '540300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540326', '854600', '八宿县', '1', '省市区', '540300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540327', '854400', '左贡县', '1', '省市区', '540300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540328', '854500', '芒康县', '1', '省市区', '540300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540329', '855400', '洛隆县', '1', '省市区', '540300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('540330', '855500', '边坝县', '1', '省市区', '540300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542200', '856000', '山南地区', '1', '省市区', '540000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542221', '856100', '乃东县', '1', '省市区', '542200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542222', '850800', '扎囊县', '1', '省市区', '542200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542223', '850700', '贡嘎县', '1', '省市区', '542200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542224', '856200', '桑日县', '1', '省市区', '542200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542225', '856800', '琼结县', '1', '省市区', '542200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542226', '856300', '曲松县', '1', '省市区', '542200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542227', '856900', '措美县', '1', '省市区', '542200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542228', '856600', '洛扎县', '1', '省市区', '542200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542229', '856400', '加查县', '1', '省市区', '542200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542231', '856600', '隆子县', '1', '省市区', '542200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542232', '856700', '错那县', '1', '省市区', '542200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542233', '851100', '浪卡子县', '1', '省市区', '542200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542400', '852000', '那曲地区', '1', '省市区', '540000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542421', '852000', '那曲县', '1', '省市区', '542400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542422', '852400', '嘉黎县', '1', '省市区', '542400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542423', '852300', '比如县', '1', '省市区', '542400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542424', '853500', '聂荣县', '1', '省市区', '542400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542425', '853400', '安多县', '1', '省市区', '542400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542426', '853100', '申扎县', '1', '省市区', '542400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542427', '852200', '索县', '1', '省市区', '542400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542428', '852500', '班戈县', '1', '省市区', '542400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542429', '852100', '巴青县', '1', '省市区', '542400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542430', '852600', '尼玛县', '1', '省市区', '542400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542431', '852600', '双湖县', '1', '省市区', '542400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542500', '859000', '阿里地区', '1', '省市区', '540000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542521', '859500', '普兰县', '1', '省市区', '542500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542522', '859600', '札达县', '1', '省市区', '542500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542523', '859400', '噶尔县', '1', '省市区', '542500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542524', '859700', '日土县', '1', '省市区', '542500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542525', '859100', '革吉县', '1', '省市区', '542500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542526', '859200', '改则县', '1', '省市区', '542500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542527', '859300', '措勤县', '1', '省市区', '542500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542600', '850400', '林芝地区', '1', '省市区', '540000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542621', '850400', '林芝县', '1', '省市区', '542600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542622', '850300', '工布江达县', '1', '省市区', '542600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542623', '850500', '米林县', '1', '省市区', '542600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542624', '855300', '墨脱县', '1', '省市区', '542600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542625', '855200', '波密县', '1', '省市区', '542600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542626', '855100', '察隅县', '1', '省市区', '542600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('542627', '856500', '朗县', '1', '省市区', '542600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('55', '810', '兰博基尼', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('56', '811', '吉利', '8', '品牌', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('6', '6', '2座', '4', '汽车座位数', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('610000', '', '陕西省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610100', '710003', '西安市', '1', '省市区', '610000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610102', '710004', '新城区', '1', '省市区', '610100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610103', '710001', '碑林区', '1', '省市区', '610100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610104', '710003', '莲湖区', '1', '省市区', '610100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610111', '710038', '灞桥区', '1', '省市区', '610100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610112', '710014', '未央区', '1', '省市区', '610100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610113', '710061', '雁塔区', '1', '省市区', '610100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610114', '710087', '阎良区', '1', '省市区', '610100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610115', '710600', '临潼区', '1', '省市区', '610100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610116', '710100', '长安区', '1', '省市区', '610100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610122', '710500', '蓝田县', '1', '省市区', '610100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610124', '710400', '周至县', '1', '省市区', '610100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610125', '710300', '户县', '1', '省市区', '610100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610126', '710200', '高陵区', '1', '省市区', '610100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610200', '727100', '铜川市', '1', '省市区', '610000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610202', '727000', '王益区', '1', '省市区', '610200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610203', '727007', '印台区', '1', '省市区', '610200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610204', '727100', '耀州区', '1', '省市区', '610200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610222', '727200', '宜君县', '1', '省市区', '610200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610300', '721000', '宝鸡市', '1', '省市区', '610000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610302', '721000', '渭滨区', '1', '省市区', '610300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610303', '721000', '金台区', '1', '省市区', '610300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610304', '721300', '陈仓区', '1', '省市区', '610300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610322', '721400', '凤翔县', '1', '省市区', '610300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610323', '722400', '岐山县', '1', '省市区', '610300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610324', '722200', '扶风县', '1', '省市区', '610300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610326', '722300', '眉县', '1', '省市区', '610300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610327', '721200', '陇县', '1', '省市区', '610300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610328', '721100', '千阳县', '1', '省市区', '610300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610329', '721500', '麟游县', '1', '省市区', '610300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610330', '721700', '凤县', '1', '省市区', '610300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610331', '721600', '太白县', '1', '省市区', '610300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610400', '712000', '咸阳市', '1', '省市区', '610000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610402', '712000', '秦都区', '1', '省市区', '610400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610403', '712100', '杨陵区', '1', '省市区', '610400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610404', '712000', '渭城区', '1', '省市区', '610400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610422', '713800', '三原县', '1', '省市区', '610400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610423', '713700', '泾阳县', '1', '省市区', '610400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610424', '713300', '乾县', '1', '省市区', '610400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610425', '713200', '礼泉县', '1', '省市区', '610400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610426', '713400', '永寿县', '1', '省市区', '610400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610427', '713500', '彬县', '1', '省市区', '610400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610428', '713600', '长武县', '1', '省市区', '610400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610429', '711300', '旬邑县', '1', '省市区', '610400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610430', '711200', '淳化县', '1', '省市区', '610400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610431', '712200', '武功县', '1', '省市区', '610400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610481', '713100', '兴平市', '1', '省市区', '610400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610500', '714000', '渭南市', '1', '省市区', '610000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610502', '714000', '临渭区', '1', '省市区', '610500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610521', '714100', '华县', '1', '省市区', '610500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610522', '714300', '潼关县', '1', '省市区', '610500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610523', '715100', '大荔县', '1', '省市区', '610500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610524', '715300', '合阳县', '1', '省市区', '610500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610525', '715200', '澄城县', '1', '省市区', '610500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610526', '715500', '蒲城县', '1', '省市区', '610500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610527', '715600', '白水县', '1', '省市区', '610500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610528', '711700', '富平县', '1', '省市区', '610500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610581', '715400', '韩城市', '1', '省市区', '610500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610582', '714200', '华阴市', '1', '省市区', '610500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610600', '716000', '延安市', '1', '省市区', '610000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610602', '716000', '宝塔区', '1', '省市区', '610600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610621', '717100', '延长县', '1', '省市区', '610600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610622', '717200', '延川县', '1', '省市区', '610600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610623', '717300', '子长县', '1', '省市区', '610600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610624', '717400', '安塞县', '1', '省市区', '610600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610625', '717500', '志丹县', '1', '省市区', '610600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610626', '717600', '吴起县', '1', '省市区', '610600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610627', '716100', '甘泉县', '1', '省市区', '610600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610628', '727500', '富县', '1', '省市区', '610600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610629', '727400', '洛川县', '1', '省市区', '610600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610630', '716200', '宜川县', '1', '省市区', '610600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610631', '715700', '黄龙县', '1', '省市区', '610600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610632', '727300', '黄陵县', '1', '省市区', '610600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610700', '723000', '汉中市', '1', '省市区', '610000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610702', '723000', '汉台区', '1', '省市区', '610700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610721', '723100', '南郑县', '1', '省市区', '610700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610722', '723200', '城固县', '1', '省市区', '610700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610723', '723300', '洋县', '1', '省市区', '610700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610724', '723500', '西乡县', '1', '省市区', '610700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610725', '724200', '勉县', '1', '省市区', '610700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610726', '724400', '宁强县', '1', '省市区', '610700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610727', '724300', '略阳县', '1', '省市区', '610700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610728', '723600', '镇巴县', '1', '省市区', '610700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610729', '724100', '留坝县', '1', '省市区', '610700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610730', '723400', '佛坪县', '1', '省市区', '610700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610800', '719000', '榆林市', '1', '省市区', '610000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610802', '719000', '榆阳区', '1', '省市区', '610800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610821', '719300', '神木县', '1', '省市区', '610800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610822', '719400', '府谷县', '1', '省市区', '610800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610823', '719100', '横山县', '1', '省市区', '610800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610824', '718500', '靖边县', '1', '省市区', '610800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610825', '718600', '定边县', '1', '省市区', '610800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610826', '718000', '绥德县', '1', '省市区', '610800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610827', '718100', '米脂县', '1', '省市区', '610800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610828', '719200', '佳县', '1', '省市区', '610800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610829', '718200', '吴堡县', '1', '省市区', '610800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610830', '718300', '清涧县', '1', '省市区', '610800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610831', '718400', '子洲县', '1', '省市区', '610800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610900', '725000', '安康市', '1', '省市区', '610000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610902', '725000', '汉滨区', '1', '省市区', '610900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610921', '725100', '汉阴县', '1', '省市区', '610900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610922', '725200', '石泉县', '1', '省市区', '610900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610923', '711600', '宁陕县', '1', '省市区', '610900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610924', '725300', '紫阳县', '1', '省市区', '610900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610925', '725400', '岚皋县', '1', '省市区', '610900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610926', '725500', '平利县', '1', '省市区', '610900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610927', '725600', '镇坪县', '1', '省市区', '610900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610928', '725700', '旬阳县', '1', '省市区', '610900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('610929', '725800', '白河县', '1', '省市区', '610900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('611000', '726000', '商洛市', '1', '省市区', '610000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('611002', '726000', '商州区', '1', '省市区', '611000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('611021', '726100', '洛南县', '1', '省市区', '611000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('611022', '726200', '丹凤县', '1', '省市区', '611000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('611023', '726300', '商南县', '1', '省市区', '611000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('611024', '726400', '山阳县', '1', '省市区', '611000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('611025', '711500', '镇安县', '1', '省市区', '611000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('611026', '711400', '柞水县', '1', '省市区', '611000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('611100', '712000', '西咸新区', '1', '省市区', '610000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('611101', '461000', '空港新城', '1', '省市区', '611100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('611102', '710000', '沣东新城', '1', '省市区', '611100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('611103', '712000', '秦汉新城', '1', '省市区', '611100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('611104', '710000', '沣西新城', '1', '省市区', '611100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('611105', '713700', '泾河新城', '1', '省市区', '611100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620000', '', '甘肃省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620100', '730030', '兰州市', '1', '省市区', '620000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620102', '730030', '城关区', '1', '省市区', '620100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620103', '730050', '七里河区', '1', '省市区', '620100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620104', '730060', '西固区', '1', '省市区', '620100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620105', '730070', '安宁区', '1', '省市区', '620100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620111', '730084', '红古区', '1', '省市区', '620100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620121', '730300', '永登县', '1', '省市区', '620100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620122', '730200', '皋兰县', '1', '省市区', '620100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620123', '730100', '榆中县', '1', '省市区', '620100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620200', '735100', '嘉峪关市', '1', '省市区', '620000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620201', '735100', '雄关区', '1', '省市区', '620200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620202', '735106', '长城区', '1', '省市区', '620200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620203', '735100', '镜铁区', '1', '省市区', '620200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620300', '737100', '金昌市', '1', '省市区', '620000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620302', '737100', '金川区', '1', '省市区', '620300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620321', '737200', '永昌县', '1', '省市区', '620300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620400', '730900', '白银市', '1', '省市区', '620000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620402', '730900', '白银区', '1', '省市区', '620400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620403', '730913', '平川区', '1', '省市区', '620400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620421', '730600', '靖远县', '1', '省市区', '620400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620422', '730700', '会宁县', '1', '省市区', '620400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620423', '730400', '景泰县', '1', '省市区', '620400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620500', '741000', '天水市', '1', '省市区', '620000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620502', '741000', '秦州区', '1', '省市区', '620500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620503', '741020', '麦积区', '1', '省市区', '620500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620521', '741400', '清水县', '1', '省市区', '620500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620522', '741600', '秦安县', '1', '省市区', '620500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620523', '741200', '甘谷县', '1', '省市区', '620500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620524', '741300', '武山县', '1', '省市区', '620500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620525', '741500', '张家川回族自治县', '1', '省市区', '620500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620600', '733000', '武威市', '1', '省市区', '620000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620602', '733000', '凉州区', '1', '省市区', '620600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620621', '733300', '民勤县', '1', '省市区', '620600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620622', '733100', '古浪县', '1', '省市区', '620600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620623', '733200', '天祝藏族自治县', '1', '省市区', '620600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620700', '734000', '张掖市', '1', '省市区', '620000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620702', '734000', '甘州区', '1', '省市区', '620700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620721', '734400', '肃南裕固族自治县', '1', '省市区', '620700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620722', '734500', '民乐县', '1', '省市区', '620700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620723', '734200', '临泽县', '1', '省市区', '620700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620724', '734300', '高台县', '1', '省市区', '620700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620725', '734100', '山丹县', '1', '省市区', '620700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620800', '744000', '平凉市', '1', '省市区', '620000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620802', '744000', '崆峒区', '1', '省市区', '620800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620821', '744300', '泾川县', '1', '省市区', '620800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620822', '744400', '灵台县', '1', '省市区', '620800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620823', '744200', '崇信县', '1', '省市区', '620800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620824', '744100', '华亭县', '1', '省市区', '620800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620825', '744600', '庄浪县', '1', '省市区', '620800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620826', '743400', '静宁县', '1', '省市区', '620800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620900', '735000', '酒泉市', '1', '省市区', '620000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620902', '735000', '肃州区', '1', '省市区', '620900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620921', '735300', '金塔县', '1', '省市区', '620900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620922', '736100', '瓜州县', '1', '省市区', '620900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620923', '736300', '肃北蒙古族自治县', '1', '省市区', '620900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620924', '736400', '阿克塞哈萨克族自治县', '1', '省市区', '620900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620981', '735200', '玉门市', '1', '省市区', '620900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('620982', '736200', '敦煌市', '1', '省市区', '620900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621000', '745000', '庆阳市', '1', '省市区', '620000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621002', '745000', '西峰区', '1', '省市区', '621000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621021', '745100', '庆城县', '1', '省市区', '621000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621022', '745700', '环县', '1', '省市区', '621000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621023', '745600', '华池县', '1', '省市区', '621000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621024', '745400', '合水县', '1', '省市区', '621000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621025', '745300', '正宁县', '1', '省市区', '621000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621026', '745200', '宁县', '1', '省市区', '621000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621027', '744500', '镇原县', '1', '省市区', '621000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621100', '743000', '定西市', '1', '省市区', '620000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621102', '743000', '安定区', '1', '省市区', '621100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621121', '743300', '通渭县', '1', '省市区', '621100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621122', '748100', '陇西县', '1', '省市区', '621100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621123', '748200', '渭源县', '1', '省市区', '621100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621124', '730500', '临洮县', '1', '省市区', '621100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621125', '748300', '漳县', '1', '省市区', '621100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621126', '748400', '岷县', '1', '省市区', '621100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621200', '746000', '陇南市', '1', '省市区', '620000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621202', '746000', '武都区', '1', '省市区', '621200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621221', '742500', '成县', '1', '省市区', '621200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621222', '746400', '文县', '1', '省市区', '621200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621223', '748500', '宕昌县', '1', '省市区', '621200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621224', '746500', '康县', '1', '省市区', '621200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621225', '742100', '西和县', '1', '省市区', '621200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621226', '742200', '礼县', '1', '省市区', '621200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621227', '742300', '徽县', '1', '省市区', '621200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('621228', '742400', '两当县', '1', '省市区', '621200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('622900', '731100', '临夏回族自治州', '1', '省市区', '620000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('622901', '731100', '临夏市', '1', '省市区', '622900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('622921', '731800', '临夏县', '1', '省市区', '622900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('622922', '731500', '康乐县', '1', '省市区', '622900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('622923', '731600', '永靖县', '1', '省市区', '622900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('622924', '731300', '广河县', '1', '省市区', '622900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('622925', '731200', '和政县', '1', '省市区', '622900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('622926', '731400', '东乡族自治县', '1', '省市区', '622900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('622927', '731700', '积石山保安族东乡族撒拉族自治县', '1', '省市区', '622900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('623000', '747000', '甘南藏族自治州', '1', '省市区', '620000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('623001', '747000', '合作市', '1', '省市区', '623000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('623021', '747500', '临潭县', '1', '省市区', '623000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('623022', '747600', '卓尼县', '1', '省市区', '623000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('623023', '746300', '舟曲县', '1', '省市区', '623000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('623024', '747400', '迭部县', '1', '省市区', '623000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('623025', '747300', '玛曲县', '1', '省市区', '623000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('623026', '747200', '碌曲县', '1', '省市区', '623000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('623027', '747100', '夏河县', '1', '省市区', '623000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('630000', '', '青海省', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('630100', '810000', '西宁市', '1', '省市区', '630000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('630102', '810007', '城东区', '1', '省市区', '630100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('630103', '810000', '城中区', '1', '省市区', '630100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('630104', '810001', '城西区', '1', '省市区', '630100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('630105', '810003', '城北区', '1', '省市区', '630100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('630121', '810100', '大通回族土族自治县', '1', '省市区', '630100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('630122', '811600', '湟中县', '1', '省市区', '630100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('630123', '812100', '湟源县', '1', '省市区', '630100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('630200', '810700', '海东市', '1', '省市区', '630000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('630202', '810700', '乐都区', '1', '省市区', '630200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('630221', '810600', '平安县', '1', '省市区', '630200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('630222', '810800', '民和回族土族自治县', '1', '省市区', '630200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('630223', '810500', '互助土族自治县', '1', '省市区', '630200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('630224', '810900', '化隆回族自治县', '1', '省市区', '630200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('630225', '811100', '循化撒拉族自治县', '1', '省市区', '630200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632200', '812200', '海北藏族自治州', '1', '省市区', '630000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632221', '810300', '门源回族自治县', '1', '省市区', '632200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632222', '810400', '祁连县', '1', '省市区', '632200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632223', '812200', '海晏县', '1', '省市区', '632200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632224', '812300', '刚察县', '1', '省市区', '632200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632300', '811300', '黄南藏族自治州', '1', '省市区', '630000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632321', '811300', '同仁县', '1', '省市区', '632300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632322', '811200', '尖扎县', '1', '省市区', '632300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632323', '811400', '泽库县', '1', '省市区', '632300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632324', '811500', '河南蒙古族自治县', '1', '省市区', '632300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632500', '813000', '海南藏族自治州', '1', '省市区', '630000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632521', '813000', '共和县', '1', '省市区', '632500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632522', '813200', '同德县', '1', '省市区', '632500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632523', '811700', '贵德县', '1', '省市区', '632500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632524', '813300', '兴海县', '1', '省市区', '632500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632525', '813100', '贵南县', '1', '省市区', '632500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632600', '814000', '果洛藏族自治州', '1', '省市区', '630000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632621', '814000', '玛沁县', '1', '省市区', '632600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632622', '814300', '班玛县', '1', '省市区', '632600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632623', '814100', '甘德县', '1', '省市区', '632600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632624', '814200', '达日县', '1', '省市区', '632600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632625', '624700', '久治县', '1', '省市区', '632600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632626', '813500', '玛多县', '1', '省市区', '632600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632700', '815000', '玉树藏族自治州', '1', '省市区', '630000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632701', '815000', '玉树市', '1', '省市区', '632700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632722', '815300', '杂多县', '1', '省市区', '632700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632723', '815100', '称多县', '1', '省市区', '632700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632724', '815400', '治多县', '1', '省市区', '632700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632725', '815200', '囊谦县', '1', '省市区', '632700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632726', '815500', '曲麻莱县', '1', '省市区', '632700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632800', '817000', '海西蒙古族藏族自治州', '1', '省市区', '630000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632801', '816000', '格尔木市', '1', '省市区', '632800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632802', '817000', '德令哈市', '1', '省市区', '632800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632821', '817100', '乌兰县', '1', '省市区', '632800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632822', '816100', '都兰县', '1', '省市区', '632800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('632823', '817200', '天峻县', '1', '省市区', '632800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640000', '', '宁夏回族自治区', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640100', '750004', '银川市', '1', '省市区', '640000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640104', '750001', '兴庆区', '1', '省市区', '640100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640105', '750021', '西夏区', '1', '省市区', '640100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640106', '750011', '金凤区', '1', '省市区', '640100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640121', '750100', '永宁县', '1', '省市区', '640100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640122', '750200', '贺兰县', '1', '省市区', '640100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640181', '750004', '灵武市', '1', '省市区', '640100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640200', '753000', '石嘴山市', '1', '省市区', '640000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640202', '753000', '大武口区', '1', '省市区', '640200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640205', '753600', '惠农区', '1', '省市区', '640200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640221', '753400', '平罗县', '1', '省市区', '640200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640300', '751100', '吴忠市', '1', '省市区', '640000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640302', '751100', '利通区', '1', '省市区', '640300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640303', '751900', '红寺堡区', '1', '省市区', '640300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640323', '751500', '盐池县', '1', '省市区', '640300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640324', '751300', '同心县', '1', '省市区', '640300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640381', '751600', '青铜峡市', '1', '省市区', '640300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640400', '756000', '固原市', '1', '省市区', '640000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640402', '756000', '原州区', '1', '省市区', '640400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640422', '756200', '西吉县', '1', '省市区', '640400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640423', '756300', '隆德县', '1', '省市区', '640400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640424', '756400', '泾源县', '1', '省市区', '640400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640425', '756500', '彭阳县', '1', '省市区', '640400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640500', '751700', '中卫市', '1', '省市区', '640000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640502', '755000', '沙坡头区', '1', '省市区', '640500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640521', '751200', '中宁县', '1', '省市区', '640500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('640522', '751800', '海原县', '1', '省市区', '640500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('650000', '', '新疆维吾尔自治区', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('650100', '830002', '乌鲁木齐市', '1', '省市区', '650000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('650102', '830002', '天山区', '1', '省市区', '650100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('650103', '830000', '沙依巴克区', '1', '省市区', '650100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('650104', '830011', '新市区', '1', '省市区', '650100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('650105', '830017', '水磨沟区', '1', '省市区', '650100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('650106', '830022', '头屯河区', '1', '省市区', '650100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('650107', '830039', '达坂城区', '1', '省市区', '650100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('650109', '830019', '米东区', '1', '省市区', '650100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('650121', '830063', '乌鲁木齐县', '1', '省市区', '650100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('650200', '834000', '克拉玛依市', '1', '省市区', '650000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('650202', '834021', '独山子区', '1', '省市区', '650200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('650203', '834000', '克拉玛依区', '1', '省市区', '650200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('650204', '834008', '白碱滩区', '1', '省市区', '650200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('650205', '834012', '乌尔禾区', '1', '省市区', '650200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652100', '838000', '吐鲁番地区', '1', '省市区', '650000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652101', '838000', '吐鲁番市', '1', '省市区', '652100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652122', '838200', '鄯善县', '1', '省市区', '652100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652123', '838100', '托克逊县', '1', '省市区', '652100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652200', '839000', '哈密地区', '1', '省市区', '650000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652201', '839000', '哈密市', '1', '省市区', '652200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652222', '839200', '巴里坤哈萨克自治县', '1', '省市区', '652200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652223', '839300', '伊吾县', '1', '省市区', '652200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652300', '831100', '昌吉回族自治州', '1', '省市区', '650000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652301', '831100', '昌吉市', '1', '省市区', '652300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652302', '831500', '阜康市', '1', '省市区', '652300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652323', '831200', '呼图壁县', '1', '省市区', '652300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652324', '832200', '玛纳斯县', '1', '省市区', '652300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652325', '831800', '奇台县', '1', '省市区', '652300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652327', '831700', '吉木萨尔县', '1', '省市区', '652300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652328', '831900', '木垒哈萨克自治县', '1', '省市区', '652300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652700', '833400', '博尔塔拉蒙古自治州', '1', '省市区', '650000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652701', '833400', '博乐市', '1', '省市区', '652700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652702', '833400', '阿拉山口市', '1', '省市区', '652700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652722', '833300', '精河县', '1', '省市区', '652700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652723', '833500', '温泉县', '1', '省市区', '652700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652800', '841000', '巴音郭楞蒙古自治州', '1', '省市区', '650000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652801', '841000', '库尔勒市', '1', '省市区', '652800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652822', '841600', '轮台县', '1', '省市区', '652800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652823', '841500', '尉犁县', '1', '省市区', '652800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652824', '841800', '若羌县', '1', '省市区', '652800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652825', '841900', '且末县', '1', '省市区', '652800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652826', '841100', '焉耆回族自治县', '1', '省市区', '652800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652827', '841300', '和静县', '1', '省市区', '652800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652828', '841200', '和硕县', '1', '省市区', '652800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652829', '841400', '博湖县', '1', '省市区', '652800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652900', '843000', '阿克苏地区', '1', '省市区', '650000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652901', '843000', '阿克苏市', '1', '省市区', '652900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652922', '843100', '温宿县', '1', '省市区', '652900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652923', '842000', '库车县', '1', '省市区', '652900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652924', '842200', '沙雅县', '1', '省市区', '652900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652925', '842100', '新和县', '1', '省市区', '652900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652926', '842300', '拜城县', '1', '省市区', '652900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652927', '843400', '乌什县', '1', '省市区', '652900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652928', '843200', '阿瓦提县', '1', '省市区', '652900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('652929', '843600', '柯坪县', '1', '省市区', '652900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653000', '845350', '克孜勒苏柯尔克孜自治州', '1', '省市区', '650000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653001', '845350', '阿图什市', '1', '省市区', '653000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653022', '845550', '阿克陶县', '1', '省市区', '653000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653023', '843500', '阿合奇县', '1', '省市区', '653000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653024', '845450', '乌恰县', '1', '省市区', '653000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653100', '844000', '喀什地区', '1', '省市区', '650000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653101', '844000', '喀什市', '1', '省市区', '653100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653121', '844100', '疏附县', '1', '省市区', '653100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653122', '844200', '疏勒县', '1', '省市区', '653100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653123', '844500', '英吉沙县', '1', '省市区', '653100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653124', '844800', '泽普县', '1', '省市区', '653100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653125', '844700', '莎车县', '1', '省市区', '653100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653126', '844900', '叶城县', '1', '省市区', '653100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653127', '844600', '麦盖提县', '1', '省市区', '653100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653128', '844400', '岳普湖县', '1', '省市区', '653100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653129', '844300', '伽师县', '1', '省市区', '653100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653130', '843800', '巴楚县', '1', '省市区', '653100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653131', '845250', '塔什库尔干塔吉克自治县', '1', '省市区', '653100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653200', '848000', '和田地区', '1', '省市区', '650000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653201', '848000', '和田市', '1', '省市区', '653200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653221', '848000', '和田县', '1', '省市区', '653200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653222', '848100', '墨玉县', '1', '省市区', '653200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653223', '845150', '皮山县', '1', '省市区', '653200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653224', '848200', '洛浦县', '1', '省市区', '653200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653225', '848300', '策勒县', '1', '省市区', '653200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653226', '848400', '于田县', '1', '省市区', '653200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('653227', '848500', '民丰县', '1', '省市区', '653200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654000', '835100', '伊犁哈萨克自治州', '1', '省市区', '650000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654002', '835000', '伊宁市', '1', '省市区', '654000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654003', '833200', '奎屯市', '1', '省市区', '654000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654004', '835221', '霍尔果斯市', '1', '省市区', '654000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654021', '835100', '伊宁县', '1', '省市区', '654000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654022', '835300', '察布查尔锡伯自治县', '1', '省市区', '654000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654023', '835200', '霍城县', '1', '省市区', '654000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654024', '835400', '巩留县', '1', '省市区', '654000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654025', '835800', '新源县', '1', '省市区', '654000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654026', '835600', '昭苏县', '1', '省市区', '654000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654027', '835500', '特克斯县', '1', '省市区', '654000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654028', '835700', '尼勒克县', '1', '省市区', '654000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654200', '834700', '塔城地区', '1', '省市区', '650000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654201', '834700', '塔城市', '1', '省市区', '654200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654202', '833000', '乌苏市', '1', '省市区', '654200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654221', '834600', '额敏县', '1', '省市区', '654200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654223', '832100', '沙湾县', '1', '省市区', '654200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654224', '834500', '托里县', '1', '省市区', '654200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654225', '834800', '裕民县', '1', '省市区', '654200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654226', '834400', '和布克赛尔蒙古自治县', '1', '省市区', '654200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654300', '836500', '阿勒泰地区', '1', '省市区', '650000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654301', '836500', '阿勒泰市', '1', '省市区', '654300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654321', '836600', '布尔津县', '1', '省市区', '654300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654322', '836100', '富蕴县', '1', '省市区', '654300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654323', '836400', '福海县', '1', '省市区', '654300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654324', '836700', '哈巴河县', '1', '省市区', '654300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654325', '836200', '青河县', '1', '省市区', '654300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('654326', '836800', '吉木乃县', '1', '省市区', '654300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('659000', '', '直辖县级', '1', '省市区', '650000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('659001', '832000', '石河子市', '1', '省市区', '659000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('659002', '843300', '阿拉尔市', '1', '省市区', '659000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('659003', '843806', '图木舒克市', '1', '省市区', '659000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('659004', '831300', '五家渠市', '1', '省市区', '659000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('659005', '836000', '北屯市', '1', '省市区', '659000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('659006', '836000', '铁门关市', '1', '省市区', '659000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('659007', '833408', '双河市', '1', '省市区', '659000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('7', '7', '4座', '4', '汽车座位数', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('710000', '', '台湾', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710100', '1', '台北市', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710101', '105', '松山区', '1', '省市区', '710100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710102', '110', '信义区', '1', '省市区', '710100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710103', '106', '大安区', '1', '省市区', '710100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710104', '104', '中山区', '1', '省市区', '710100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710105', '100', '中正区', '1', '省市区', '710100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710106', '103', '大同区', '1', '省市区', '710100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710107', '108', '万华区', '1', '省市区', '710100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710108', '116', '文山区', '1', '省市区', '710100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710109', '115', '南港区', '1', '省市区', '710100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710110', '114', '内湖区', '1', '省市区', '710100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710111', '111', '士林区', '1', '省市区', '710100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710112', '112', '北投区', '1', '省市区', '710100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710200', '8', '高雄市', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710201', '803', '盐埕区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710202', '804', '鼓山区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710203', '813', '左营区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710204', '811', '楠梓区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710205', '807', '三民区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710206', '800', '新兴区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710207', '801', '前金区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710208', '802', '苓雅区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710209', '806', '前镇区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710210', '805', '旗津区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710211', '812', '小港区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710212', '830', '凤山区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710213', '832', '林园区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710214', '831', '大寮区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710215', '840', '大树区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710216', '815', '大社区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710217', '814', '仁武区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710218', '833', '鸟松区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710219', '820', '冈山区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710220', '825', '桥头区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710221', '824', '燕巢区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710222', '823', '田寮区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710223', '822', '阿莲区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710224', '821', '路竹区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710225', '829', '湖内区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710226', '852', '茄萣区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710227', '828', '永安区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710228', '827', '弥陀区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710229', '826', '梓官区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710230', '842', '旗山区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710231', '843', '美浓区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710232', '844', '六龟区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710233', '847', '甲仙区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710234', '846', '杉林区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710235', '845', '内门区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710236', '851', '茂林区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710237', '848', '桃源区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710238', '849', '那玛夏区', '1', '省市区', '710200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710300', '2', '基隆市', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710301', '202', '中正区', '1', '省市区', '710300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710302', '206', '七堵区', '1', '省市区', '710300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710303', '205', '暖暖区', '1', '省市区', '710300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710304', '200', '仁爱区', '1', '省市区', '710300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710305', '203', '中山区', '1', '省市区', '710300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710306', '204', '安乐区', '1', '省市区', '710300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710307', '201', '信义区', '1', '省市区', '710300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710400', '4', '台中市', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710401', '400', '中区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710402', '401', '东区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710403', '402', '南区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710404', '403', '西区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710405', '404', '北区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710406', '407', '西屯区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710407', '408', '南屯区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710408', '406', '北屯区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710409', '420', '丰原区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710410', '423', '东势区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710411', '437', '大甲区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710412', '436', '清水区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710413', '433', '沙鹿区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710414', '435', '梧栖区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710415', '421', '后里区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710416', '429', '神冈区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710417', '427', '潭子区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710418', '428', '大雅区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710419', '426', '新社区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710420', '422', '石冈区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710421', '438', '外埔区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710422', '439', '大安区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710423', '414', '乌日区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710424', '432', '大肚区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710425', '434', '龙井区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710426', '413', '雾峰区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710427', '411', '太平区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710428', '412', '大里区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710429', '424', '和平区', '1', '省市区', '710400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710500', '7', '台南市', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710501', '701', '东区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710502', '702', '南区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710504', '704', '北区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710506', '709', '安南区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710507', '708', '安平区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710508', '700', '中西区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710509', '730', '新营区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710510', '737', '盐水区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710511', '732', '白河区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710512', '736', '柳营区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710513', '731', '后壁区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710514', '733', '东山区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710515', '721', '麻豆区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710516', '735', '下营区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710517', '734', '六甲区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710518', '720', '官田区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710519', '742', '大内区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710520', '722', '佳里区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710521', '726', '学甲区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710522', '723', '西港区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710523', '724', '七股区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710524', '725', '将军区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710525', '727', '北门区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710526', '712', '新化区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710527', '741', '善化区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710528', '744', '新市区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710529', '745', '安定区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710530', '743', '山上区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710531', '714', '玉井区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710532', '715', '楠西区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710533', '716', '南化区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710534', '713', '左镇区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710535', '717', '仁德区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710536', '711', '归仁区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710537', '718', '关庙区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710538', '719', '龙崎区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710539', '710', '永康区', '1', '省市区', '710500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710600', '3', '新竹市', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710601', '300', '东区', '1', '省市区', '710600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710602', '', '北区', '1', '省市区', '710600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710603', '', '香山区', '1', '省市区', '710600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710700', '6', '嘉义市', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710701', '600', '东区', '1', '省市区', '710700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710702', '600', '西区', '1', '省市区', '710700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710800', '2', '新北市', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710801', '220', '板桥区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710802', '241', '三重区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710803', '235', '中和区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710804', '234', '永和区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710805', '242', '新庄区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710806', '231', '新店区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710807', '238', '树林区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710808', '239', '莺歌区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710809', '237', '三峡区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710810', '251', '淡水区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710811', '221', '汐止区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710812', '224', '瑞芳区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710813', '236', '土城区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710814', '247', '芦洲区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710815', '248', '五股区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710816', '243', '泰山区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710817', '244', '林口区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710818', '222', '深坑区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710819', '223', '石碇区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710820', '232', '坪林区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710821', '252', '三芝区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710822', '253', '石门区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710823', '249', '八里区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710824', '226', '平溪区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710825', '227', '双溪区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710826', '228', '贡寮区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710827', '208', '金山区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710828', '207', '万里区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('710829', '233', '乌来区', '1', '省市区', '710800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712200', '2', '宜兰县', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712201', '260', '宜兰市', '1', '省市区', '712200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712221', '265', '罗东镇', '1', '省市区', '712200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712222', '270', '苏澳镇', '1', '省市区', '712200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712223', '261', '头城镇', '1', '省市区', '712200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712224', '262', '礁溪乡', '1', '省市区', '712200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712225', '263', '壮围乡', '1', '省市区', '712200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712226', '264', '员山乡', '1', '省市区', '712200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712227', '269', '冬山乡', '1', '省市区', '712200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712228', '268', '五结乡', '1', '省市区', '712200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712229', '266', '三星乡', '1', '省市区', '712200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712230', '267', '大同乡', '1', '省市区', '712200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712231', '272', '南澳乡', '1', '省市区', '712200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712300', '3', '桃园县', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712301', '330', '桃园市', '1', '省市区', '712300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712302', '320', '中坜市', '1', '省市区', '712300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712303', '324', '平镇市', '1', '省市区', '712300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712304', '334', '八德市', '1', '省市区', '712300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712305', '326', '杨梅市', '1', '省市区', '712300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712306', '338', '芦竹市', '1', '省市区', '712300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712321', '335', '大溪镇', '1', '省市区', '712300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712324', '337', '大园乡', '1', '省市区', '712300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712325', '333', '龟山乡', '1', '省市区', '712300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712327', '325', '龙潭乡', '1', '省市区', '712300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712329', '327', '新屋乡', '1', '省市区', '712300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712330', '328', '观音乡', '1', '省市区', '712300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712331', '336', '复兴乡', '1', '省市区', '712300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712400', '3', '新竹县', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712401', '302', '竹北市', '1', '省市区', '712400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712421', '310', '竹东镇', '1', '省市区', '712400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712422', '305', '新埔镇', '1', '省市区', '712400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712423', '306', '关西镇', '1', '省市区', '712400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712424', '303', '湖口乡', '1', '省市区', '712400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712425', '304', '新丰乡', '1', '省市区', '712400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712426', '307', '芎林乡', '1', '省市区', '712400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712427', '312', '横山乡', '1', '省市区', '712400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712428', '314', '北埔乡', '1', '省市区', '712400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712429', '308', '宝山乡', '1', '省市区', '712400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712430', '315', '峨眉乡', '1', '省市区', '712400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712431', '313', '尖石乡', '1', '省市区', '712400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712432', '311', '五峰乡', '1', '省市区', '712400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712500', '3', '苗栗县', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712501', '360', '苗栗市', '1', '省市区', '712500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712521', '358', '苑里镇', '1', '省市区', '712500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712522', '357', '通霄镇', '1', '省市区', '712500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712523', '350', '竹南镇', '1', '省市区', '712500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712524', '351', '头份镇', '1', '省市区', '712500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712525', '356', '后龙镇', '1', '省市区', '712500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712526', '369', '卓兰镇', '1', '省市区', '712500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712527', '364', '大湖乡', '1', '省市区', '712500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712528', '363', '公馆乡', '1', '省市区', '712500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712529', '366', '铜锣乡', '1', '省市区', '712500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712530', '353', '南庄乡', '1', '省市区', '712500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712531', '362', '头屋乡', '1', '省市区', '712500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712532', '367', '三义乡', '1', '省市区', '712500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712533', '368', '西湖乡', '1', '省市区', '712500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712534', '361', '造桥乡', '1', '省市区', '712500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712535', '352', '三湾乡', '1', '省市区', '712500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712536', '354', '狮潭乡', '1', '省市区', '712500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712537', '365', '泰安乡', '1', '省市区', '712500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712700', '5', '彰化县', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712701', '500', '彰化市', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712721', '505', '鹿港镇', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712722', '508', '和美镇', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712723', '507', '线西乡', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712724', '509', '伸港乡', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712725', '506', '福兴乡', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712726', '504', '秀水乡', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712727', '503', '花坛乡', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712728', '502', '芬园乡', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712729', '510', '员林镇', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712730', '514', '溪湖镇', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712731', '520', '田中镇', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712732', '515', '大村乡', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712733', '516', '埔盐乡', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712734', '513', '埔心乡', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712735', '512', '永靖乡', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712736', '511', '社头乡', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712737', '530', '二水乡', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712738', '521', '北斗镇', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712739', '526', '二林镇', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712740', '522', '田尾乡', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712741', '523', '埤头乡', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712742', '528', '芳苑乡', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712743', '527', '大城乡', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712744', '525', '竹塘乡', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712745', '524', '溪州乡', '1', '省市区', '712700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712800', '5', '南投县', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712801', '540', '南投市', '1', '省市区', '712800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712821', '545', '埔里镇', '1', '省市区', '712800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712822', '542', '草屯镇', '1', '省市区', '712800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712823', '557', '竹山镇', '1', '省市区', '712800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712824', '552', '集集镇', '1', '省市区', '712800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712825', '551', '名间乡', '1', '省市区', '712800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712826', '558', '鹿谷乡', '1', '省市区', '712800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712827', '541', '中寮乡', '1', '省市区', '712800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712828', '555', '鱼池乡', '1', '省市区', '712800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712829', '544', '国姓乡', '1', '省市区', '712800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712830', '553', '水里乡', '1', '省市区', '712800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712831', '556', '信义乡', '1', '省市区', '712800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712832', '546', '仁爱乡', '1', '省市区', '712800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712900', '6', '云林县', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712901', '640', '斗六市', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712921', '630', '斗南镇', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712922', '632', '虎尾镇', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712923', '648', '西螺镇', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712924', '633', '土库镇', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712925', '651', '北港镇', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712926', '646', '古坑乡', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712927', '631', '大埤乡', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712928', '647', '莿桐乡', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712929', '643', '林内乡', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712930', '649', '二仑乡', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712931', '637', '仑背乡', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712932', '638', '麦寮乡', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712933', '635', '东势乡', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712934', '634', '褒忠乡', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712935', '636', '台西乡', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712936', '655', '元长乡', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712937', '654', '四湖乡', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712938', '653', '口湖乡', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('712939', '652', '水林乡', '1', '省市区', '712900', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713000', '6', '嘉义县', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713001', '612', '太保市', '1', '省市区', '713000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713002', '613', '朴子市', '1', '省市区', '713000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713023', '625', '布袋镇', '1', '省市区', '713000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713024', '622', '大林镇', '1', '省市区', '713000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713025', '621', '民雄乡', '1', '省市区', '713000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713026', '623', '溪口乡', '1', '省市区', '713000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713027', '616', '新港乡', '1', '省市区', '713000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713028', '615', '六脚乡', '1', '省市区', '713000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713029', '614', '东石乡', '1', '省市区', '713000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713030', '624', '义竹乡', '1', '省市区', '713000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713031', '611', '鹿草乡', '1', '省市区', '713000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713032', '608', '水上乡', '1', '省市区', '713000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713033', '606', '中埔乡', '1', '省市区', '713000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713034', '604', '竹崎乡', '1', '省市区', '713000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713035', '603', '梅山乡', '1', '省市区', '713000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713036', '602', '番路乡', '1', '省市区', '713000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713037', '607', '大埔乡', '1', '省市区', '713000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713038', '605', '阿里山乡', '1', '省市区', '713000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713300', '9', '屏东县', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713301', '900', '屏东市', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713321', '920', '潮州镇', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713322', '928', '东港镇', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713323', '946', '恒春镇', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713324', '913', '万丹乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713325', '908', '长治乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713326', '909', '麟洛乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713327', '904', '九如乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713328', '905', '里港乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713329', '907', '盐埔乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713330', '906', '高树乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713331', '923', '万峦乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713332', '912', '内埔乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713333', '911', '竹田乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713334', '925', '新埤乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713335', '940', '枋寮乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713336', '932', '新园乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713337', '924', '崁顶乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713338', '927', '林边乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713339', '926', '南州乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713340', '931', '佳冬乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713341', '929', '琉球乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713342', '944', '车城乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713343', '947', '满州乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713344', '941', '枋山乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713345', '901', '三地门乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713346', '902', '雾台乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713347', '903', '玛家乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713348', '921', '泰武乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713349', '922', '来义乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713350', '942', '春日乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713351', '943', '狮子乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713352', '945', '牡丹乡', '1', '省市区', '713300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713400', '9', '台东县', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713401', '950', '台东市', '1', '省市区', '713400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713421', '961', '成功镇', '1', '省市区', '713400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713422', '956', '关山镇', '1', '省市区', '713400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713423', '954', '卑南乡', '1', '省市区', '713400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713424', '955', '鹿野乡', '1', '省市区', '713400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713425', '958', '池上乡', '1', '省市区', '713400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713426', '959', '东河乡', '1', '省市区', '713400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713427', '962', '长滨乡', '1', '省市区', '713400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713428', '963', '太麻里乡', '1', '省市区', '713400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713429', '965', '大武乡', '1', '省市区', '713400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713430', '951', '绿岛乡', '1', '省市区', '713400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713431', '957', '海端乡', '1', '省市区', '713400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713432', '953', '延平乡', '1', '省市区', '713400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713433', '964', '金峰乡', '1', '省市区', '713400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713434', '966', '达仁乡', '1', '省市区', '713400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713435', '952', '兰屿乡', '1', '省市区', '713400', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713500', '9', '花莲县', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713501', '970', '花莲市', '1', '省市区', '713500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713521', '975', '凤林镇', '1', '省市区', '713500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713522', '981', '玉里镇', '1', '省市区', '713500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713523', '971', '新城乡', '1', '省市区', '713500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713524', '973', '吉安乡', '1', '省市区', '713500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713525', '974', '寿丰乡', '1', '省市区', '713500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713526', '976', '光复乡', '1', '省市区', '713500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713527', '977', '丰滨乡', '1', '省市区', '713500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713528', '978', '瑞穗乡', '1', '省市区', '713500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713529', '983', '富里乡', '1', '省市区', '713500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713530', '972', '秀林乡', '1', '省市区', '713500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713531', '979', '万荣乡', '1', '省市区', '713500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713532', '982', '卓溪乡', '1', '省市区', '713500', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713600', '8', '澎湖县', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713601', '880', '马公市', '1', '省市区', '713600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713621', '885', '湖西乡', '1', '省市区', '713600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713622', '884', '白沙乡', '1', '省市区', '713600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713623', '881', '西屿乡', '1', '省市区', '713600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713624', '882', '望安乡', '1', '省市区', '713600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713625', '883', '七美乡', '1', '省市区', '713600', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713700', '8', '金门县', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713701', '893', '金城镇', '1', '省市区', '713700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713702', '891', '金湖镇', '1', '省市区', '713700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713703', '890', '金沙镇', '1', '省市区', '713700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713704', '892', '金宁乡', '1', '省市区', '713700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713705', '894', '烈屿乡', '1', '省市区', '713700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713706', '896', '乌丘乡', '1', '省市区', '713700', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713800', '2', '连江县', '1', '省市区', '710000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713801', '209', '南竿乡', '1', '省市区', '713800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713802', '210', '北竿乡', '1', '省市区', '713800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713803', '211', '莒光乡', '1', '省市区', '713800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('713804', '212', '东引乡', '1', '省市区', '713800', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('8', '8', '5座', '4', '汽车座位数', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('810000', '', '香港特别行政区', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810100', '999077', '香港岛', '1', '省市区', '810000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810101', '999077', '中西区', '1', '省市区', '810100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810102', '999077', '湾仔区', '1', '省市区', '810100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810103', '999077', '东区', '1', '省市区', '810100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810104', '999077', '南区', '1', '省市区', '810100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810200', '999077', '九龙', '1', '省市区', '810000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810201', '999077', '油尖旺区', '1', '省市区', '810200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810202', '999077', '深水埗区', '1', '省市区', '810200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810203', '999077', '九龙城区', '1', '省市区', '810200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810204', '999077', '黄大仙区', '1', '省市区', '810200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810205', '999077', '观塘区', '1', '省市区', '810200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810300', '999077', '新界', '1', '省市区', '810000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810301', '999077', '荃湾区', '1', '省市区', '810300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810302', '999077', '屯门区', '1', '省市区', '810300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810303', '999077', '元朗区', '1', '省市区', '810300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810304', '999077', '北区', '1', '省市区', '810300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810305', '999077', '大埔区', '1', '省市区', '810300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810306', '999077', '西贡区', '1', '省市区', '810300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810307', '999077', '沙田区', '1', '省市区', '810300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810308', '999077', '葵青区', '1', '省市区', '810300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('810309', '999077', '离岛区', '1', '省市区', '810300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('820000', '', '澳门特别行政区', '1', '省市区', '100000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('820100', '999078', '澳门半岛', '1', '省市区', '820000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('820101', '999078', '花地玛堂区', '1', '省市区', '820100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('820102', '999078', '圣安多尼堂区', '1', '省市区', '820100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('820103', '999078', '大堂区', '1', '省市区', '820100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('820104', '999078', '望德堂区', '1', '省市区', '820100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('820105', '999078', '风顺堂区', '1', '省市区', '820100', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('820200', '999078', '氹仔岛', '1', '省市区', '820000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('820201', '999078', '嘉模堂区', '1', '省市区', '820200', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('820300', '999078', '路环岛', '1', '省市区', '820000', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('820301', '999078', '圣方济各堂区', '1', '省市区', '820300', null, null, '1', null);
INSERT INTO `dictionary` VALUES ('9', '9', '8座', '4', '汽车座位数', '0', '2019-10-17', null, '1', null);
INSERT INTO `dictionary` VALUES ('900000', '', '钓鱼岛', '1', '省市区', '100000', null, null, '1', null);

-- ----------------------------
-- Table structure for `dictionary_type`
-- ----------------------------
DROP TABLE IF EXISTS `dictionary_type`;
CREATE TABLE `dictionary_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id 主键',
  `name` varchar(20) DEFAULT NULL COMMENT '字典数据类型名称',
  `create_time` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `status` int(10) DEFAULT '1' COMMENT '字典状态',
  `redundancy` varchar(20) DEFAULT NULL COMMENT '冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dictionary_type
-- ----------------------------
INSERT INTO `dictionary_type` VALUES ('1', '省市区', '2019-10-17', null, '1', null);
INSERT INTO `dictionary_type` VALUES ('2', '性别', '2019-10-17', null, '1', null);
INSERT INTO `dictionary_type` VALUES ('3', '变速器类型', '2019-10-17', null, '1', null);
INSERT INTO `dictionary_type` VALUES ('4', '座位数', '2019-10-17', null, '1', null);
INSERT INTO `dictionary_type` VALUES ('5', '车辆状态', '2019-10-17', null, '1', null);
INSERT INTO `dictionary_type` VALUES ('6', '颜色', '2019-10-17', null, '1', null);
INSERT INTO `dictionary_type` VALUES ('7', '排量', '2019-10-17', null, '1', null);
INSERT INTO `dictionary_type` VALUES ('8', '品牌', '2019-10-17', null, '1', null);
INSERT INTO `dictionary_type` VALUES ('9', '车型', '2019-10-17', null, '1', null);
INSERT INTO `dictionary_type` VALUES ('10', '燃料类型', '2019-10-17', null, '1', null);
INSERT INTO `dictionary_type` VALUES ('11', '驱动方式', '2019-10-17', null, '1', null);

-- ----------------------------
-- Table structure for `discount`
-- ----------------------------
DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount` (
  `id` varchar(2) NOT NULL COMMENT '优惠表的主键id',
  `name` varchar(10) DEFAULT NULL COMMENT '优惠券名称',
  `purpose` varchar(10) DEFAULT NULL COMMENT '优惠券的用途(都适用于那种车辆类型)',
  `need_intergral` varchar(10) DEFAULT NULL COMMENT '需要的积分',
  `discount_amount` varchar(10) DEFAULT NULL COMMENT '折扣额度',
  `create_time` varchar(10) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(10) DEFAULT NULL COMMENT '修改时间',
  `status` int(10) DEFAULT NULL COMMENT '1正常 2禁用 3删除',
  `redundancy` varchar(10) DEFAULT NULL COMMENT '冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of discount
-- ----------------------------

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` varchar(2) NOT NULL COMMENT '日志id，主键',
  `log_number` varchar(10) DEFAULT NULL COMMENT '日志编号',
  `operate_id` varchar(10) NOT NULL COMMENT '进行操作用户的id，外键',
  `operate_ip` varchar(10) DEFAULT NULL COMMENT '进行操作的ip地址',
  `operate_content` varchar(10) DEFAULT NULL COMMENT '进行操作的内容',
  `operate_time` varchar(10) DEFAULT NULL COMMENT '进行操作的时间',
  `create_time` varchar(10) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(10) DEFAULT NULL COMMENT '修改时间',
  `status` varchar(10) DEFAULT NULL COMMENT '1正常 2禁用 3删除',
  `redundancy` varchar(10) DEFAULT NULL COMMENT '冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of log
-- ----------------------------

-- ----------------------------
-- Table structure for `management`
-- ----------------------------
DROP TABLE IF EXISTS `management`;
CREATE TABLE `management` (
  `id` varchar(10) NOT NULL COMMENT '管理员表的id，主键',
  `job_number` varchar(10) DEFAULT NULL COMMENT '管理员的工号',
  `username` varchar(10) DEFAULT NULL COMMENT '管理员名称',
  `password` varchar(10) DEFAULT NULL COMMENT '管理员密码',
  `sex` int(2) DEFAULT NULL COMMENT '1为男，2为女',
  `genre` int(2) DEFAULT NULL COMMENT '1为业务员，2为管理员',
  `store_id` varchar(10) NOT NULL COMMENT '管理员所属门店的id，外键',
  `create_time` varchar(10) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(10) DEFAULT NULL COMMENT '修改时间',
  `status` varchar(10) DEFAULT NULL COMMENT '1正常 2禁用 3删除',
  `redundancy` varchar(10) DEFAULT NULL COMMENT '冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of management
-- ----------------------------
INSERT INTO `management` VALUES ('1', null, 'admin', '123456', null, null, '1', null, null, null, null);

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` varchar(20) NOT NULL COMMENT '订单id',
  `user_id` varchar(20) NOT NULL COMMENT '用户id',
  `car_id` varchar(20) NOT NULL COMMENT '车辆id',
  `order_number` varchar(20) NOT NULL COMMENT '订单编号',
  `get_cat_time` varchar(20) DEFAULT NULL COMMENT '取车时间',
  `return_cat_time` varchar(20) DEFAULT NULL COMMENT '还车时间',
  `order_status` varchar(20) DEFAULT NULL COMMENT '订单状态',
  `create_time` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `status` int(20) DEFAULT '1' COMMENT '状态',
  `redundance` varchar(20) DEFAULT NULL COMMENT '冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for `order_info`
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` varchar(20) NOT NULL COMMENT '订单id',
  `m_id` varchar(20) NOT NULL COMMENT '管理员id',
  `payment_method` varchar(20) DEFAULT NULL COMMENT '支付方式',
  `order_time` varchar(20) DEFAULT NULL COMMENT '下单时间',
  `payment_time` varchar(20) DEFAULT NULL COMMENT '付款时间',
  `set_meal` varchar(20) DEFAULT NULL COMMENT '套餐ID',
  `additiona_services` varchar(20) DEFAULT NULL COMMENT '附加服务',
  `rental_days` int(20) DEFAULT NULL COMMENT '租借天数',
  `get_cat_storeId` varchar(20) DEFAULT NULL COMMENT '取车门店ID',
  `return_cat_storeId` varchar(20) DEFAULT NULL COMMENT '还车门店ID',
  `total_price` double DEFAULT NULL COMMENT '订单总价',
  `discount` double DEFAULT NULL COMMENT '折扣',
  `actual_payment` double DEFAULT NULL COMMENT '实付款',
  `vehicle_info` varchar(20) DEFAULT NULL COMMENT '车辆信息评分',
  `service_score` varchar(20) DEFAULT NULL COMMENT '业务员服务评分',
  `create_time` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `status` int(20) DEFAULT '1' COMMENT '状态',
  `redundance` varchar(20) DEFAULT NULL COMMENT '冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_info
-- ----------------------------

-- ----------------------------
-- Table structure for `order_pledge`
-- ----------------------------
DROP TABLE IF EXISTS `order_pledge`;
CREATE TABLE `order_pledge` (
  `id` varchar(20) NOT NULL COMMENT '主键，同时orde表的外键',
  `fuel` double(15,5) DEFAULT '0.00000' COMMENT '燃油费：如油箱不满需补足差价',
  `fuel_service` double(15,5) DEFAULT '0.00000' COMMENT '燃油服务费:如油箱不满需提供100元燃油服务费',
  `repair` double(15,5) DEFAULT '0.00000' COMMENT '车辆修理费用',
  `total` double(15,5) DEFAULT '0.00000' COMMENT '合计费用',
  `create_time` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `status` int(1) DEFAULT '1' COMMENT '订单状态',
  `redundancy` varchar(20) DEFAULT NULL COMMENT '冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_pledge
-- ----------------------------

-- ----------------------------
-- Table structure for `promission`
-- ----------------------------
DROP TABLE IF EXISTS `promission`;
CREATE TABLE `promission` (
  `id` varchar(10) NOT NULL COMMENT '权限的id',
  `promission_name` varchar(10) DEFAULT NULL COMMENT '权限的名称（book:update）',
  `description` varchar(20) DEFAULT NULL COMMENT '对权限的描述',
  `url` varchar(20) DEFAULT NULL COMMENT 'controller请求路径（/user/update）',
  `resource` varchar(20) DEFAULT NULL COMMENT '资源类型（menu，button，root）',
  `pid` int(5) DEFAULT NULL COMMENT '父节点',
  `create_time` varchar(20) DEFAULT NULL COMMENT '该表创建时间',
  `update_time` varchar(20) DEFAULT NULL COMMENT '该表修改时间',
  `status` int(5) DEFAULT '1' COMMENT 'status（1正常 2禁用 3删除）',
  `redundancy` varchar(20) DEFAULT NULL COMMENT '冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of promission
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(20) NOT NULL COMMENT '角色表的id',
  `role_name` varchar(10) DEFAULT NULL COMMENT '角色的名称',
  `description` varchar(20) DEFAULT NULL COMMENT '对角色的描述',
  `create_time` varchar(20) DEFAULT NULL COMMENT '该表创建的时间',
  `update_time` varchar(20) DEFAULT NULL COMMENT '该表修改的时间',
  `status` int(5) DEFAULT '1' COMMENT 'status（1正常 2禁用 3删除）',
  `redundancy` varchar(20) DEFAULT NULL COMMENT '冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for `role_promission`
-- ----------------------------
DROP TABLE IF EXISTS `role_promission`;
CREATE TABLE `role_promission` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '表的id',
  `role_id` varchar(10) NOT NULL COMMENT '外键，引入role的id',
  `promission_id` varchar(10) NOT NULL COMMENT '外键，引入promission的id',
  `create_time` varchar(10) DEFAULT NULL COMMENT '该表的创建时间',
  `update_time` varchar(10) DEFAULT NULL COMMENT '该表的修改时间',
  `status` int(5) DEFAULT '1' COMMENT 'status（1正常 2禁用 3删除）',
  `redundancy` varchar(20) DEFAULT NULL COMMENT '冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of role_promission
-- ----------------------------

-- ----------------------------
-- Table structure for `service_charge`
-- ----------------------------
DROP TABLE IF EXISTS `service_charge`;
CREATE TABLE `service_charge` (
  `id` varchar(20) NOT NULL COMMENT '表编号',
  `rent` varchar(20) DEFAULT NULL COMMENT '租车日费用',
  `section` varchar(20) DEFAULT NULL COMMENT '服务费',
  `deposit` varchar(20) DEFAULT NULL COMMENT '押金',
  `create_time` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `status` int(20) DEFAULT '1' COMMENT '状态',
  `redundance` varchar(20) DEFAULT NULL COMMENT '冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of service_charge
-- ----------------------------

-- ----------------------------
-- Table structure for `store`
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `id` varchar(20) NOT NULL COMMENT '门店信息id',
  `store_location` varchar(20) DEFAULT NULL COMMENT '对门店位置的描述',
  `longitude` varchar(20) DEFAULT NULL COMMENT '门店的经纬度',
  `create_time` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `status` int(20) DEFAULT '1' COMMENT '状态',
  `redundance` varchar(20) DEFAULT NULL COMMENT '冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of store
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(10) NOT NULL DEFAULT ' ' COMMENT '主键',
  `phone` varchar(20) DEFAULT NULL COMMENT '用户手机号',
  `username` varchar(20) DEFAULT NULL COMMENT '用户昵称',
  `password` varchar(20) DEFAULT NULL COMMENT '用户登陆密码',
  `salt` varchar(20) DEFAULT NULL COMMENT '盐值',
  `create_time` varchar(20) DEFAULT NULL COMMENT '新增时间',
  `update_time` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `redundance` varchar(20) DEFAULT NULL COMMENT '冗余字段',
  `status` int(2) DEFAULT '1' COMMENT '状态（1正常 2禁用 3删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', null, 'zhangsan', '123456', 'zhangsan', null, null, null, '1');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` varchar(10) NOT NULL COMMENT '主键ID',
  `name` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `user_id` varchar(10) NOT NULL COMMENT 'user外键id',
  `sex` int(2) DEFAULT NULL COMMENT '性别',
  `mail` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `contacts_name` varchar(20) DEFAULT NULL COMMENT '紧急联系人姓名',
  `contacts_phone` varchar(20) DEFAULT NULL COMMENT '紧急联系人电话',
  `id_pic_a` varchar(30) DEFAULT NULL COMMENT '身份证正面地址',
  `id_pic_b` varchar(30) DEFAULT NULL COMMENT '身份证反面地址',
  `driving_license_a` varchar(30) DEFAULT NULL COMMENT '驾驶证正面地址',
  `driving_license_b` varchar(30) DEFAULT NULL COMMENT '驾驶证反面地址',
  `redundance` varchar(10) DEFAULT NULL COMMENT '冗余字段',
  `create_time` varchar(10) DEFAULT NULL COMMENT '新增时间',
  `update_time` varchar(10) DEFAULT NULL COMMENT '修改时间',
  `status` int(2) DEFAULT '1' COMMENT '状态（1正常 2禁用 3删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_info
-- ----------------------------

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` varchar(20) NOT NULL COMMENT '该表的主键',
  `user_id` varchar(20) NOT NULL COMMENT '外键，引入user的id',
  `role_id` varchar(20) NOT NULL COMMENT '外键，引入role的id',
  `create_time` varchar(20) DEFAULT NULL COMMENT '该表的创建时间',
  `update_time` varchar(20) DEFAULT NULL COMMENT '该表的修改时间',
  `status` int(5) DEFAULT '1' COMMENT 'status（1正常 2禁用 3删除）',
  `redundancy` varchar(20) DEFAULT NULL COMMENT '冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_role
-- ----------------------------

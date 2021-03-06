/*
Navicat MySQL Data Transfer

Source Server         : StudentScore
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : studentscores

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-01-02 11:15:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for student_between_group
-- ----------------------------
DROP TABLE IF EXISTS `student_between_group`;
CREATE TABLE `student_between_group` (
  `Tester_ID` varchar(12) NOT NULL COMMENT '测评人学号',
  `Tester_Name` varchar(10) DEFAULT NULL COMMENT '测评人姓名',
  `EvaluObj_ID` varchar(12) NOT NULL COMMENT '测评对象学号',
  `EvaluObj_Name` varchar(10) DEFAULT NULL COMMENT '测评对象姓名',
  `Group` int(5) DEFAULT NULL COMMENT '组别',
  `Student_between_group_total` decimal(3,0) DEFAULT NULL COMMENT '学生组间互评总分',
  PRIMARY KEY (`Tester_ID`,`EvaluObj_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_between_group
-- ----------------------------
INSERT INTO `student_between_group` VALUES ('105032015001', '王五', '105032015003', '张三', '2', '100');
INSERT INTO `student_between_group` VALUES ('105032015001', '王五', '105032015004', '李四', '2', '90');
INSERT INTO `student_between_group` VALUES ('105032015001', '王五', '105032015006', '胡一天', '3', '44');
INSERT INTO `student_between_group` VALUES ('105032015001', '王五', '105032015007', '江辰', '3', '55');
INSERT INTO `student_between_group` VALUES ('105032015001', '王五', '105032015008', '陈小希', '3', '66');
INSERT INTO `student_between_group` VALUES ('105032015001', '王五', '105032015009', '高楠', '2', '50');
INSERT INTO `student_between_group` VALUES ('105032015001', '王五', '105032015010', '廖臻珺', '4', '10');
INSERT INTO `student_between_group` VALUES ('105032015001', '王五', '105032015011', '陈清棉', '4', '20');
INSERT INTO `student_between_group` VALUES ('105032015001', '王五', '105032015012', '朱诗东', '4', '50');
INSERT INTO `student_between_group` VALUES ('105032015002', '赵六', '105032015003', '张三', '2', '10');
INSERT INTO `student_between_group` VALUES ('105032015002', '赵六', '105032015004', '李四', '2', '20');
INSERT INTO `student_between_group` VALUES ('105032015002', '赵六', '105032015006', '胡一天', '3', '30');
INSERT INTO `student_between_group` VALUES ('105032015002', '赵六', '105032015007', '江辰', '3', '40');
INSERT INTO `student_between_group` VALUES ('105032015002', '赵六', '105032015008', '陈小希', '3', '50');
INSERT INTO `student_between_group` VALUES ('105032015002', '赵六', '105032015009', '高楠', '9', '50');
INSERT INTO `student_between_group` VALUES ('105032015002', '赵六', '105032015010', '廖臻珺', '4', '60');
INSERT INTO `student_between_group` VALUES ('105032015002', '赵六', '105032015011', '陈清棉', '4', '70');
INSERT INTO `student_between_group` VALUES ('105032015002', '赵六', '105032015012', '朱诗东', '4', '80');
INSERT INTO `student_between_group` VALUES ('105032015003', '张三', '105032015001', '王五', '1', '80');
INSERT INTO `student_between_group` VALUES ('105032015003', '张三', '105032015002', '赵六', '1', '90');
INSERT INTO `student_between_group` VALUES ('105032015003', '张三', '105032015005', '陈一', '1', '90');
INSERT INTO `student_between_group` VALUES ('105032015003', '张三', '105032015006', '胡一天', '3', '90');
INSERT INTO `student_between_group` VALUES ('105032015003', '张三', '105032015007', '江辰', '3', '90');
INSERT INTO `student_between_group` VALUES ('105032015003', '张三', '105032015008', '陈小希', '3', '90');
INSERT INTO `student_between_group` VALUES ('105032015003', '张三', '105032015010', '廖臻珺', '4', '90');
INSERT INTO `student_between_group` VALUES ('105032015003', '张三', '105032015011', '陈清棉', '4', '90');
INSERT INTO `student_between_group` VALUES ('105032015003', '张三', '105032015012', '朱诗东', '4', '90');
INSERT INTO `student_between_group` VALUES ('105032015004', '李四', '105032015001', '王五', '1', '90');
INSERT INTO `student_between_group` VALUES ('105032015004', '李四', '105032015002', '赵六', '1', '80');
INSERT INTO `student_between_group` VALUES ('105032015004', '李四', '105032015005', '陈一', '1', '70');
INSERT INTO `student_between_group` VALUES ('105032015004', '李四', '105032015006', '胡一天', '3', '80');
INSERT INTO `student_between_group` VALUES ('105032015004', '李四', '105032015007', '江辰', '3', '80');
INSERT INTO `student_between_group` VALUES ('105032015004', '李四', '105032015008', '陈小希', '3', '80');
INSERT INTO `student_between_group` VALUES ('105032015004', '李四', '105032015010', '廖臻珺', '4', '80');
INSERT INTO `student_between_group` VALUES ('105032015004', '李四', '105032015011', '陈清棉', '4', '80');
INSERT INTO `student_between_group` VALUES ('105032015004', '李四', '105032015012', '朱诗东', '4', '70');
INSERT INTO `student_between_group` VALUES ('105032015005', '陈一', '105032015003', '张三', '2', '70');
INSERT INTO `student_between_group` VALUES ('105032015005', '陈一', '105032015004', '李四', '2', '70');
INSERT INTO `student_between_group` VALUES ('105032015005', '陈一', '105032015006', '胡一天', '3', '70');
INSERT INTO `student_between_group` VALUES ('105032015005', '陈一', '105032015007', '江辰', '3', '70');
INSERT INTO `student_between_group` VALUES ('105032015005', '陈一', '105032015008', '陈小希', '3', '70');
INSERT INTO `student_between_group` VALUES ('105032015005', '陈一', '105032015009', '高楠', '2', '70');
INSERT INTO `student_between_group` VALUES ('105032015005', '陈一', '105032015010', '廖臻珺', '4', '70');
INSERT INTO `student_between_group` VALUES ('105032015005', '陈一', '105032015011', '陈清棉', '4', '70');
INSERT INTO `student_between_group` VALUES ('105032015005', '陈一', '105032015012', '朱诗东', '4', '70');
INSERT INTO `student_between_group` VALUES ('105032015006', '胡一天', '105032015001', '王五', '1', '100');
INSERT INTO `student_between_group` VALUES ('105032015006', '胡一天', '105032015002', '赵六', '2', '60');
INSERT INTO `student_between_group` VALUES ('105032015006', '胡一天', '105032015003', '张三', '2', '60');
INSERT INTO `student_between_group` VALUES ('105032015006', '胡一天', '105032015004', '李四', '2', '60');
INSERT INTO `student_between_group` VALUES ('105032015006', '胡一天', '105032015005', '陈一', '1', '60');
INSERT INTO `student_between_group` VALUES ('105032015006', '胡一天', '105032015009', '高楠', '2', '60');
INSERT INTO `student_between_group` VALUES ('105032015006', '胡一天', '105032015010', '廖臻珺', '4', '60');
INSERT INTO `student_between_group` VALUES ('105032015006', '胡一天', '105032015011', '陈清棉', '4', '60');
INSERT INTO `student_between_group` VALUES ('105032015006', '胡一天', '105032015012', '朱诗东', '4', '60');
INSERT INTO `student_between_group` VALUES ('105032015007', '江辰', '105032015001', '王五', '1', '50');
INSERT INTO `student_between_group` VALUES ('105032015007', '江辰', '105032015002', '赵六', '1', '50');
INSERT INTO `student_between_group` VALUES ('105032015007', '江辰', '105032015003', '张三', '2', '50');
INSERT INTO `student_between_group` VALUES ('105032015007', '江辰', '105032015004', '李四', '2', '50');
INSERT INTO `student_between_group` VALUES ('105032015007', '江辰', '105032015005', '陈一', '1', '50');
INSERT INTO `student_between_group` VALUES ('105032015007', '江辰', '105032015009', '高楠', '2', '50');
INSERT INTO `student_between_group` VALUES ('105032015007', '江辰', '105032015010', '廖臻珺', '4', '50');
INSERT INTO `student_between_group` VALUES ('105032015007', '江辰', '105032015011', '陈清棉', '4', '50');
INSERT INTO `student_between_group` VALUES ('105032015007', '江辰', '105032015012', '朱诗东', '4', '50');
INSERT INTO `student_between_group` VALUES ('105032015008', '陈小希', '105032015001', '王五', '1', '80');
INSERT INTO `student_between_group` VALUES ('105032015008', '陈小希', '105032015002', '赵六', '1', '50');
INSERT INTO `student_between_group` VALUES ('105032015008', '陈小希', '105032015003', '张三', '2', '50');
INSERT INTO `student_between_group` VALUES ('105032015008', '陈小希', '105032015004', '李四', '2', '50');
INSERT INTO `student_between_group` VALUES ('105032015008', '陈小希', '105032015005', '陈一', '1', '50');
INSERT INTO `student_between_group` VALUES ('105032015008', '陈小希', '105032015009', '高楠', '2', '50');
INSERT INTO `student_between_group` VALUES ('105032015008', '陈小希', '105032015010', '廖臻珺', '4', '49');
INSERT INTO `student_between_group` VALUES ('105032015008', '陈小希', '105032015011', '陈清棉', '4', '49');
INSERT INTO `student_between_group` VALUES ('105032015008', '陈小希', '105032015012', '朱诗东', '4', '49');
INSERT INTO `student_between_group` VALUES ('105032015009', '高楠', '105032015001', '王五', '1', '100');
INSERT INTO `student_between_group` VALUES ('105032015009', '高楠', '105032015002', '赵六', '1', '49');
INSERT INTO `student_between_group` VALUES ('105032015009', '高楠', '105032015005', '陈一', '1', '49');
INSERT INTO `student_between_group` VALUES ('105032015009', '高楠', '105032015006', '胡一天', '3', '49');
INSERT INTO `student_between_group` VALUES ('105032015009', '高楠', '105032015007', '江辰', '3', '49');
INSERT INTO `student_between_group` VALUES ('105032015009', '高楠', '105032015008', '陈小希', '3', '49');
INSERT INTO `student_between_group` VALUES ('105032015009', '高楠', '105032015010', '廖臻珺', '4', '79');
INSERT INTO `student_between_group` VALUES ('105032015009', '高楠', '105032015011', '陈清棉', '4', '49');
INSERT INTO `student_between_group` VALUES ('105032015009', '高楠', '105032015012', '朱诗东', '4', '79');
INSERT INTO `student_between_group` VALUES ('105032015010', '廖臻珺', '105032015001', '王五', '1', '70');
INSERT INTO `student_between_group` VALUES ('105032015010', '廖臻珺', '105032015002', '赵六', '1', '79');
INSERT INTO `student_between_group` VALUES ('105032015010', '廖臻珺', '105032015003', '张三', '2', '79');
INSERT INTO `student_between_group` VALUES ('105032015010', '廖臻珺', '105032015004', '李四', '2', '79');
INSERT INTO `student_between_group` VALUES ('105032015010', '廖臻珺', '105032015005', '陈一', '1', '79');
INSERT INTO `student_between_group` VALUES ('105032015010', '廖臻珺', '105032015006', '胡一天', '3', '79');
INSERT INTO `student_between_group` VALUES ('105032015010', '廖臻珺', '105032015007', '江辰', '3', '79');
INSERT INTO `student_between_group` VALUES ('105032015010', '廖臻珺', '105032015008', '陈小希', '3', '79');
INSERT INTO `student_between_group` VALUES ('105032015010', '廖臻珺', '105032015009', '高楠', '2', '79');
INSERT INTO `student_between_group` VALUES ('105032015011', '陈清棉', '105032015001', '王五', '1', '60');
INSERT INTO `student_between_group` VALUES ('105032015011', '陈清棉', '105032015002', '赵六', '1', '80');
INSERT INTO `student_between_group` VALUES ('105032015011', '陈清棉', '105032015003', '张三', '2', '80');
INSERT INTO `student_between_group` VALUES ('105032015011', '陈清棉', '105032015004', '李四', '2', '80');
INSERT INTO `student_between_group` VALUES ('105032015011', '陈清棉', '105032015005', '陈一', '1', '80');
INSERT INTO `student_between_group` VALUES ('105032015011', '陈清棉', '105032015006', '胡一天', '3', '80');
INSERT INTO `student_between_group` VALUES ('105032015011', '陈清棉', '105032015007', '江辰', '3', '80');
INSERT INTO `student_between_group` VALUES ('105032015011', '陈清棉', '105032015008', '陈小希', '3', '80');
INSERT INTO `student_between_group` VALUES ('105032015011', '陈清棉', '105032015009', '高楠', '2', '80');
INSERT INTO `student_between_group` VALUES ('105032015012', '朱诗东', '105032015001', '王五', '1', '80');
INSERT INTO `student_between_group` VALUES ('105032015012', '朱诗东', '105032015002', '赵六', '1', '67');
INSERT INTO `student_between_group` VALUES ('105032015012', '朱诗东', '105032015003', '张三', '2', '67');
INSERT INTO `student_between_group` VALUES ('105032015012', '朱诗东', '105032015004', '李四', '2', '67');
INSERT INTO `student_between_group` VALUES ('105032015012', '朱诗东', '105032015005', '陈一', '1', '67');
INSERT INTO `student_between_group` VALUES ('105032015012', '朱诗东', '105032015006', '胡一天', '3', '67');
INSERT INTO `student_between_group` VALUES ('105032015012', '朱诗东', '105032015007', '江辰', '3', '67');
INSERT INTO `student_between_group` VALUES ('105032015012', '朱诗东', '105032015008', '陈小希', '3', '67');
INSERT INTO `student_between_group` VALUES ('105032015012', '朱诗东', '105032015009', '高楠', '2', '67');

-- ----------------------------
-- Table structure for student_information
-- ----------------------------
DROP TABLE IF EXISTS `student_information`;
CREATE TABLE `student_information` (
  `Student_ID` varchar(12) NOT NULL COMMENT '学号',
  `Student_Name` varchar(10) DEFAULT NULL COMMENT '学生姓名',
  `Academe` varchar(24) DEFAULT NULL COMMENT '所属学院',
  `Major` varchar(24) DEFAULT NULL COMMENT '所属专业',
  `Group` varchar(5) DEFAULT NULL COMMENT '组别',
  `Status` varchar(8) DEFAULT NULL COMMENT '身份',
  `Student_Password` varchar(6) DEFAULT NULL COMMENT '学生密码',
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_information
-- ----------------------------
INSERT INTO `student_information` VALUES ('105032015001', '王五', '数学与信息学院', '计算机科学与技术 ', '1', 'Student', '123');
INSERT INTO `student_information` VALUES ('105032015002', '赵六', '', '', '1', 'Student', 'qwe');
INSERT INTO `student_information` VALUES ('105032015003', '张三', null, null, '2', 'Student', 'efg');
INSERT INTO `student_information` VALUES ('105032015004', '李四', null, null, '2', 'Student', 'dfg');
INSERT INTO `student_information` VALUES ('105032015005', '陈一', null, null, '1', 'Student', 'abc');
INSERT INTO `student_information` VALUES ('105032015006', '胡一天', null, null, '3', 'Student', 'efg');
INSERT INTO `student_information` VALUES ('105032015007', '江辰', null, null, '3', 'Student', 'abc');
INSERT INTO `student_information` VALUES ('105032015008', '陈小希', null, null, '3', 'Student', 'abc');
INSERT INTO `student_information` VALUES ('105032015009', '高楠', null, null, '2', 'Student', '123');
INSERT INTO `student_information` VALUES ('105032015010', '廖臻珺', null, null, '4', 'Student', '123');
INSERT INTO `student_information` VALUES ('105032015011', '陈清棉', null, null, '4', 'Student', '123');
INSERT INTO `student_information` VALUES ('105032015012', '朱诗东', null, null, '4', 'Student', '123');

-- ----------------------------
-- Table structure for student_in_group
-- ----------------------------
DROP TABLE IF EXISTS `student_in_group`;
CREATE TABLE `student_in_group` (
  `Tester_ID` varchar(12) NOT NULL COMMENT '测评人学号',
  `Tester_Name` varchar(50) DEFAULT NULL COMMENT '测评人姓名',
  `EvaluObj_ID` varchar(12) NOT NULL COMMENT '测评对象学号',
  `EvaluObj_Name` varchar(50) DEFAULT NULL COMMENT '测评对象姓名',
  `Group` int(5) DEFAULT NULL COMMENT '组别',
  `Student_in_group_total` decimal(3,0) DEFAULT NULL COMMENT '学生组内互评总分',
  PRIMARY KEY (`Tester_ID`,`EvaluObj_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_in_group
-- ----------------------------
INSERT INTO `student_in_group` VALUES ('105032015001', '王五', '105032015001', '王五', '1', '10');
INSERT INTO `student_in_group` VALUES ('105032015001', '王五', '105032015002', '赵六', '1', '20');
INSERT INTO `student_in_group` VALUES ('105032015001', '王五', '105032015005', '陈一', '1', '30');
INSERT INTO `student_in_group` VALUES ('105032015002', '赵六', '105032015001', '王五', '1', '20');
INSERT INTO `student_in_group` VALUES ('105032015002', '赵六', '105032015002', '赵六', '1', '80');
INSERT INTO `student_in_group` VALUES ('105032015002', '赵六', '105032015005', '陈一', '1', '80');
INSERT INTO `student_in_group` VALUES ('105032015003', '张三', '105032015003', '张三', '2', '80');
INSERT INTO `student_in_group` VALUES ('105032015003', '张三', '105032015004', '李四', '2', '80');
INSERT INTO `student_in_group` VALUES ('105032015004', '李四', '105032015003', '张三', '2', '80');
INSERT INTO `student_in_group` VALUES ('105032015004', '李四', '105032015004', '李四', '2', '80');
INSERT INTO `student_in_group` VALUES ('105032015005', '陈一', '105032015001', '王五', '1', '40');
INSERT INTO `student_in_group` VALUES ('105032015005', '陈一', '105032015002', '赵六', '1', '70');
INSERT INTO `student_in_group` VALUES ('105032015005', '陈一', '105032015005', '陈一', '1', '70');
INSERT INTO `student_in_group` VALUES ('105032015006', '胡一天', '105032015001', '王五', '1', '60');
INSERT INTO `student_in_group` VALUES ('105032015006', '胡一天', '105032015002', '赵六', '1', '70');
INSERT INTO `student_in_group` VALUES ('105032015006', '胡一天', '105032015005', '陈一', '1', '70');
INSERT INTO `student_in_group` VALUES ('105032015006', '胡一天', '105032015006', '胡一天', '1', '70');
INSERT INTO `student_in_group` VALUES ('105032015007', '江辰', '105032015006', '胡一天', '3', '70');
INSERT INTO `student_in_group` VALUES ('105032015007', '江辰', '105032015007', '江辰', '3', '70');
INSERT INTO `student_in_group` VALUES ('105032015007', '江辰', '105032015008', '陈小希', '3', '70');
INSERT INTO `student_in_group` VALUES ('105032015008', '陈小希', '105032015006', '胡一天', '3', '60');
INSERT INTO `student_in_group` VALUES ('105032015008', '陈小希', '105032015007', '江辰', '3', '60');
INSERT INTO `student_in_group` VALUES ('105032015008', '陈小希', '105032015008', '陈小希', '3', '60');
INSERT INTO `student_in_group` VALUES ('105032015009', '高楠', '105032015004', '张三', '2', '60');
INSERT INTO `student_in_group` VALUES ('105032015009', '高楠', '105032015005', '李四', '2', '60');
INSERT INTO `student_in_group` VALUES ('105032015009', '高楠', '105032015009', '高楠', '2', '60');
INSERT INTO `student_in_group` VALUES ('105032015010', '廖臻珺', '105032015010', '廖臻珺', '4', '60');
INSERT INTO `student_in_group` VALUES ('105032015010', '廖臻珺', '105032015011', '陈清棉', '4', '60');
INSERT INTO `student_in_group` VALUES ('105032015010', '廖臻珺', '105032015012', '朱诗东', '4', '60');
INSERT INTO `student_in_group` VALUES ('105032015011', '陈清棉', '105032015010', '廖臻珺', '4', '50');
INSERT INTO `student_in_group` VALUES ('105032015011', '陈清棉', '105032015011', '陈清棉', '4', '50');
INSERT INTO `student_in_group` VALUES ('105032015011', '陈清棉', '105032015012', '朱诗东', '4', '50');
INSERT INTO `student_in_group` VALUES ('105032015012', '朱诗东', '105032015010', '廖臻珺', '4', '50');
INSERT INTO `student_in_group` VALUES ('105032015012', '朱诗东', '105032015011', '陈清棉', '4', '50');
INSERT INTO `student_in_group` VALUES ('105032015012', '朱诗东', '105032015012', '朱诗东', '4', '50');

-- ----------------------------
-- Table structure for student_total
-- ----------------------------
DROP TABLE IF EXISTS `student_total`;
CREATE TABLE `student_total` (
  `EvaluObj_ID` varchar(12) NOT NULL COMMENT '测评对象学号',
  `EvaluObj_Name` varchar(50) DEFAULT NULL COMMENT '测评对象姓名',
  `Student_In_group_Total` decimal(3,0) DEFAULT NULL COMMENT '学生组内互评总分',
  `Student_Between_group_Total` decimal(3,0) DEFAULT NULL COMMENT '学生组间互评总分',
  `Teacher_Total` decimal(3,0) DEFAULT NULL COMMENT '教师独立评分总分',
  `Total` decimal(3,0) DEFAULT NULL COMMENT '总分',
  PRIMARY KEY (`EvaluObj_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_total
-- ----------------------------
INSERT INTO `student_total` VALUES ('105032015001', '王五', '3', '16', '7', '26');
INSERT INTO `student_total` VALUES ('105032015002', '赵六', '6', '13', '14', '33');
INSERT INTO `student_total` VALUES ('105032015003', '张三', '8', '13', '21', '42');
INSERT INTO `student_total` VALUES ('105032015004', '李四', '7', '13', '28', '48');
INSERT INTO `student_total` VALUES ('105032015005', '陈一', '6', '13', '35', '54');
INSERT INTO `student_total` VALUES ('105032015006', '胡一天', '7', '13', '42', '62');
INSERT INTO `student_total` VALUES ('105032015007', '江辰', '7', '14', '49', '69');
INSERT INTO `student_total` VALUES ('105032015008', '陈小希', '7', '14', '56', '77');
INSERT INTO `student_total` VALUES ('105032015009', '高楠', '6', '12', '63', '81');
INSERT INTO `student_total` VALUES ('105032015010', '廖臻珺', '5', '12', '70', '88');
INSERT INTO `student_total` VALUES ('105032015011', '陈清棉', '5', '12', '21', '38');
INSERT INTO `student_total` VALUES ('105032015012', '朱诗东', '5', '13', '42', '61');

-- ----------------------------
-- Table structure for syuser
-- ----------------------------
DROP TABLE IF EXISTS `syuser`;
CREATE TABLE `syuser` (
  `Use_ID` varchar(12) NOT NULL COMMENT '用户名（学号/工号/电话号码）',
  `Password` varchar(6) NOT NULL COMMENT '用户密码',
  `Use_Status` varchar(50) NOT NULL COMMENT '身份（教师/学生)',
  PRIMARY KEY (`Use_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syuser
-- ----------------------------
INSERT INTO `syuser` VALUES ('105032015001', '123', 'Student');
INSERT INTO `syuser` VALUES ('105032015002', 'qwe', 'Student');
INSERT INTO `syuser` VALUES ('105032015003', 'efg', 'Student');
INSERT INTO `syuser` VALUES ('105032015004', '123', 'Student');
INSERT INTO `syuser` VALUES ('105032015005', '456', 'Student');
INSERT INTO `syuser` VALUES ('105032015006', '789', 'Student');
INSERT INTO `syuser` VALUES ('105032015007', 'abc', 'Student');
INSERT INTO `syuser` VALUES ('105032015008', 'abc', 'Student');
INSERT INTO `syuser` VALUES ('105032015009', '123', 'Student');
INSERT INTO `syuser` VALUES ('105032015010', '123', 'Student');
INSERT INTO `syuser` VALUES ('105032015011', '123', 'Student');
INSERT INTO `syuser` VALUES ('105032015012', '123', 'Student');
INSERT INTO `syuser` VALUES ('1052015001', 'abc', 'Teacher');
INSERT INTO `syuser` VALUES ('1052015002', 'cde', 'Teacher');

-- ----------------------------
-- Table structure for teacher_adjust
-- ----------------------------
DROP TABLE IF EXISTS `teacher_adjust`;
CREATE TABLE `teacher_adjust` (
  `Regulator_ID` varchar(12) NOT NULL COMMENT '调整人工号',
  `Regulator_Name` varchar(10) DEFAULT NULL COMMENT '调整人姓名',
  `Student_in_group_Pro` decimal(3,0) DEFAULT NULL COMMENT '学生组内互评百分比',
  `Student_between_group_Pro` decimal(3,0) DEFAULT NULL COMMENT '学生组间互评百分比',
  `Teacher_independ_Pro` decimal(3,0) DEFAULT NULL COMMENT '教师独立评分百分比',
  `Student_in_group_STime` datetime DEFAULT NULL COMMENT '学生组内互评开始时间',
  `Student_in_group_OTime` datetime DEFAULT NULL COMMENT '学生组间互评结束时间',
  `Student_between_group_STime` datetime DEFAULT NULL COMMENT '学生组间互评开始时间',
  `Student_between_group_OTime` datetime DEFAULT NULL COMMENT '学生组间互评结束时间',
  `Teacher_independ_STime` datetime DEFAULT NULL COMMENT '教师独立评分开始时间',
  `Teacher_independ_OTime` datetime DEFAULT NULL COMMENT '教师独立评分结束时间',
  PRIMARY KEY (`Regulator_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_adjust
-- ----------------------------
INSERT INTO `teacher_adjust` VALUES ('1052015001', '张三', '10', '20', '70', '2017-12-21 00:00:00', '2017-12-22 00:00:00', '2017-12-22 00:00:00', '2017-12-23 00:00:00', '2017-12-23 00:00:00', '2017-12-24 00:00:00');

-- ----------------------------
-- Table structure for teacher_independent
-- ----------------------------
DROP TABLE IF EXISTS `teacher_independent`;
CREATE TABLE `teacher_independent` (
  `Tester_ID` varchar(12) NOT NULL COMMENT '测评人工号',
  `Tester_Name` varchar(10) DEFAULT NULL COMMENT '测评人姓名',
  `EvaluObj_ID` varchar(12) NOT NULL COMMENT '测评对象学号',
  `EvaluObj_Name` varchar(10) DEFAULT NULL COMMENT '测评对象姓名',
  `Teacher_Total` decimal(3,0) DEFAULT NULL COMMENT '教师独立评分总分',
  PRIMARY KEY (`Tester_ID`,`EvaluObj_ID`),
  KEY `EvaluObj_ID` (`EvaluObj_ID`),
  CONSTRAINT `EvaluObj_ID` FOREIGN KEY (`EvaluObj_ID`) REFERENCES `student_information` (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_independent
-- ----------------------------
INSERT INTO `teacher_independent` VALUES ('1052015001', '张文', '105032015001', '王五', '10');
INSERT INTO `teacher_independent` VALUES ('1052015001', '张文', '105032015002', '赵六', '20');
INSERT INTO `teacher_independent` VALUES ('1052015001', '张文', '105032015003', '张三', '30');
INSERT INTO `teacher_independent` VALUES ('1052015001', '张文', '105032015004', '李四', '40');
INSERT INTO `teacher_independent` VALUES ('1052015001', '张文', '105032015005', '陈一', '50');
INSERT INTO `teacher_independent` VALUES ('1052015001', '张文', '105032015006', '胡一天', '60');
INSERT INTO `teacher_independent` VALUES ('1052015001', '张文', '105032015007', '江辰', '70');
INSERT INTO `teacher_independent` VALUES ('1052015001', '张文', '105032015008', '陈小希', '80');
INSERT INTO `teacher_independent` VALUES ('1052015001', '张文', '105032015009', '高楠', '90');
INSERT INTO `teacher_independent` VALUES ('1052015001', '张文', '105032015010', '廖臻珺', '100');
INSERT INTO `teacher_independent` VALUES ('1052015001', '张文', '105032015011', '陈清棉', '30');
INSERT INTO `teacher_independent` VALUES ('1052015001', '张文', '105032015012', '朱诗东', '60');

-- ----------------------------
-- Table structure for teacher_information
-- ----------------------------
DROP TABLE IF EXISTS `teacher_information`;
CREATE TABLE `teacher_information` (
  `Teacher_ID` varchar(12) NOT NULL COMMENT '教师工号',
  `Teacher_Name` varchar(10) DEFAULT NULL COMMENT '教师姓名',
  `Academe` varchar(24) DEFAULT NULL COMMENT '所属学院',
  `Status` varchar(8) DEFAULT NULL COMMENT '身份',
  `Teacher_Password` varchar(6) DEFAULT NULL COMMENT '教师密码',
  PRIMARY KEY (`Teacher_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_information
-- ----------------------------
INSERT INTO `teacher_information` VALUES ('1052015001', '张文', '数学与信息学院', 'Teacher', 'abc');

/*
Navicat MySQL Data Transfer

Source Server         : StudentScore
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : studentscores

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-12-04 22:35:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for student_between_group
-- ----------------------------
DROP TABLE IF EXISTS `student_between_group`;
CREATE TABLE `student_between_group` (
  `Tester_ID` decimal(12,0) NOT NULL COMMENT '测评人学号',
  `Tester_Name` varchar(50) DEFAULT NULL COMMENT '测评人姓名',
  `Tester_Evalu` varchar(2) DEFAULT NULL COMMENT '测评状态',
  `EvaluObj_ID` decimal(12,0) NOT NULL COMMENT '测评对象学号',
  `EvaluObj_Name` varchar(50) DEFAULT NULL COMMENT '测评对象姓名',
  `Group` int(5) DEFAULT NULL COMMENT '组别',
  `Student_between group_total` decimal(5,0) DEFAULT NULL COMMENT '学生组间互评总分',
  PRIMARY KEY (`Tester_ID`,`EvaluObj_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_between_group
-- ----------------------------

-- ----------------------------
-- Table structure for student_information
-- ----------------------------
DROP TABLE IF EXISTS `student_information`;
CREATE TABLE `student_information` (
  `Student_ID` decimal(12,0) NOT NULL COMMENT '学号',
  `Student_Name` varchar(10) DEFAULT NULL COMMENT '学生姓名',
  `Academe` varchar(24) DEFAULT NULL COMMENT '所属学院',
  `Major` varchar(24) DEFAULT NULL COMMENT '所属专业',
  `Group` varchar(5) DEFAULT NULL COMMENT '组别',
  `Status` varchar(8) DEFAULT NULL COMMENT '身份',
  `Student_Password` varchar(3) DEFAULT NULL COMMENT '学生密码',
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_information
-- ----------------------------
INSERT INTO `student_information` VALUES ('105032015001', '王五', 's', 's ', '1', 'Student', 'abc');
INSERT INTO `student_information` VALUES ('105032015002', '赵六', '', '', '1', 'Student', 'bcd');
INSERT INTO `student_information` VALUES ('105032015003', '张三', null, null, '2', 'Student', 'efg');
INSERT INTO `student_information` VALUES ('105032015004', '李四', null, null, '2', 'Student', 'dfg');
INSERT INTO `student_information` VALUES ('105032015005', '陈一', null, null, '1', 'Student', 'abc');
INSERT INTO `student_information` VALUES ('105032015006', '胡一天', null, null, '1', 'Student', 'efg');

-- ----------------------------
-- Table structure for student_in_group
-- ----------------------------
DROP TABLE IF EXISTS `student_in_group`;
CREATE TABLE `student_in_group` (
  `Tester_ID` decimal(12,0) NOT NULL COMMENT '测评人学号',
  `Tester_Name` varchar(50) DEFAULT NULL COMMENT '测评人姓名',
  `Tester_Evalu` varchar(2) DEFAULT NULL COMMENT '测评状态',
  `EvaluObj_ID` decimal(12,0) NOT NULL COMMENT '测评对象学号',
  `EvaluObj_Name` varchar(50) DEFAULT NULL COMMENT '测评对象姓名',
  `Group` int(5) DEFAULT NULL COMMENT '组别',
  `Student_in_group_total` decimal(5,0) DEFAULT NULL COMMENT '学生组内互评总分',
  PRIMARY KEY (`Tester_ID`,`EvaluObj_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_in_group
-- ----------------------------
INSERT INTO `student_in_group` VALUES ('105032015001', '王五', null, '105032015001', '王五', '1', null);
INSERT INTO `student_in_group` VALUES ('105032015001', '王五', null, '105032015002', '赵六', '1', null);
INSERT INTO `student_in_group` VALUES ('105032015001', '王五', null, '105032015005', '陈一', '1', null);
INSERT INTO `student_in_group` VALUES ('105032015001', '王五', null, '105032015006', '胡一天', '1', null);
INSERT INTO `student_in_group` VALUES ('105032015002', '赵六', null, '105032015001', '王五', '1', null);
INSERT INTO `student_in_group` VALUES ('105032015002', '赵六', null, '105032015002', '赵六', '1', null);
INSERT INTO `student_in_group` VALUES ('105032015002', '赵六', null, '105032015005', '陈一', '1', null);
INSERT INTO `student_in_group` VALUES ('105032015002', '赵六', null, '105032015006', '胡一天', '1', null);
INSERT INTO `student_in_group` VALUES ('105032015003', '张三', null, '105032015003', '张三', '2', null);
INSERT INTO `student_in_group` VALUES ('105032015003', '张三', null, '105032015004', '李四', '2', null);
INSERT INTO `student_in_group` VALUES ('105032015004', '李四', null, '105032015003', '张三', '2', null);
INSERT INTO `student_in_group` VALUES ('105032015004', '李四', null, '105032015004', '李四', '2', null);
INSERT INTO `student_in_group` VALUES ('105032015005', '陈一', null, '105032015001', '王五', '1', null);
INSERT INTO `student_in_group` VALUES ('105032015005', '陈一', null, '105032015002', '赵六', '1', null);
INSERT INTO `student_in_group` VALUES ('105032015005', '陈一', null, '105032015005', '陈一', '1', null);
INSERT INTO `student_in_group` VALUES ('105032015005', '陈一', null, '105032015006', '胡一天', '1', null);
INSERT INTO `student_in_group` VALUES ('105032015006', '胡一天', null, '105032015001', '王五', '1', null);
INSERT INTO `student_in_group` VALUES ('105032015006', '胡一天', null, '105032015002', '赵六', '1', null);
INSERT INTO `student_in_group` VALUES ('105032015006', '胡一天', null, '105032015005', '陈一', '1', null);
INSERT INTO `student_in_group` VALUES ('105032015006', '胡一天', null, '105032015006', '胡一天', '1', null);

-- ----------------------------
-- Table structure for student_total
-- ----------------------------
DROP TABLE IF EXISTS `student_total`;
CREATE TABLE `student_total` (
  `Tester_Evalu` varchar(2) DEFAULT NULL COMMENT '测评状态',
  `EvaluObj_ID` decimal(12,0) NOT NULL COMMENT '测评对象学号',
  `EvaluObj_Name` varchar(50) DEFAULT NULL COMMENT '测评对象姓名',
  `Student_In_group_Total` decimal(5,0) DEFAULT NULL COMMENT '学生组内互评总分',
  `Student_Between_group_Total` decimal(5,0) DEFAULT NULL COMMENT '学生组间互评总分',
  `Teacher_Total` decimal(5,0) DEFAULT NULL COMMENT '教师独立评分总分',
  `Total` decimal(5,0) DEFAULT NULL COMMENT '总分',
  PRIMARY KEY (`EvaluObj_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_total
-- ----------------------------

-- ----------------------------
-- Table structure for syuser
-- ----------------------------
DROP TABLE IF EXISTS `syuser`;
CREATE TABLE `syuser` (
  `Use_ID` varchar(12) NOT NULL COMMENT '用户名（学号/工号/电话号码）',
  `Password` varchar(3) NOT NULL COMMENT '用户密码',
  `Use_Status` varchar(50) NOT NULL COMMENT '身份（教师/学生)',
  PRIMARY KEY (`Use_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syuser
-- ----------------------------
INSERT INTO `syuser` VALUES ('105032015001', 'abc', 'Student');
INSERT INTO `syuser` VALUES ('105032015002', 'bcd', 'Student');
INSERT INTO `syuser` VALUES ('105032015003', 'efg', 'Student');
INSERT INTO `syuser` VALUES ('105032015004', '123', 'Student');
INSERT INTO `syuser` VALUES ('105032015005', '456', 'Student');
INSERT INTO `syuser` VALUES ('105032015006', '789', 'Student');
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
INSERT INTO `teacher_adjust` VALUES ('1052015001', '张三', '10', '20', '70', '2017-12-02 00:00:00', '2017-12-03 00:00:00', '2017-12-04 00:00:00', '2017-12-05 00:00:00', '2017-12-06 00:00:00', '2017-12-07 00:00:00');

-- ----------------------------
-- Table structure for teacher_admin
-- ----------------------------
DROP TABLE IF EXISTS `teacher_admin`;
CREATE TABLE `teacher_admin` (
  `Group` int(5) DEFAULT NULL COMMENT '组别',
  `Student_ID` varchar(12) NOT NULL COMMENT '学号',
  `Major` varchar(50) DEFAULT NULL COMMENT '专业',
  `Student_Name` varchar(50) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_admin
-- ----------------------------

-- ----------------------------
-- Table structure for teacher_independent
-- ----------------------------
DROP TABLE IF EXISTS `teacher_independent`;
CREATE TABLE `teacher_independent` (
  `Tester_ID` decimal(12,0) NOT NULL COMMENT '测评人工号',
  `Tester_Name` varchar(10) DEFAULT NULL COMMENT '测评人姓名',
  `Tester_Evalu` varchar(2) DEFAULT NULL COMMENT '测评状态',
  `EvaluObj_ID` decimal(12,0) NOT NULL COMMENT '测评对象学号',
  `EvaluObj_Name` varchar(10) DEFAULT NULL COMMENT '测评对象姓名',
  `Teacher_Total` decimal(5,0) DEFAULT NULL COMMENT '教师独立评分总分',
  PRIMARY KEY (`Tester_ID`,`EvaluObj_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_independent
-- ----------------------------
INSERT INTO `teacher_independent` VALUES ('1052015001', '张文', null, '105032015001', '王五', '10');
INSERT INTO `teacher_independent` VALUES ('1052015001', '张文', null, '105032015002', '赵六', null);
INSERT INTO `teacher_independent` VALUES ('1052015001', '张文', null, '105032015003', '张三', null);
INSERT INTO `teacher_independent` VALUES ('1052015001', '张文', null, '105032015004', '李四', null);
INSERT INTO `teacher_independent` VALUES ('1052015001', '张文', null, '105032015005', '陈一', null);
INSERT INTO `teacher_independent` VALUES ('1052015001', '张文', null, '105032015006', '胡一天', null);
INSERT INTO `teacher_independent` VALUES ('1052015002', '李奎', null, '105032015001', '王五', null);
INSERT INTO `teacher_independent` VALUES ('1052015002', '李奎', null, '105032015002', '赵六', null);
INSERT INTO `teacher_independent` VALUES ('1052015002', '李奎', null, '105032015003', '张三', null);
INSERT INTO `teacher_independent` VALUES ('1052015002', '李奎', null, '105032015004', '李四', null);
INSERT INTO `teacher_independent` VALUES ('1052015002', '李奎', null, '105032015005', '陈一', null);
INSERT INTO `teacher_independent` VALUES ('1052015002', '李奎', null, '105032015006', '胡一天', null);

-- ----------------------------
-- Table structure for teacher_information
-- ----------------------------
DROP TABLE IF EXISTS `teacher_information`;
CREATE TABLE `teacher_information` (
  `Teacher_ID` varchar(12) NOT NULL COMMENT '教师工号',
  `Teacher_Name` varchar(10) DEFAULT NULL COMMENT '教师姓名',
  `Academe` varchar(24) DEFAULT NULL COMMENT '所属学院',
  `Status` varchar(8) DEFAULT NULL COMMENT '身份',
  `Teacher_Password` varchar(3) DEFAULT NULL COMMENT '教师密码',
  PRIMARY KEY (`Teacher_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_information
-- ----------------------------
INSERT INTO `teacher_information` VALUES ('1052015001', '张文', '数学与信息学院', 'Teacher', 'abc');
INSERT INTO `teacher_information` VALUES ('1052015002', '李奎', null, 'Teacher', 'cde');

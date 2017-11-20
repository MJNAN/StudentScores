/*
Navicat MySQL Data Transfer

Source Server         : StudentScore
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : studentscores

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-11-06 19:34:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for student_between group
-- ----------------------------
DROP TABLE IF EXISTS `student_between group`;
CREATE TABLE `student_between group` (
  `school_year` varchar(20) DEFAULT NULL COMMENT '学年',
  `Tester_ID` decimal(12,0) NOT NULL COMMENT '测评人学号',
  `Tester_Name` varchar(50) DEFAULT NULL COMMENT '测评人姓名',
  `Tester_Evalu` varchar(2) DEFAULT NULL COMMENT '测评状态',
  `Student_between group_STime` datetime DEFAULT NULL COMMENT '学生组间互评开始时间',
  `Student_between group_OTime` datetime DEFAULT NULL COMMENT '学生组间互评结束时间',
  `EvaluObj_ID` decimal(12,0) DEFAULT NULL COMMENT '测评对象学号',
  `EvaluObj_Name` varchar(50) DEFAULT NULL COMMENT '测评对象姓名',
  `Group` int(5) DEFAULT NULL COMMENT '组别',
  `Student_between group_total` decimal(5,0) DEFAULT NULL COMMENT '学生组间互评总分',
  PRIMARY KEY (`Tester_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_between group
-- ----------------------------

-- ----------------------------
-- Table structure for student_in group
-- ----------------------------
DROP TABLE IF EXISTS `student_in group`;
CREATE TABLE `student_in group` (
  `school_year` varchar(20) DEFAULT NULL COMMENT '学年',
  `Tester_ID` decimal(12,0) NOT NULL COMMENT '测评人学号',
  `Tester_Name` varchar(50) DEFAULT NULL COMMENT '测评人姓名',
  `Tester_Evalu` varchar(2) DEFAULT NULL COMMENT '测评状态',
  `Student_in group_STime` datetime DEFAULT NULL COMMENT '学生组内互评开始时间',
  `Student_in group_OTime` datetime DEFAULT NULL COMMENT '学生组间互评结束时间',
  `EvaluObj_ID` decimal(12,0) DEFAULT NULL COMMENT '测评对象学号',
  `EvaluObj_Name` varchar(50) DEFAULT NULL COMMENT '测评对象姓名',
  `Student_in group_total` decimal(5,0) DEFAULT NULL COMMENT '学生组内互评总分',
  PRIMARY KEY (`Tester_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_in group
-- ----------------------------

-- ----------------------------
-- Table structure for student_information
-- ----------------------------
DROP TABLE IF EXISTS `student_information`;
CREATE TABLE `student_information` (
  `Student_ID` decimal(12,0) NOT NULL COMMENT '学号',
  `Student_Name` varchar(10) DEFAULT NULL COMMENT '学生姓名',
  `Entrance_Date` datetime DEFAULT NULL COMMENT '入学日期',
  `Academe` varchar(24) DEFAULT NULL COMMENT '所属学院',
  `Major` varchar(24) DEFAULT NULL COMMENT '所属专业',
  `Group` int(5) DEFAULT NULL COMMENT '组别',
  `Status` varchar(8) DEFAULT NULL COMMENT '身份',
  `Student_Password` varchar(14) DEFAULT NULL COMMENT '学生密码',
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_information
-- ----------------------------

-- ----------------------------
-- Table structure for student_total
-- ----------------------------
DROP TABLE IF EXISTS `student_total`;
CREATE TABLE `student_total` (
  `school_year` varchar(20) DEFAULT NULL COMMENT '学年',
  `Tester_Evalu` varchar(2) DEFAULT NULL COMMENT '测评状态',
  `STime` datetime DEFAULT NULL COMMENT '填写测评开始时间',
  `OTime` datetime DEFAULT NULL COMMENT '填写测评结束时间',
  `EvaluObj_ID` decimal(12,0) NOT NULL COMMENT '测评对象学号',
  `EvaluObj_Name` varchar(50) DEFAULT NULL COMMENT '测评对象姓名',
  `Student_In group_Total` decimal(5,0) DEFAULT NULL COMMENT '学生组内互评总分',
  `Student_Between group_Total` decimal(5,0) DEFAULT NULL COMMENT '学生组间互评总分',
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
  `Use_ID` decimal(12,0) NOT NULL COMMENT '用户名（学号/工号/电话号码）',
  `Password` varchar(50) NOT NULL COMMENT '用户密码',
  `Use_Status` varchar(50) NOT NULL COMMENT '身份（教师/学生)',
  PRIMARY KEY (`Use_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syuser
-- ----------------------------
INSERT INTO `syuser` VALUES ('10503', 'abc', 'Teacher');

-- ----------------------------
-- Table structure for teacher_adjust
-- ----------------------------
DROP TABLE IF EXISTS `teacher_adjust`;
CREATE TABLE `teacher_adjust` (
  `school_year` datetime DEFAULT NULL COMMENT '学年',
  `Regulator_ID` decimal(12,0) NOT NULL COMMENT '调整人工号',
  `Regulator_Name` varchar(10) DEFAULT NULL COMMENT '调整人姓名',
  `Student_in group_Pro` decimal(3,0) DEFAULT NULL COMMENT '学生组内互评百分比',
  `Student_between group_Pro` decimal(3,0) DEFAULT NULL COMMENT '学生组间互评百分比',
  `Teacher_independ_Pro` decimal(3,0) DEFAULT NULL COMMENT '教师独立评分百分比',
  `Student_in group_STime` datetime DEFAULT NULL COMMENT '学生组内互评开始时间',
  `Student_in group_OTime` datetime DEFAULT NULL COMMENT '学生组间互评结束时间',
  `Student_between group_STime` datetime DEFAULT NULL COMMENT '学生组间互评开始时间',
  `Student_between group_OTime` datetime DEFAULT NULL COMMENT '学生组间互评结束时间',
  `Teacher_independ_STime` datetime DEFAULT NULL COMMENT '教师独立评分开始时间',
  `Teacher_independ_OTime` datetime DEFAULT NULL COMMENT '教师独立评分结束时间',
  `STime` datetime DEFAULT NULL COMMENT '测评开始时间',
  `OTime` datetime DEFAULT NULL COMMENT '测评结束时间',
  PRIMARY KEY (`Regulator_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_adjust
-- ----------------------------

-- ----------------------------
-- Table structure for teacher_admin
-- ----------------------------
DROP TABLE IF EXISTS `teacher_admin`;
CREATE TABLE `teacher_admin` (
  `Group` int(5) DEFAULT NULL COMMENT '组别',
  `Student_ID` decimal(12,0) NOT NULL COMMENT '学号',
  `Major` varchar(50) DEFAULT NULL COMMENT '专业',
  `Student_Name` varchar(50) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_admin
-- ----------------------------

-- ----------------------------
-- Table structure for teacher_independet
-- ----------------------------
DROP TABLE IF EXISTS `teacher_independet`;
CREATE TABLE `teacher_independet` (
  `school_year` varchar(20) DEFAULT NULL COMMENT '学年',
  `Tester_ID` decimal(12,0) NOT NULL COMMENT '测评人工号',
  `Tester_Name` varchar(10) DEFAULT NULL COMMENT '测评人姓名',
  `Tester_Evalu` varchar(2) DEFAULT NULL COMMENT '测评状态',
  `Teacher_independ_STime` datetime DEFAULT NULL COMMENT '教师独立评分开始时间',
  `Teacher_independ_OTime` datetime DEFAULT NULL COMMENT '教师独立评分结束时间',
  `EvaluObj_ID` decimal(12,0) DEFAULT NULL COMMENT '测评对象学号',
  `EvaluObj_Name` varchar(10) DEFAULT NULL COMMENT '测评对象姓名',
  `Teacher_Total` decimal(5,0) DEFAULT NULL COMMENT '教师独立评分总分',
  PRIMARY KEY (`Tester_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_independet
-- ----------------------------

-- ----------------------------
-- Table structure for teacher_information
-- ----------------------------
DROP TABLE IF EXISTS `teacher_information`;
CREATE TABLE `teacher_information` (
  `Teacher_ID` decimal(12,0) NOT NULL COMMENT '教师工号',
  `Teacher_Name` varchar(10) DEFAULT NULL COMMENT '教师姓名',
  `Entrance_date` datetime DEFAULT NULL COMMENT '入职日期',
  `Academe` varchar(24) DEFAULT NULL COMMENT '所属学院',
  `Status` varchar(8) DEFAULT NULL COMMENT '身份',
  `Teacher_Password` varchar(14) DEFAULT NULL COMMENT '教师密码',
  PRIMARY KEY (`Teacher_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_information
-- ----------------------------

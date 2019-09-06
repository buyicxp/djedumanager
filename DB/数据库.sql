/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.15 : Database - djedumanager
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`djedumanager` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `djedumanager`;

/*Table structure for table `account_balance` */

DROP TABLE IF EXISTS `account_balance`;

CREATE TABLE `account_balance` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `stuName` varchar(50) DEFAULT NULL COMMENT '学员',
  `orderNum` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `money` double DEFAULT NULL COMMENT '账户余额',
  `type` varchar(50) DEFAULT NULL COMMENT '类型',
  `abstract` varchar(50) DEFAULT NULL COMMENT '摘要',
  `person` varchar(50) DEFAULT NULL COMMENT '负责人',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account_balance` */

/*Table structure for table `appointment` */

DROP TABLE IF EXISTS `appointment`;

CREATE TABLE `appointment` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `MakeupId` varchar(50) NOT NULL COMMENT '补课编号',
  `person` varchar(50) NOT NULL COMMENT '负责人',
  `stuName` varchar(50) NOT NULL COMMENT '负责人',
  `MakeupStatic` varchar(50) DEFAULT NULL COMMENT '补课状态',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `classs` varchar(50) DEFAULT NULL COMMENT '班级',
  `date_period` datetime DEFAULT NULL COMMENT '时间段',
  `MakeupDate` datetime DEFAULT NULL COMMENT '预约时间',
  `remarks` varchar(50) NOT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `appointment` */

/*Table structure for table `balance_payments` */

DROP TABLE IF EXISTS `balance_payments`;

CREATE TABLE `balance_payments` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `stuName` varchar(50) DEFAULT NULL COMMENT '学员',
  `money` double DEFAULT NULL COMMENT '金额',
  `approvalStatic` varchar(50) DEFAULT NULL COMMENT '审批状态',
  `approvalPerson` varchar(50) DEFAULT NULL COMMENT '审批人',
  `subject` varchar(50) DEFAULT NULL COMMENT '班级/一对一课程',
  `orderNum` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `school` varchar(50) DEFAULT NULL COMMENT '校区',
  `account` varchar(50) DEFAULT NULL COMMENT '公司账户',
  `chargeDate` datetime DEFAULT NULL COMMENT '收费日期',
  `operator` varchar(50) DEFAULT NULL COMMENT '操作人',
  `operatingTime` datetime DEFAULT NULL COMMENT '操作时间',
  `type` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `balance_payments` */

/*Table structure for table `class_affairs` */

DROP TABLE IF EXISTS `class_affairs`;

CREATE TABLE `class_affairs` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(50) NOT NULL COMMENT '主题',
  `person` varchar(50) NOT NULL COMMENT '负责人',
  `createPerson` varchar(50) DEFAULT NULL COMMENT '创建人',
  `classs` varchar(50) DEFAULT NULL COMMENT '班级',
  `remarks` varchar(50) DEFAULT NULL COMMENT '描述',
  `creatDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '修改时间',
  `contactType` varchar(50) DEFAULT NULL COMMENT '联系类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `class_affairs` */

/*Table structure for table `class_room` */

DROP TABLE IF EXISTS `class_room`;

CREATE TABLE `class_room` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `classRoom` varchar(50) NOT NULL COMMENT '教室',
  `classRoomId` varchar(50) NOT NULL COMMENT '教室编号',
  `person` varchar(50) NOT NULL COMMENT '负责人',
  `roomArea` double DEFAULT NULL COMMENT '教室面积',
  `studentNumber` int(8) DEFAULT NULL COMMENT '容纳学生数量',
  `type` varchar(50) NOT NULL COMMENT '类型',
  `school` varchar(50) NOT NULL COMMENT '校区',
  `rows` int(8) NOT NULL COMMENT '教室座位排数',
  `columns` int(8) NOT NULL COMMENT '教室座位列数',
  `remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `class_room` */

/*Table structure for table `classs` */

DROP TABLE IF EXISTS `classs`;

CREATE TABLE `classs` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `className` varchar(200) NOT NULL COMMENT '名称',
  `classNo` varchar(200) DEFAULT NULL COMMENT '班级编号',
  `openDate` datetime DEFAULT NULL COMMENT '开班日期',
  `closeDate` datetime DEFAULT NULL COMMENT '预计结班日期',
  `personNumber` int(11) DEFAULT NULL COMMENT '人数限制',
  `static` varchar(200) NOT NULL COMMENT '状态',
  `school` varchar(200) NOT NULL COMMENT '校区',
  `subject` varchar(200) NOT NULL COMMENT '科目',
  `actualperson` int(11) DEFAULT NULL COMMENT '实际人数',
  `beforeClass` varchar(200) DEFAULT NULL COMMENT '上课前提醒',
  `laterClass` varchar(200) DEFAULT NULL COMMENT '上课后提醒',
  `closeStatic` varchar(200) NOT NULL COMMENT '结班状态',
  `remarks` varchar(200) DEFAULT NULL COMMENT '描述',
  `person` varchar(200) NOT NULL COMMENT '负责人',
  `creatDate` datetime DEFAULT NULL COMMENT '创建时间',
  `money` double DEFAULT NULL COMMENT '金额',
  `classTime` double DEFAULT NULL COMMENT '金额',
  `chargeType` varchar(200) NOT NULL COMMENT '收费类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `classs` */

/*Table structure for table `lead_audition` */

DROP TABLE IF EXISTS `lead_audition`;

CREATE TABLE `lead_audition` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '记录编号',
  `title` varchar(50) NOT NULL COMMENT '主题',
  `courseName` varchar(50) NOT NULL COMMENT '课程名称',
  `teacher` varchar(50) DEFAULT NULL COMMENT '授课教师',
  `leadDate` datetime NOT NULL COMMENT '试听时间',
  `leadAddress` varchar(50) DEFAULT NULL COMMENT '试听地点',
  `attendance` varchar(50) NOT NULL COMMENT '试听考勤',
  `person` varchar(50) NOT NULL COMMENT '负责人',
  `createPerson` varchar(50) DEFAULT NULL COMMENT '创建人',
  `recruiting_clue` varchar(50) NOT NULL COMMENT '招生线索',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `remarks` varchar(200) DEFAULT NULL COMMENT '描述',
  `uodateDate` datetime DEFAULT NULL COMMENT '修改时间',
  `classs` varchar(50) DEFAULT NULL COMMENT '班级',
  `school` varchar(50) DEFAULT NULL COMMENT '校区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lead_audition` */

/*Table structure for table `recruiting_clues` */

DROP TABLE IF EXISTS `recruiting_clues`;

CREATE TABLE `recruiting_clues` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '线索编号',
  `stuName` varchar(50) NOT NULL COMMENT '学员姓名',
  `stuNumber` varchar(50) NOT NULL COMMENT '学员编号',
  `englishName` varchar(50) DEFAULT NULL COMMENT '英文名',
  `parentName` varchar(50) DEFAULT NULL COMMENT '家长姓名',
  `sex` char(1) NOT NULL COMMENT '性别',
  `birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `phone` varchar(50) NOT NULL COMMENT '手机号码',
  `validity` varchar(50) NOT NULL COMMENT '有效性',
  `source` varchar(50) DEFAULT NULL COMMENT '线索来源',
  `method` varchar(50) DEFAULT NULL COMMENT '登记方式',
  `intention` varchar(50) NOT NULL COMMENT '意向状态',
  `type` varchar(50) DEFAULT NULL COMMENT '类型',
  `nextDate` datetime DEFAULT NULL COMMENT '下次联系日期',
  `newDate` datetime DEFAULT NULL COMMENT '最新联系日期',
  `result` varchar(50) DEFAULT NULL COMMENT '联系结果',
  `progress` varchar(50) DEFAULT NULL COMMENT '最新进展',
  `contacts` int(11) DEFAULT NULL COMMENT '联系次数',
  `describe` varchar(50) DEFAULT NULL COMMENT '描述',
  `distribution` varchar(50) DEFAULT NULL COMMENT '分配状态',
  `clues` varchar(50) DEFAULT NULL COMMENT '公共线索',
  `person` varchar(50) DEFAULT NULL COMMENT '负责人',
  `updateDate` datetime DEFAULT NULL COMMENT '修改时间',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `channel` varchar(50) NOT NULL COMMENT '渠道明细',
  `school` varchar(50) DEFAULT NULL COMMENT '校区',
  `address` varchar(200) DEFAULT NULL COMMENT '家庭地址',
  `qq` varchar(50) DEFAULT NULL COMMENT 'QQ',
  `unit` varchar(50) DEFAULT NULL COMMENT '所在单位',
  `tmkPerson` varchar(50) DEFAULT NULL COMMENT 'TMK负责人',
  `standby1` varchar(50) DEFAULT NULL COMMENT '备用字段1',
  `standby2` varchar(50) DEFAULT NULL COMMENT '备用字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `recruiting_clues` */

/*Table structure for table `relation` */

DROP TABLE IF EXISTS `relation`;

CREATE TABLE `relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录编号',
  `title` varchar(200) NOT NULL COMMENT '主题',
  `stuName` varchar(200) NOT NULL COMMENT '学员',
  `contactType` varchar(200) NOT NULL COMMENT '联系类型',
  `contactDate` datetime NOT NULL COMMENT '联系日期',
  `context` varchar(200) DEFAULT NULL COMMENT '内容',
  `nextDate` datetime DEFAULT NULL COMMENT '下次回访日期',
  `person` varchar(200) NOT NULL COMMENT '负责人',
  `create_Date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_Date` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `relation` */

/*Table structure for table `settlement` */

DROP TABLE IF EXISTS `settlement`;

CREATE TABLE `settlement` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `stuName` varchar(50) DEFAULT NULL COMMENT '学员姓名',
  `stuId` varchar(50) DEFAULT NULL COMMENT '学员编号',
  `sex` double DEFAULT NULL COMMENT '性别',
  `phone` varchar(50) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `subject` varchar(50) DEFAULT NULL COMMENT '班级/一对一课程',
  `hours` datetime DEFAULT NULL COMMENT '总课时',
  `hour` datetime DEFAULT NULL COMMENT '剩余课时',
  `person` varchar(50) DEFAULT NULL COMMENT '负责人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `settlement` */

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `stuName` varchar(200) DEFAULT NULL COMMENT '学员名称',
  `stuPhone` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `stuNumber` varchar(200) NOT NULL COMMENT '学员编号自动生成',
  `primary_contact` varchar(200) DEFAULT NULL COMMENT '首要联系人',
  `englishName` varchar(200) DEFAULT NULL COMMENT '英文名',
  `birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `selected_Classes` varchar(200) DEFAULT NULL COMMENT '所选班级',
  `person` varchar(200) NOT NULL COMMENT '负责人',
  `student_Status` varchar(200) NOT NULL COMMENT '学员状态',
  `latest_Date` datetime DEFAULT NULL COMMENT '最新联系日期',
  `next_Date` datetime DEFAULT NULL COMMENT '下次联系日期',
  `latest_Progress` varchar(200) DEFAULT NULL COMMENT '最新进展',
  `total` double DEFAULT NULL COMMENT '学员总额',
  `enrol_Clue` varchar(200) DEFAULT NULL COMMENT '招生线索',
  `whether` varchar(200) DEFAULT NULL COMMENT '是否选班',
  `sex` varchar(200) NOT NULL COMMENT '性别',
  `Email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(200) DEFAULT NULL COMMENT '家庭地址',
  `type` varchar(200) NOT NULL COMMENT '类型',
  `examination` varchar(200) NOT NULL COMMENT '资格审查',
  `represent` varchar(200) DEFAULT NULL COMMENT '招生代表',
  `qq` varchar(200) DEFAULT NULL COMMENT 'QQ',
  `school_Age` varchar(200) DEFAULT NULL COMMENT '学龄',
  `grade` varchar(200) NOT NULL COMMENT '年级',
  `remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `TmkPerson` varchar(200) DEFAULT NULL COMMENT 'TMK负责人',
  `campus` varchar(200) NOT NULL COMMENT '校区',
  `participants` varchar(200) NOT NULL COMMENT '学员来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student` */

/*Table structure for table `student_achievements` */

DROP TABLE IF EXISTS `student_achievements`;

CREATE TABLE `student_achievements` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(50) NOT NULL COMMENT '主题',
  `stuName` varchar(50) NOT NULL COMMENT '学员',
  `subject` varchar(50) NOT NULL COMMENT '科目',
  `score` double DEFAULT NULL COMMENT '分数',
  `ExamDate` datetime DEFAULT NULL COMMENT '考试时间',
  `remarks` varchar(200) DEFAULT NULL COMMENT '描述',
  `person` varchar(50) NOT NULL COMMENT '负责人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student_achievements` */

/*Table structure for table `student_evaluation` */

DROP TABLE IF EXISTS `student_evaluation`;

CREATE TABLE `student_evaluation` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(50) NOT NULL COMMENT '主题',
  `stuName` varchar(50) NOT NULL COMMENT '学员',
  `classs` varchar(50) DEFAULT NULL COMMENT '班级',
  `Date` datetime NOT NULL COMMENT '班级',
  `accessibility` varchar(50) DEFAULT NULL COMMENT '可访问性',
  `type` varchar(50) DEFAULT NULL COMMENT '类型',
  `createPerson` varchar(50) DEFAULT NULL COMMENT '创建人',
  `person` varchar(50) NOT NULL COMMENT '负责人',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '修改时间',
  `remarks` varchar(50) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student_evaluation` */

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '自动增长',
  `teacherName` varchar(50) NOT NULL COMMENT '姓名',
  `teachereId` varchar(50) NOT NULL COMMENT '教室编号',
  `person` varchar(50) NOT NULL COMMENT '负责人',
  `alias` varchar(50) DEFAULT NULL COMMENT '别名',
  `idCard` varchar(50) DEFAULT NULL COMMENT '卡号',
  `sex` char(2) NOT NULL COMMENT '性别',
  `nativePlace` varchar(50) DEFAULT NULL COMMENT '籍贯',
  `phone` varchar(50) DEFAULT NULL COMMENT '移动电话',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `workingDate` datetime DEFAULT NULL COMMENT '参加工作时间',
  `entryTime` datetime DEFAULT NULL COMMENT '入职时间',
  `educationLevel` varchar(50) NOT NULL COMMENT '教育水平',
  `workName` varchar(50) NOT NULL COMMENT '职称',
  `level` varchar(50) NOT NULL COMMENT '级别',
  `static` varchar(50) NOT NULL COMMENT '状态',
  `school` varchar(50) NOT NULL COMMENT '校区',
  `professional` varchar(50) NOT NULL COMMENT '专业',
  `hoursMoney` double DEFAULT NULL COMMENT '课时费',
  `address` varchar(50) DEFAULT NULL COMMENT '住址',
  `identification` varchar(50) DEFAULT NULL COMMENT '身份证号',
  `OfficeTelephone` varchar(50) DEFAULT NULL COMMENT '办公电话',
  `remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

/*Table structure for table `teacher_evaluation` */

DROP TABLE IF EXISTS `teacher_evaluation`;

CREATE TABLE `teacher_evaluation` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(50) NOT NULL COMMENT '主题',
  `person` varchar(50) NOT NULL COMMENT '负责人',
  `teacher` varchar(50) DEFAULT NULL COMMENT '教师',
  `evaluationDate` datetime NOT NULL COMMENT '评价日期',
  `type` varchar(50) DEFAULT NULL COMMENT '类型',
  `createPerson` varchar(50) DEFAULT NULL COMMENT '创建人',
  `stuName` varchar(50) DEFAULT NULL COMMENT '学员',
  `classs` varchar(50) DEFAULT NULL COMMENT '班级',
  `remarks` varchar(50) DEFAULT NULL COMMENT '描述',
  `creatDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacher_evaluation` */

/*Table structure for table `tracking_record` */

DROP TABLE IF EXISTS `tracking_record`;

CREATE TABLE `tracking_record` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '记录编号',
  `title` varchar(50) NOT NULL COMMENT '主题',
  `person` varchar(50) NOT NULL COMMENT '负责人',
  `recruiting_clue` varchar(50) NOT NULL COMMENT '招生线索',
  `ContactDate` datetime DEFAULT NULL COMMENT '联系时间',
  `updateDate` datetime DEFAULT NULL COMMENT '修改时间',
  `intention` varchar(50) NOT NULL COMMENT '意向状态',
  `nextDate` datetime DEFAULT NULL COMMENT '下次联系日期',
  `result` varchar(50) DEFAULT NULL COMMENT '联系结果',
  `describe` varchar(50) DEFAULT NULL COMMENT '描述',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tracking_record` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `userName` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

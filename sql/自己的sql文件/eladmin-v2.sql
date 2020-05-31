/*
 Navicat Premium Data Transfer

 Source Server         : localhost_MySql
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : eladmin-v2

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 31/05/2020 09:56:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for code_column_config
-- ----------------------------
DROP TABLE IF EXISTS `code_column_config`;
CREATE TABLE `code_column_config`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `column_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `column_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dict_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `form_show` bit(1) NULL DEFAULT NULL,
  `form_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `key_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `list_show` bit(1) NULL DEFAULT NULL,
  `not_null` bit(1) NULL DEFAULT NULL,
  `query_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date_annotation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`column_id`) USING BTREE,
  INDEX `idx_table_name`(`table_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 187 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成字段信息存储' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of code_column_config
-- ----------------------------
INSERT INTO `code_column_config` VALUES (187, 'test_id_name', 'id', 'int', NULL, '', b'1', NULL, 'PRI', b'1', b'1', NULL, '', NULL);
INSERT INTO `code_column_config` VALUES (188, 'test_id_name', 'name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);

-- ----------------------------
-- Table structure for code_gen_config
-- ----------------------------
DROP TABLE IF EXISTS `code_gen_config`;
CREATE TABLE `code_gen_config`  (
  `config_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `cover` bit(1) NULL DEFAULT NULL COMMENT '是否覆盖',
  `module_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块名称',
  `pack` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '至于哪个包下',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端代码生成的路径',
  `api_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端Api文件路径',
  `prefix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表前缀',
  `api_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接口名称',
  PRIMARY KEY (`config_id`) USING BTREE,
  INDEX `idx_table_name`(`table_name`(100)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成器配置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of code_gen_config
-- ----------------------------
INSERT INTO `code_gen_config` VALUES (6, 'test_id_name', 'wg01', b'0', 'eladmin-web-study', 'me.zhengjie.controller', 'example/wgcrud/index', 'example/wgcrud/index\\', NULL, 'wgcrud');

-- ----------------------------
-- Table structure for mnt_app
-- ----------------------------
DROP TABLE IF EXISTS `mnt_app`;
CREATE TABLE `mnt_app`  (
  `app_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用名称',
  `upload_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传目录',
  `deploy_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部署路径',
  `backup_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备份路径',
  `port` int(255) NULL DEFAULT NULL COMMENT '应用端口',
  `start_script` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '启动脚本',
  `deploy_script` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部署脚本',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`app_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应用管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for mnt_database
-- ----------------------------
DROP TABLE IF EXISTS `mnt_database`;
CREATE TABLE `mnt_database`  (
  `db_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `jdbc_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'jdbc连接',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`db_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据库管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for mnt_deploy
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy`;
CREATE TABLE `mnt_deploy`  (
  `deploy_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `app_id` bigint(20) NULL DEFAULT NULL COMMENT '应用编号',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`deploy_id`) USING BTREE,
  INDEX `FK6sy157pseoxx4fmcqr1vnvvhy`(`app_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部署管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for mnt_deploy_history
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy_history`;
CREATE TABLE `mnt_deploy_history`  (
  `history_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `app_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用名称',
  `deploy_date` datetime(0) NOT NULL COMMENT '部署日期',
  `deploy_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部署用户',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '服务器IP',
  `deploy_id` bigint(20) NULL DEFAULT NULL COMMENT '部署编号',
  PRIMARY KEY (`history_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部署历史管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for mnt_deploy_server
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy_server`;
CREATE TABLE `mnt_deploy_server`  (
  `deploy_id` bigint(20) NOT NULL COMMENT '部署ID',
  `server_id` bigint(20) NOT NULL COMMENT '服务ID',
  PRIMARY KEY (`deploy_id`, `server_id`) USING BTREE,
  INDEX `FKeaaha7jew9a02b3bk9ghols53`(`server_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应用与服务器关联' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for mnt_server
-- ----------------------------
DROP TABLE IF EXISTS `mnt_server`;
CREATE TABLE `mnt_server`  (
  `server_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `port` int(11) NULL DEFAULT NULL COMMENT '端口',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`server_id`) USING BTREE,
  INDEX `idx_ip`(`ip`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '服务器管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mnt_server
-- ----------------------------
INSERT INTO `mnt_server` VALUES (1, 'root', '132.232.129.20', '腾讯云', 'Dqjdda1996.', 8013, NULL, NULL, '2019-11-24 20:35:02', NULL);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '上级部门',
  `sub_count` int(5) NULL DEFAULT 0 COMMENT '子部门数目',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `dept_sort` int(5) NULL DEFAULT 999 COMMENT '排序',
  `enabled` bit(1) NOT NULL COMMENT '状态',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE,
  INDEX `inx_pid`(`pid`) USING BTREE,
  INDEX `inx_enabled`(`enabled`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (2, 7, 0, '研发部', 3, b'1', NULL, 'admin', '2019-03-25 09:15:32', '2020-05-10 17:37:58');
INSERT INTO `sys_dept` VALUES (5, 7, 0, '运维部', 4, b'1', NULL, NULL, '2019-03-25 09:20:44', NULL);
INSERT INTO `sys_dept` VALUES (6, 8, 0, '测试部', 6, b'1', NULL, NULL, '2019-03-25 09:52:18', NULL);
INSERT INTO `sys_dept` VALUES (7, NULL, 2, '华南分部', 0, b'1', NULL, 'admin', '2019-03-25 11:04:50', '2020-05-10 19:59:12');
INSERT INTO `sys_dept` VALUES (8, NULL, 2, '华北分部', 1, b'1', NULL, 'admin', '2019-03-25 11:04:53', '2020-05-14 12:54:00');
INSERT INTO `sys_dept` VALUES (15, 8, 0, 'UI部门', 7, b'1', 'admin', 'admin', '2020-05-13 22:56:53', '2020-05-14 12:54:13');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dict_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据字典' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, 'user_status', '用户状态', NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO `sys_dict` VALUES (4, 'dept_status', '部门状态', NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO `sys_dict` VALUES (5, 'job_status', '岗位状态', NULL, NULL, '2019-10-27 20:31:36', NULL);

-- ----------------------------
-- Table structure for sys_dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_detail`;
CREATE TABLE `sys_dict_detail`  (
  `detail_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dict_id` bigint(11) NULL DEFAULT NULL COMMENT '字典id',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典标签',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典值',
  `dict_sort` int(5) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`detail_id`) USING BTREE,
  INDEX `FK5tpkputc6d9nboxojdbgnpmyb`(`dict_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据字典详情' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_detail
-- ----------------------------
INSERT INTO `sys_dict_detail` VALUES (1, 1, '激活', 'true', 1, NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO `sys_dict_detail` VALUES (2, 1, '禁用', 'false', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_detail` VALUES (3, 4, '启用', 'true', 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_detail` VALUES (4, 4, '停用', 'false', 2, NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO `sys_dict_detail` VALUES (5, 5, '启用', 'true', 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_detail` VALUES (6, 5, '停用', 'false', 2, NULL, NULL, '2019-10-27 20:31:36', NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `enabled` bit(1) NOT NULL COMMENT '岗位状态',
  `job_sort` int(5) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`job_id`) USING BTREE,
  UNIQUE INDEX `uniq_name`(`name`) USING BTREE,
  INDEX `inx_enabled`(`enabled`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (8, '人事专员', b'1', 3, NULL, NULL, '2019-03-29 14:52:28', NULL);
INSERT INTO `sys_job` VALUES (10, '产品经理', b'1', 4, NULL, NULL, '2019-03-29 14:55:51', NULL);
INSERT INTO `sys_job` VALUES (11, '全栈开发', b'1', 2, NULL, 'admin', '2019-03-31 13:39:30', '2020-05-05 11:33:43');
INSERT INTO `sys_job` VALUES (12, '软件测试', b'1', 5, NULL, 'admin', '2019-03-31 13:39:43', '2020-05-10 19:56:26');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `request_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` bigint(20) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE,
  INDEX `log_create_time_index`(`create_time`) USING BTREE,
  INDEX `inx_log_type`(`log_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2573 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (2573, '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{{username=admin, password= ******} SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@3e7d1950]]  }', '192.168.2.2', 1346, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:30:40');
INSERT INTO `sys_log` VALUES (2574, '查询部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.query()', '{DeptQueryCriteria(name=null, enabled=null, pid=null, pidIsNull=true, createTime=null)  }', '192.168.2.2', 390, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:31:04');
INSERT INTO `sys_log` VALUES (2575, '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=user_status) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '192.168.2.2', 479, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:31:04');
INSERT INTO `sys_log` VALUES (2576, '查询用户', 'INFO', 'me.zhengjie.modules.system.rest.UserController.query()', '{UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 684, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:31:04');
INSERT INTO `sys_log` VALUES (2577, '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '192.168.2.2', 19, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:31:05');
INSERT INTO `sys_log` VALUES (2578, '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getSuperior()', '{[1]  }', '192.168.2.2', 96, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:31:09');
INSERT INTO `sys_log` VALUES (2579, '查询角色', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.query()', '{RoleQueryCriteria(blurry=null, createTime=null) Page request [number: 0, size 10, sort: level: ASC]  }', '192.168.2.2', 91, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:31:13');
INSERT INTO `sys_log` VALUES (2580, '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getSuperior()', '{[33, 97, 34, 98, 35, 36, 37, 38, 39, 41, 116, 1, 2, 3, 5, 6, 7, 9, 10, 11, 14, 15, 16, 80, 18, 82, 19, 83, 21, 22, 23, 90, 28, 92, 93, 30, 94, 32]  }', '192.168.2.2', 692, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:31:16');
INSERT INTO `sys_log` VALUES (2581, '查询部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.query()', '{DeptQueryCriteria(name=null, enabled=null, pid=null, pidIsNull=true, createTime=null)  }', '192.168.2.2', 52, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:31:19');
INSERT INTO `sys_log` VALUES (2582, '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=dept_status) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '192.168.2.2', 15, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:31:19');
INSERT INTO `sys_log` VALUES (2583, '查询部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getSuperior()', '{[7]  }', '192.168.2.2', 26, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:31:21');
INSERT INTO `sys_log` VALUES (2584, '查询部署历史', 'INFO', 'me.zhengjie.modules.mnt.rest.DeployHistoryController.query()', '{DeployHistoryQueryCriteria(blurry=null, deployId=null, deployDate=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 28, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:31:34');
INSERT INTO `sys_log` VALUES (2585, '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '192.168.2.2', 9, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:32:01');
INSERT INTO `sys_log` VALUES (2586, '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getSuperior()', '{[1]  }', '192.168.2.2', 5, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:32:04');
INSERT INTO `sys_log` VALUES (2587, '新增菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{me.zhengjie.modules.system.domain.Menu@7e4345a1[id=120,\n,roles=<null>,\n,title=WEB例子,\n,componentName=<null>,\n,menuSort=7,\n,component=<null>,\n,path=example,\n,type=0,\n,permission=<null>,\n,icon=Steve-Jobs,\n,cache=false,\n,hidden=false,\n,pid=<null>,\n,subCount=0,\n,iFrame=false,\n]  }', '192.168.2.2', 1189, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:32:51');
INSERT INTO `sys_log` VALUES (2588, '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '192.168.2.2', 6, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:32:51');
INSERT INTO `sys_log` VALUES (2589, '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '192.168.2.2', 6, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:34:11');
INSERT INTO `sys_log` VALUES (2590, '新增菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{me.zhengjie.modules.system.domain.Menu@1ab7c12e[id=121,\n,roles=<null>,\n,title=wgcrud,\n,componentName=Wgcrud,\n,menuSort=1,\n,component=example\\wgcrud\\index,\n,path=wgcrud,\n,type=1,\n,permission=<null>,\n,icon=chain,\n,cache=false,\n,hidden=false,\n,pid=120,\n,subCount=0,\n,iFrame=false,\n]  }', '192.168.2.2', 149, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:35:54');
INSERT INTO `sys_log` VALUES (2591, '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '192.168.2.2', 6, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:35:54');
INSERT INTO `sys_log` VALUES (2592, '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=user_status) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '192.168.2.2', 7, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:35:58');
INSERT INTO `sys_log` VALUES (2593, '查询部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.query()', '{DeptQueryCriteria(name=null, enabled=null, pid=null, pidIsNull=true, createTime=null)  }', '192.168.2.2', 7, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:35:58');
INSERT INTO `sys_log` VALUES (2594, '查询用户', 'INFO', 'me.zhengjie.modules.system.rest.UserController.query()', '{UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 38, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:35:58');
INSERT INTO `sys_log` VALUES (2595, '查询角色', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.query()', '{RoleQueryCriteria(blurry=null, createTime=null) Page request [number: 0, size 10, sort: level: ASC]  }', '192.168.2.2', 30, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:36:00');
INSERT INTO `sys_log` VALUES (2596, '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getSuperior()', '{[33, 97, 34, 98, 35, 36, 37, 38, 39, 41, 116, 1, 2, 3, 5, 6, 7, 9, 10, 11, 14, 15, 16, 80, 18, 82, 19, 83, 21, 22, 23, 90, 28, 92, 93, 30, 94, 32]  }', '192.168.2.2', 238, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:36:02');
INSERT INTO `sys_log` VALUES (2597, '修改角色菜单', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{me.zhengjie.modules.system.domain.Role@d21415d[id=1,\n,users=<null>,\n,menus=[me.zhengjie.modules.system.domain.Menu@7e3a13b3[id=33,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@1bfb161c[id=97,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@5a3882b7[id=34,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@29b6ef2b[id=98,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@73fd625[id=35,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@44b77b28[id=36,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@5a046433[id=37,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@44d507ef[id=38,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@3d226fae[id=39,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@42b32d19[id=41,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@3b6ffc80[id=116,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@57e97e7d[id=120,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@8aab2f8[id=121,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@6f4d269[id=1,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@e208fdd[id=2,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@4e9a2b69[id=3,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@332feea5[id=5,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@13681533[id=6,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@193c2ee4[id=7,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@6628fc9[id=9,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@4a740366[id=10,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@19e65696[id=11,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@61550040[id=14,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@73dbd764[id=15,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@19de954a[id=80,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@32273201[id=16,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@7bb96305[id=18,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@56f4ebe1[id=82,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@3bed40b0[id=83,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@3051daf6[id=19,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@c026b2[id=21,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@711a7ea8[id=22,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@202348fb[id=23,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@1e9ba063[id=90,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@1fefe0b4[id=28,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@3d2222df[id=92,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@77cc110[id=93,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@4427f124[id=30,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@242d5354[id=94,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@8b5a9d4[id=32,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n]],\n,depts=<null>,\n,name=<null>,\n,dataScope=本级,\n,level=3,\n,description=<null>,\n]  }', '192.168.2.2', 250, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:36:07');
INSERT INTO `sys_log` VALUES (2598, '查询角色', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.query()', '{RoleQueryCriteria(blurry=null, createTime=null) Page request [number: 0, size 10, sort: level: ASC]  }', '192.168.2.2', 17, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:36:11');
INSERT INTO `sys_log` VALUES (2599, '查询角色', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.query()', '{RoleQueryCriteria(blurry=null, createTime=null) Page request [number: 0, size 10, sort: level: ASC]  }', '192.168.2.2', 17, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:36:42');
INSERT INTO `sys_log` VALUES (2600, '查询角色', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.query()', '{RoleQueryCriteria(blurry=null, createTime=null) Page request [number: 0, size 10, sort: level: ASC]  }', '192.168.2.2', 17, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:36:51');
INSERT INTO `sys_log` VALUES (2601, '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '192.168.2.2', 4, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:36:56');
INSERT INTO `sys_log` VALUES (2602, '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=null, pid=120)  }', '192.168.2.2', 9, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:36:58');
INSERT INTO `sys_log` VALUES (2603, '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=null, pid=1)  }', '192.168.2.2', 7, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:37:02');
INSERT INTO `sys_log` VALUES (2604, '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getSuperior()', '{[121]  }', '192.168.2.2', 14, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:37:09');
INSERT INTO `sys_log` VALUES (2605, '修改菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{me.zhengjie.modules.system.domain.Menu@32afcabd[id=121,\n,roles=<null>,\n,title=wgcrud,\n,componentName=Wgcrud,\n,menuSort=1,\n,component=example/wgcrud/index,\n,path=wgcrud,\n,type=1,\n,permission=<null>,\n,icon=chain,\n,cache=false,\n,hidden=false,\n,pid=120,\n,subCount=0,\n,iFrame=false,\n]  }', '192.168.2.2', 114, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:37:31');
INSERT INTO `sys_log` VALUES (2606, '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '192.168.2.2', 4, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:37:31');
INSERT INTO `sys_log` VALUES (2607, '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=null, pid=120)  }', '192.168.2.2', 3, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:37:34');
INSERT INTO `sys_log` VALUES (2608, '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=null, pid=1)  }', '192.168.2.2', 3, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:37:35');
INSERT INTO `sys_log` VALUES (2609, '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '192.168.2.2', 7, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:37:43');
INSERT INTO `sys_log` VALUES (2610, '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=user_status) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '192.168.2.2', 4, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:37:55');
INSERT INTO `sys_log` VALUES (2611, '查询用户', 'INFO', 'me.zhengjie.modules.system.rest.UserController.query()', '{UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 26, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:37:56');
INSERT INTO `sys_log` VALUES (2612, '查询部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.query()', '{DeptQueryCriteria(name=null, enabled=null, pid=null, pidIsNull=true, createTime=null)  }', '192.168.2.2', 16, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:37:56');
INSERT INTO `sys_log` VALUES (2613, '查询用户', 'INFO', 'me.zhengjie.modules.system.rest.UserController.query()', '{UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 42, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:40:10');
INSERT INTO `sys_log` VALUES (2614, '查询部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.query()', '{DeptQueryCriteria(name=null, enabled=null, pid=null, pidIsNull=true, createTime=null)  }', '192.168.2.2', 9, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:40:10');
INSERT INTO `sys_log` VALUES (2615, '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=user_status) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '192.168.2.2', 6, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:40:10');
INSERT INTO `sys_log` VALUES (2616, '查询角色', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.query()', '{RoleQueryCriteria(blurry=null, createTime=null) Page request [number: 0, size 10, sort: level: ASC]  }', '192.168.2.2', 28, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:40:12');
INSERT INTO `sys_log` VALUES (2617, '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '192.168.2.2', 6, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:40:13');
INSERT INTO `sys_log` VALUES (2618, '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=dept_status) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '192.168.2.2', 4, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:40:15');
INSERT INTO `sys_log` VALUES (2619, '查询部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.query()', '{DeptQueryCriteria(name=null, enabled=null, pid=null, pidIsNull=true, createTime=null)  }', '192.168.2.2', 11, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:40:15');
INSERT INTO `sys_log` VALUES (2620, '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=job_status) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '192.168.2.2', 4, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:40:17');
INSERT INTO `sys_log` VALUES (2621, '查询岗位', 'INFO', 'me.zhengjie.modules.system.rest.JobController.query()', '{JobQueryCriteria(name=null, enabled=null, createTime=null) Page request [number: 0, size 10, sort: jobSort: ASC,id: DESC]  }', '192.168.2.2', 25, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:40:17');
INSERT INTO `sys_log` VALUES (2622, '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.query()', '{DictQueryCriteria(blurry=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 67, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:40:18');
INSERT INTO `sys_log` VALUES (2623, '查询定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.query()', '{JobQueryCriteria(jobName=null, isSuccess=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 21, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:40:20');
INSERT INTO `sys_log` VALUES (2624, '查询服务器', 'INFO', 'me.zhengjie.modules.mnt.rest.ServerDeployController.query()', '{ServerDeployQueryCriteria(blurry=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 25, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:41:06');
INSERT INTO `sys_log` VALUES (2625, '查询应用', 'INFO', 'me.zhengjie.modules.mnt.rest.AppController.query()', '{AppQueryCriteria(name=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 16, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:41:08');
INSERT INTO `sys_log` VALUES (2626, '查询应用', 'INFO', 'me.zhengjie.modules.mnt.rest.AppController.query()', '{AppQueryCriteria(name=null, createTime=null) Page request [number: 0, size 20, sort: UNSORTED]  }', '192.168.2.2', 6, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:41:10');
INSERT INTO `sys_log` VALUES (2627, '查询服务器', 'INFO', 'me.zhengjie.modules.mnt.rest.ServerDeployController.query()', '{ServerDeployQueryCriteria(blurry=null, createTime=null) Page request [number: 0, size 20, sort: UNSORTED]  }', '192.168.2.2', 6, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:41:10');
INSERT INTO `sys_log` VALUES (2628, '查询部署', 'INFO', 'me.zhengjie.modules.mnt.rest.DeployController.query()', '{DeployQueryCriteria(appName=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 28, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:41:10');
INSERT INTO `sys_log` VALUES (2629, '查询部署历史', 'INFO', 'me.zhengjie.modules.mnt.rest.DeployHistoryController.query()', '{DeployHistoryQueryCriteria(blurry=null, deployId=null, deployDate=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 5, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:41:13');
INSERT INTO `sys_log` VALUES (2630, '查询数据库', 'INFO', 'me.zhengjie.modules.mnt.rest.DatabaseController.query()', '{DatabaseQueryCriteria(name=null, jdbcUrl=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 16, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:41:15');
INSERT INTO `sys_log` VALUES (2631, '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 15, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:41:21');
INSERT INTO `sys_log` VALUES (2632, '查询文件', 'INFO', 'me.zhengjie.rest.QiniuController.query()', '{QiniuQueryCriteria(key=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 21, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:41:23');
INSERT INTO `sys_log` VALUES (2633, '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '192.168.2.2', 12, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 10:44:54');
INSERT INTO `sys_log` VALUES (2634, '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '192.168.2.2', 118, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 11:44:24');
INSERT INTO `sys_log` VALUES (2635, '查询wgcrud', 'INFO', 'me.zhengjie.controller.rest.TestIdNameController.query()', '{TestIdNameQueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 156, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 13:08:27');
INSERT INTO `sys_log` VALUES (2636, '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=user_status) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '192.168.2.2', 210, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 13:08:30');
INSERT INTO `sys_log` VALUES (2637, '查询部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.query()', '{DeptQueryCriteria(name=null, enabled=null, pid=null, pidIsNull=true, createTime=null)  }', '192.168.2.2', 222, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 13:08:30');
INSERT INTO `sys_log` VALUES (2638, '查询用户', 'INFO', 'me.zhengjie.modules.system.rest.UserController.query()', '{UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 289, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 13:08:30');
INSERT INTO `sys_log` VALUES (2639, '查询wgcrud', 'INFO', 'me.zhengjie.controller.rest.TestIdNameController.query()', '{TestIdNameQueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 3, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 13:08:35');
INSERT INTO `sys_log` VALUES (2640, '查询wgcrud', 'ERROR', 'me.zhengjie.controller.rest.TestIdNameController.query()', '{TestIdNameQueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 6, 'admin', ' 局域网', 'Microsoft Edge', 'java.lang.ClassCastException: me.zhengjie.entity.TestIdName cannot be cast to me.zhengjie.controller.domain.TestIdName\r\n	at java.util.stream.ReferencePipeline$3$1.accept(ReferencePipeline.java:193)\r\n	at java.util.ArrayList$Itr.forEachRemaining(ArrayList.java:899)\r\n	at java.util.Spliterators$IteratorSpliterator.forEachRemaining(Spliterators.java:1801)\r\n	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:481)\r\n	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:471)\r\n	at java.util.stream.ReduceOps$ReduceOp.evaluateSequential(ReduceOps.java:708)\r\n	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)\r\n	at java.util.stream.ReferencePipeline.collect(ReferencePipeline.java:499)\r\n	at org.springframework.data.domain.Chunk.getConvertedContent(Chunk.java:167)\r\n	at org.springframework.data.domain.PageImpl.map(PageImpl.java:106)\r\n	at me.zhengjie.controller.service.impl.TestIdNameServiceImpl.queryAll(TestIdNameServiceImpl.java:56)\r\n	at me.zhengjie.controller.service.impl.TestIdNameServiceImpl$$FastClassBySpringCGLIB$$faeb7e18.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)\r\n	at me.zhengjie.controller.service.impl.TestIdNameServiceImpl$$EnhancerBySpringCGLIB$$638043a7.queryAll(<generated>)\r\n	at me.zhengjie.controller.rest.TestIdNameController.query(TestIdNameController.java:59)\r\n	at me.zhengjie.controller.rest.TestIdNameController$$FastClassBySpringCGLIB$$4d5a05e.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at me.zhengjie.aspect.LogAspect.logAround(LogAspect.java:68)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.controller.rest.TestIdNameController$$EnhancerBySpringCGLIB$$70de8a7a.query(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:890)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:634)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:124)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.TokenFilter.doFilter(TokenFilter.java:68)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', '2020-05-30 13:09:27');
INSERT INTO `sys_log` VALUES (2641, '查询wgcrud', 'ERROR', 'me.zhengjie.controller.rest.TestIdNameController.query()', '{TestIdNameQueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 67481, 'admin', ' 局域网', 'Microsoft Edge', 'java.lang.ClassCastException: me.zhengjie.entity.TestIdName cannot be cast to me.zhengjie.controller.domain.TestIdName\r\n	at java.util.stream.ReferencePipeline$3$1.accept(ReferencePipeline.java:193)\r\n	at java.util.ArrayList$Itr.forEachRemaining(ArrayList.java:899)\r\n	at java.util.Spliterators$IteratorSpliterator.forEachRemaining(Spliterators.java:1801)\r\n	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:481)\r\n	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:471)\r\n	at java.util.stream.ReduceOps$ReduceOp.evaluateSequential(ReduceOps.java:708)\r\n	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)\r\n	at java.util.stream.ReferencePipeline.collect(ReferencePipeline.java:499)\r\n	at org.springframework.data.domain.Chunk.getConvertedContent(Chunk.java:167)\r\n	at org.springframework.data.domain.PageImpl.map(PageImpl.java:106)\r\n	at me.zhengjie.controller.service.impl.TestIdNameServiceImpl.queryAll(TestIdNameServiceImpl.java:56)\r\n	at me.zhengjie.controller.service.impl.TestIdNameServiceImpl$$FastClassBySpringCGLIB$$faeb7e18.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)\r\n	at me.zhengjie.controller.service.impl.TestIdNameServiceImpl$$EnhancerBySpringCGLIB$$638043a7.queryAll(<generated>)\r\n	at me.zhengjie.controller.rest.TestIdNameController.query(TestIdNameController.java:59)\r\n	at me.zhengjie.controller.rest.TestIdNameController$$FastClassBySpringCGLIB$$4d5a05e.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at me.zhengjie.aspect.LogAspect.logAround(LogAspect.java:68)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.controller.rest.TestIdNameController$$EnhancerBySpringCGLIB$$70de8a7a.query(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:890)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:634)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:124)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.TokenFilter.doFilter(TokenFilter.java:68)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', '2020-05-30 13:11:20');
INSERT INTO `sys_log` VALUES (2642, '查询wgcrud', 'ERROR', 'me.zhengjie.controller.rest.TestIdNameController.query()', '{TestIdNameQueryCriteria(id=null, name=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 21773, 'admin', ' 局域网', 'Microsoft Edge', 'java.lang.ClassCastException: me.zhengjie.entity.TestIdName cannot be cast to me.zhengjie.controller.domain.TestIdName\r\n	at java.util.stream.ReferencePipeline$3$1.accept(ReferencePipeline.java:193)\r\n	at java.util.ArrayList$Itr.forEachRemaining(ArrayList.java:899)\r\n	at java.util.Spliterators$IteratorSpliterator.forEachRemaining(Spliterators.java:1801)\r\n	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:481)\r\n	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:471)\r\n	at java.util.stream.ReduceOps$ReduceOp.evaluateSequential(ReduceOps.java:708)\r\n	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)\r\n	at java.util.stream.ReferencePipeline.collect(ReferencePipeline.java:499)\r\n	at org.springframework.data.domain.Chunk.getConvertedContent(Chunk.java:167)\r\n	at org.springframework.data.domain.PageImpl.map(PageImpl.java:106)\r\n	at me.zhengjie.controller.service.impl.TestIdNameServiceImpl.queryAll(TestIdNameServiceImpl.java:56)\r\n	at me.zhengjie.controller.service.impl.TestIdNameServiceImpl$$FastClassBySpringCGLIB$$faeb7e18.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)\r\n	at me.zhengjie.controller.service.impl.TestIdNameServiceImpl$$EnhancerBySpringCGLIB$$cac4f9a4.queryAll(<generated>)\r\n	at me.zhengjie.controller.rest.TestIdNameController.query(TestIdNameController.java:59)\r\n	at me.zhengjie.controller.rest.TestIdNameController$$FastClassBySpringCGLIB$$4d5a05e.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at me.zhengjie.aspect.LogAspect.logAround(LogAspect.java:68)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.controller.rest.TestIdNameController$$EnhancerBySpringCGLIB$$f2bc068d.query(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:890)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:634)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:124)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.TokenFilter.doFilter(TokenFilter.java:68)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', '2020-05-30 13:12:25');
INSERT INTO `sys_log` VALUES (2643, '查询wgcrud', 'INFO', 'me.zhengjie.controller.rest.TestIdNameController.query()', '{TestIdNameQueryCriteria(id=null, name=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 21883, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 13:18:13');
INSERT INTO `sys_log` VALUES (2644, '新增wgcrud', 'INFO', 'me.zhengjie.controller.rest.TestIdNameController.create()', '{TestIdName(id=3, name=三)  }', '192.168.2.2', 247, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 13:19:01');
INSERT INTO `sys_log` VALUES (2645, '查询wgcrud', 'INFO', 'me.zhengjie.controller.rest.TestIdNameController.query()', '{TestIdNameQueryCriteria(id=null, name=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 11786, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 13:19:02');
INSERT INTO `sys_log` VALUES (2646, '修改wgcrud', 'INFO', 'me.zhengjie.controller.rest.TestIdNameController.update()', '{TestIdName(id=1, name=一)  }', '192.168.2.2', 197, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 13:19:17');
INSERT INTO `sys_log` VALUES (2647, '查询wgcrud', 'INFO', 'me.zhengjie.controller.rest.TestIdNameController.query()', '{TestIdNameQueryCriteria(id=null, name=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 26, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 13:19:17');
INSERT INTO `sys_log` VALUES (2648, '修改wgcrud', 'INFO', 'me.zhengjie.controller.rest.TestIdNameController.update()', '{TestIdName(id=2, name=二)  }', '192.168.2.2', 336, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 13:19:48');
INSERT INTO `sys_log` VALUES (2649, '查询wgcrud', 'INFO', 'me.zhengjie.controller.rest.TestIdNameController.query()', '{TestIdNameQueryCriteria(id=null, name=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 10, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 13:19:48');
INSERT INTO `sys_log` VALUES (2650, '查询wgcrud', 'INFO', 'me.zhengjie.controller.rest.TestIdNameController.query()', '{TestIdNameQueryCriteria(id=null, name=null) Page request [number: 0, size 10, sort: id: DESC]  }', '192.168.2.2', 5, 'admin', ' 局域网', 'Microsoft Edge', NULL, '2020-05-30 13:19:53');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '上级菜单ID',
  `sub_count` int(5) NULL DEFAULT 0 COMMENT '子菜单数目',
  `type` int(11) NULL DEFAULT NULL COMMENT '菜单类型',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单标题',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件名称',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件',
  `menu_sort` int(5) NULL DEFAULT NULL COMMENT '排序',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  `i_frame` bit(1) NULL DEFAULT NULL COMMENT '是否外链',
  `cache` bit(1) NULL DEFAULT b'0' COMMENT '缓存',
  `hidden` bit(1) NULL DEFAULT b'0' COMMENT '隐藏',
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`menu_id`) USING BTREE,
  UNIQUE INDEX `uniq_title`(`title`) USING BTREE,
  UNIQUE INDEX `uniq_name`(`name`) USING BTREE,
  INDEX `inx_pid`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统菜单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, NULL, 7, 0, '系统管理', NULL, NULL, 1, 'system', 'system', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-18 15:11:29', NULL);
INSERT INTO `sys_menu` VALUES (2, 1, 3, 1, '用户管理', 'User', 'system/user/index', 2, 'peoples', 'user', b'0', b'0', b'0', 'user:list', NULL, NULL, '2018-12-18 15:14:44', NULL);
INSERT INTO `sys_menu` VALUES (3, 1, 3, 1, '角色管理', 'Role', 'system/role/index', 3, 'role', 'role', b'0', b'0', b'0', 'roles:list', NULL, NULL, '2018-12-18 15:16:07', NULL);
INSERT INTO `sys_menu` VALUES (5, 1, 3, 1, '菜单管理', 'Menu', 'system/menu/index', 5, 'menu', 'menu', b'0', b'0', b'0', 'menu:list', NULL, NULL, '2018-12-18 15:17:28', NULL);
INSERT INTO `sys_menu` VALUES (6, NULL, 5, 0, '系统监控', NULL, NULL, 10, 'monitor', 'monitor', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-18 15:17:48', NULL);
INSERT INTO `sys_menu` VALUES (7, 6, 0, 1, '操作日志', 'Log', 'monitor/log/index', 11, 'log', 'logs', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-18 15:18:26', NULL);
INSERT INTO `sys_menu` VALUES (9, 6, 0, 1, 'SQL监控', 'Sql', 'monitor/sql/index', 18, 'sqlMonitor', 'druid', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-18 15:19:34', NULL);
INSERT INTO `sys_menu` VALUES (10, NULL, 5, 0, '组件管理', NULL, NULL, 50, 'zujian', 'components', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-19 13:38:16', NULL);
INSERT INTO `sys_menu` VALUES (11, 10, 0, 1, '图标库', 'Icons', 'components/icons/index', 51, 'icon', 'icon', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-19 13:38:49', NULL);
INSERT INTO `sys_menu` VALUES (14, 36, 0, 1, '邮件工具', 'Email', 'tools/email/index', 35, 'email', 'email', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-27 10:13:09', NULL);
INSERT INTO `sys_menu` VALUES (15, 10, 0, 1, '富文本', 'Editor', 'components/Editor', 52, 'fwb', 'tinymce', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-27 11:58:25', NULL);
INSERT INTO `sys_menu` VALUES (16, 36, 2, 1, '图床管理', 'Pictures', 'tools/picture/index', 33, 'image', 'pictures', b'0', b'0', b'0', 'pictures:list', NULL, NULL, '2018-12-28 09:36:53', NULL);
INSERT INTO `sys_menu` VALUES (18, 36, 3, 1, '存储管理', 'Storage', 'tools/storage/index', 34, 'qiniu', 'storage', b'0', b'0', b'0', 'storage:list', NULL, NULL, '2018-12-31 11:12:15', NULL);
INSERT INTO `sys_menu` VALUES (19, 36, 0, 1, '支付宝工具', 'AliPay', 'tools/aliPay/index', 37, 'alipay', 'aliPay', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-31 14:52:38', NULL);
INSERT INTO `sys_menu` VALUES (21, NULL, 2, 0, '多级菜单', NULL, '', 900, 'menu', 'nested', b'0', b'0', b'1', NULL, NULL, NULL, '2019-01-04 16:22:03', NULL);
INSERT INTO `sys_menu` VALUES (22, 21, 2, 1, '二级菜单1', NULL, 'nested/menu1/index', 999, 'menu', 'menu1', b'0', b'0', b'0', NULL, NULL, NULL, '2019-01-04 16:23:29', NULL);
INSERT INTO `sys_menu` VALUES (23, 21, 0, 1, '二级菜单2', NULL, 'nested/menu2/index', 999, 'menu', 'menu2', b'0', b'0', b'0', NULL, NULL, NULL, '2019-01-04 16:23:57', NULL);
INSERT INTO `sys_menu` VALUES (24, 22, 0, 1, '三级菜单1', NULL, 'nested/menu1/menu1-1', 999, 'menu', 'menu1-1', b'0', b'0', b'0', NULL, NULL, NULL, '2019-01-04 16:24:48', NULL);
INSERT INTO `sys_menu` VALUES (27, 22, 0, 1, '三级菜单2', NULL, 'nested/menu1/menu1-2', 999, 'menu', 'menu1-2', b'0', b'0', b'0', NULL, NULL, NULL, '2019-01-07 17:27:32', NULL);
INSERT INTO `sys_menu` VALUES (28, 1, 3, 1, '任务调度', 'Timing', 'system/timing/index', 999, 'timing', 'timing', b'0', b'0', b'0', 'timing:list', NULL, NULL, '2019-01-07 20:34:40', NULL);
INSERT INTO `sys_menu` VALUES (30, 36, 0, 1, '代码生成', 'GeneratorIndex', 'generator/index', 32, 'dev', 'generator', b'0', b'1', b'0', NULL, NULL, NULL, '2019-01-11 15:45:55', NULL);
INSERT INTO `sys_menu` VALUES (32, 6, 0, 1, '异常日志', 'ErrorLog', 'monitor/log/errorLog', 12, 'error', 'errorLog', b'0', b'0', b'0', NULL, NULL, NULL, '2019-01-13 13:49:03', NULL);
INSERT INTO `sys_menu` VALUES (33, 10, 0, 1, 'Markdown', 'Markdown', 'components/MarkDown', 53, 'markdown', 'markdown', b'0', b'0', b'0', NULL, NULL, NULL, '2019-03-08 13:46:44', NULL);
INSERT INTO `sys_menu` VALUES (34, 10, 0, 1, 'Yaml编辑器', 'YamlEdit', 'components/YamlEdit', 54, 'dev', 'yaml', b'0', b'0', b'0', NULL, NULL, NULL, '2019-03-08 15:49:40', NULL);
INSERT INTO `sys_menu` VALUES (35, 1, 3, 1, '部门管理', 'Dept', 'system/dept/index', 6, 'dept', 'dept', b'0', b'0', b'0', 'dept:list', NULL, NULL, '2019-03-25 09:46:00', NULL);
INSERT INTO `sys_menu` VALUES (36, NULL, 8, 0, '系统工具', NULL, '', 30, 'sys-tools', 'sys-tools', b'0', b'0', b'0', NULL, NULL, NULL, '2019-03-29 10:57:35', NULL);
INSERT INTO `sys_menu` VALUES (37, 1, 3, 1, '岗位管理', 'Job', 'system/job/index', 7, 'Steve-Jobs', 'job', b'0', b'0', b'0', 'job:list', NULL, NULL, '2019-03-29 13:51:18', NULL);
INSERT INTO `sys_menu` VALUES (38, 36, 0, 1, '接口文档', 'Swagger', 'tools/swagger/index', 36, 'swagger', 'swagger2', b'0', b'0', b'0', NULL, NULL, NULL, '2019-03-29 19:57:53', NULL);
INSERT INTO `sys_menu` VALUES (39, 1, 3, 1, '字典管理', 'Dict', 'system/dict/index', 8, 'dictionary', 'dict', b'0', b'0', b'0', 'dict:list', NULL, NULL, '2019-04-10 11:49:04', NULL);
INSERT INTO `sys_menu` VALUES (41, 6, 0, 1, '在线用户', 'OnlineUser', 'monitor/online/index', 10, 'Steve-Jobs', 'online', b'0', b'0', b'0', NULL, NULL, NULL, '2019-10-26 22:08:43', NULL);
INSERT INTO `sys_menu` VALUES (44, 2, 0, 2, '用户新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'user:add', NULL, NULL, '2019-10-29 10:59:46', NULL);
INSERT INTO `sys_menu` VALUES (45, 2, 0, 2, '用户编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'user:edit', NULL, NULL, '2019-10-29 11:00:08', NULL);
INSERT INTO `sys_menu` VALUES (46, 2, 0, 2, '用户删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'user:del', NULL, NULL, '2019-10-29 11:00:23', NULL);
INSERT INTO `sys_menu` VALUES (48, 3, 0, 2, '角色创建', NULL, '', 2, '', '', b'0', b'0', b'0', 'roles:add', NULL, NULL, '2019-10-29 12:45:34', NULL);
INSERT INTO `sys_menu` VALUES (49, 3, 0, 2, '角色修改', NULL, '', 3, '', '', b'0', b'0', b'0', 'roles:edit', NULL, NULL, '2019-10-29 12:46:16', NULL);
INSERT INTO `sys_menu` VALUES (50, 3, 0, 2, '角色删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'roles:del', NULL, NULL, '2019-10-29 12:46:51', NULL);
INSERT INTO `sys_menu` VALUES (52, 5, 0, 2, '菜单新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'menu:add', NULL, NULL, '2019-10-29 12:55:07', NULL);
INSERT INTO `sys_menu` VALUES (53, 5, 0, 2, '菜单编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'menu:edit', NULL, NULL, '2019-10-29 12:55:40', NULL);
INSERT INTO `sys_menu` VALUES (54, 5, 0, 2, '菜单删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'menu:del', NULL, NULL, '2019-10-29 12:56:00', NULL);
INSERT INTO `sys_menu` VALUES (56, 35, 0, 2, '部门新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'dept:add', NULL, NULL, '2019-10-29 12:57:09', NULL);
INSERT INTO `sys_menu` VALUES (57, 35, 0, 2, '部门编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'dept:edit', NULL, NULL, '2019-10-29 12:57:27', NULL);
INSERT INTO `sys_menu` VALUES (58, 35, 0, 2, '部门删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'dept:del', NULL, NULL, '2019-10-29 12:57:41', NULL);
INSERT INTO `sys_menu` VALUES (60, 37, 0, 2, '岗位新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'job:add', NULL, NULL, '2019-10-29 12:58:27', NULL);
INSERT INTO `sys_menu` VALUES (61, 37, 0, 2, '岗位编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'job:edit', NULL, NULL, '2019-10-29 12:58:45', NULL);
INSERT INTO `sys_menu` VALUES (62, 37, 0, 2, '岗位删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'job:del', NULL, NULL, '2019-10-29 12:59:04', NULL);
INSERT INTO `sys_menu` VALUES (64, 39, 0, 2, '字典新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'dict:add', NULL, NULL, '2019-10-29 13:00:17', NULL);
INSERT INTO `sys_menu` VALUES (65, 39, 0, 2, '字典编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'dict:edit', NULL, NULL, '2019-10-29 13:00:42', NULL);
INSERT INTO `sys_menu` VALUES (66, 39, 0, 2, '字典删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'dict:del', NULL, NULL, '2019-10-29 13:00:59', NULL);
INSERT INTO `sys_menu` VALUES (70, 16, 0, 2, '图片上传', NULL, '', 2, '', '', b'0', b'0', b'0', 'pictures:add', NULL, NULL, '2019-10-29 13:05:34', NULL);
INSERT INTO `sys_menu` VALUES (71, 16, 0, 2, '图片删除', NULL, '', 3, '', '', b'0', b'0', b'0', 'pictures:del', NULL, NULL, '2019-10-29 13:05:52', NULL);
INSERT INTO `sys_menu` VALUES (73, 28, 0, 2, '任务新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'timing:add', NULL, NULL, '2019-10-29 13:07:28', NULL);
INSERT INTO `sys_menu` VALUES (74, 28, 0, 2, '任务编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'timing:edit', NULL, NULL, '2019-10-29 13:07:41', NULL);
INSERT INTO `sys_menu` VALUES (75, 28, 0, 2, '任务删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'timing:del', NULL, NULL, '2019-10-29 13:07:54', NULL);
INSERT INTO `sys_menu` VALUES (77, 18, 0, 2, '上传文件', NULL, '', 2, '', '', b'0', b'0', b'0', 'storage:add', NULL, NULL, '2019-10-29 13:09:09', NULL);
INSERT INTO `sys_menu` VALUES (78, 18, 0, 2, '文件编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'storage:edit', NULL, NULL, '2019-10-29 13:09:22', NULL);
INSERT INTO `sys_menu` VALUES (79, 18, 0, 2, '文件删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'storage:del', NULL, NULL, '2019-10-29 13:09:34', NULL);
INSERT INTO `sys_menu` VALUES (80, 6, 0, 1, '服务监控', 'ServerMonitor', 'monitor/server/index', 14, 'codeConsole', 'server', b'0', b'0', b'0', 'monitor:list', NULL, 'admin', '2019-11-07 13:06:39', '2020-05-04 18:20:50');
INSERT INTO `sys_menu` VALUES (82, 36, 0, 1, '生成配置', 'GeneratorConfig', 'generator/config', 33, 'dev', 'generator/config/:tableName', b'0', b'1', b'1', '', NULL, NULL, '2019-11-17 20:08:56', NULL);
INSERT INTO `sys_menu` VALUES (83, 10, 0, 1, '图表库', 'Echarts', 'components/Echarts', 50, 'chart', 'echarts', b'0', b'1', b'0', '', NULL, NULL, '2019-11-21 09:04:32', NULL);
INSERT INTO `sys_menu` VALUES (90, NULL, 5, 1, '运维管理', 'Mnt', '', 20, 'mnt', 'mnt', b'0', b'0', b'0', NULL, NULL, NULL, '2019-11-09 10:31:08', NULL);
INSERT INTO `sys_menu` VALUES (92, 90, 3, 1, '服务器', 'ServerDeploy', 'mnt/server/index', 22, 'server', 'mnt/serverDeploy', b'0', b'0', b'0', 'serverDeploy:list', NULL, NULL, '2019-11-10 10:29:25', NULL);
INSERT INTO `sys_menu` VALUES (93, 90, 3, 1, '应用管理', 'App', 'mnt/app/index', 23, 'app', 'mnt/app', b'0', b'0', b'0', 'app:list', NULL, NULL, '2019-11-10 11:05:16', NULL);
INSERT INTO `sys_menu` VALUES (94, 90, 3, 1, '部署管理', 'Deploy', 'mnt/deploy/index', 24, 'deploy', 'mnt/deploy', b'0', b'0', b'0', 'deploy:list', NULL, NULL, '2019-11-10 15:56:55', NULL);
INSERT INTO `sys_menu` VALUES (97, 90, 1, 1, '部署备份', 'DeployHistory', 'mnt/deployHistory/index', 25, 'backup', 'mnt/deployHistory', b'0', b'0', b'0', 'deployHistory:list', NULL, NULL, '2019-11-10 16:49:44', NULL);
INSERT INTO `sys_menu` VALUES (98, 90, 3, 1, '数据库管理', 'Database', 'mnt/database/index', 26, 'database', 'mnt/database', b'0', b'0', b'0', 'database:list', NULL, NULL, '2019-11-10 20:40:04', NULL);
INSERT INTO `sys_menu` VALUES (102, 97, 0, 2, '删除', NULL, '', 999, '', '', b'0', b'0', b'0', 'deployHistory:del', NULL, NULL, '2019-11-17 09:32:48', NULL);
INSERT INTO `sys_menu` VALUES (103, 92, 0, 2, '服务器新增', NULL, '', 999, '', '', b'0', b'0', b'0', 'serverDeploy:add', NULL, NULL, '2019-11-17 11:08:33', NULL);
INSERT INTO `sys_menu` VALUES (104, 92, 0, 2, '服务器编辑', NULL, '', 999, '', '', b'0', b'0', b'0', 'serverDeploy:edit', NULL, NULL, '2019-11-17 11:08:57', NULL);
INSERT INTO `sys_menu` VALUES (105, 92, 0, 2, '服务器删除', NULL, '', 999, '', '', b'0', b'0', b'0', 'serverDeploy:del', NULL, NULL, '2019-11-17 11:09:15', NULL);
INSERT INTO `sys_menu` VALUES (106, 93, 0, 2, '应用新增', NULL, '', 999, '', '', b'0', b'0', b'0', 'app:add', NULL, NULL, '2019-11-17 11:10:03', NULL);
INSERT INTO `sys_menu` VALUES (107, 93, 0, 2, '应用编辑', NULL, '', 999, '', '', b'0', b'0', b'0', 'app:edit', NULL, NULL, '2019-11-17 11:10:28', NULL);
INSERT INTO `sys_menu` VALUES (108, 93, 0, 2, '应用删除', NULL, '', 999, '', '', b'0', b'0', b'0', 'app:del', NULL, NULL, '2019-11-17 11:10:55', NULL);
INSERT INTO `sys_menu` VALUES (109, 94, 0, 2, '部署新增', NULL, '', 999, '', '', b'0', b'0', b'0', 'deploy:add', NULL, NULL, '2019-11-17 11:11:22', NULL);
INSERT INTO `sys_menu` VALUES (110, 94, 0, 2, '部署编辑', NULL, '', 999, '', '', b'0', b'0', b'0', 'deploy:edit', NULL, NULL, '2019-11-17 11:11:41', NULL);
INSERT INTO `sys_menu` VALUES (111, 94, 0, 2, '部署删除', NULL, '', 999, '', '', b'0', b'0', b'0', 'deploy:del', NULL, NULL, '2019-11-17 11:12:01', NULL);
INSERT INTO `sys_menu` VALUES (112, 98, 0, 2, '数据库新增', NULL, '', 999, '', '', b'0', b'0', b'0', 'database:add', NULL, NULL, '2019-11-17 11:12:43', NULL);
INSERT INTO `sys_menu` VALUES (113, 98, 0, 2, '数据库编辑', NULL, '', 999, '', '', b'0', b'0', b'0', 'database:edit', NULL, NULL, '2019-11-17 11:12:58', NULL);
INSERT INTO `sys_menu` VALUES (114, 98, 0, 2, '数据库删除', NULL, '', 999, '', '', b'0', b'0', b'0', 'database:del', NULL, NULL, '2019-11-17 11:13:14', NULL);
INSERT INTO `sys_menu` VALUES (116, 36, 0, 1, '生成预览', 'Preview', 'generator/preview', 999, 'java', 'generator/preview/:tableName', b'0', b'1', b'1', NULL, NULL, NULL, '2019-11-26 14:54:36', NULL);
INSERT INTO `sys_menu` VALUES (120, NULL, 1, 0, 'WEB例子', NULL, NULL, 7, 'Steve-Jobs', 'example', b'0', b'0', b'0', NULL, 'admin', 'admin', '2020-05-30 10:32:50', '2020-05-30 10:32:50');
INSERT INTO `sys_menu` VALUES (121, 120, 0, 1, 'wgcrud', 'Wgcrud', 'example/wgcrud/index', 1, 'chain', 'wgcrud', b'0', b'0', b'0', NULL, 'admin', 'admin', '2020-05-30 10:35:54', '2020-05-30 10:37:31');

-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_job`;
CREATE TABLE `sys_quartz_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Spring Bean名称',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'cron 表达式',
  `is_pause` bit(1) NULL DEFAULT NULL COMMENT '状态：1暂停、0启用',
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法名称',
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `person_in_charge` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报警邮箱',
  `sub_task` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子任务ID',
  `pause_after_failure` bit(1) NULL DEFAULT NULL COMMENT '任务失败后是否暂停',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`job_id`) USING BTREE,
  INDEX `inx_is_pause`(`is_pause`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_quartz_job
-- ----------------------------
INSERT INTO `sys_quartz_job` VALUES (2, 'testTask', '0/5 * * * * ?', b'1', '测试1', 'run1', 'test', '带参测试，多参使用json', '测试', NULL, NULL, NULL, NULL, 'admin', '2019-08-22 14:08:29', '2020-05-05 17:26:19');
INSERT INTO `sys_quartz_job` VALUES (3, 'testTask', '0/5 * * * * ?', b'1', '测试', 'run', '', '不带参测试', 'Zheng Jie', '', '2,6', b'1', NULL, 'admin', '2019-09-26 16:44:39', '2020-05-05 20:45:39');
INSERT INTO `sys_quartz_job` VALUES (5, 'Test', '0/5 * * * * ?', b'1', '任务告警测试', 'run', NULL, '测试', 'test', '', NULL, b'1', 'admin', 'admin', '2020-05-05 20:32:41', '2020-05-05 20:36:13');
INSERT INTO `sys_quartz_job` VALUES (6, 'testTask', '0/5 * * * * ?', b'1', '测试3', 'run2', NULL, '测试3', 'Zheng Jie', '', NULL, b'1', 'admin', 'admin', '2020-05-05 20:35:41', '2020-05-05 20:36:07');

-- ----------------------------
-- Table structure for sys_quartz_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_log`;
CREATE TABLE `sys_quartz_log`  (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_success` bit(1) NULL DEFAULT NULL,
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `level` int(255) NULL DEFAULT NULL COMMENT '角色级别',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `data_scope` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据权限',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE INDEX `uniq_name`(`name`) USING BTREE,
  INDEX `role_name_index`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 1, '-', '全部', NULL, 'admin', '2018-11-23 11:04:37', '2020-05-30 10:36:06');
INSERT INTO `sys_role` VALUES (2, '普通用户', 2, '-', '自定义', NULL, 'admin', '2018-11-23 13:09:06', '2020-05-11 18:28:45');

-- ----------------------------
-- Table structure for sys_roles_depts
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_depts`;
CREATE TABLE `sys_roles_depts`  (
  `role_id` bigint(20) NOT NULL,
  `dept_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE,
  INDEX `FK7qg6itn5ajdoa9h9o78v9ksur`(`dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色部门关联' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_roles_depts
-- ----------------------------
INSERT INTO `sys_roles_depts` VALUES (2, 7);

-- ----------------------------
-- Table structure for sys_roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_menus`;
CREATE TABLE `sys_roles_menus`  (
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`menu_id`, `role_id`) USING BTREE,
  INDEX `FKcngg2qadojhi3a651a5adkvbq`(`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色菜单关联' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_roles_menus
-- ----------------------------
INSERT INTO `sys_roles_menus` VALUES (1, 1);
INSERT INTO `sys_roles_menus` VALUES (2, 1);
INSERT INTO `sys_roles_menus` VALUES (3, 1);
INSERT INTO `sys_roles_menus` VALUES (5, 1);
INSERT INTO `sys_roles_menus` VALUES (6, 1);
INSERT INTO `sys_roles_menus` VALUES (7, 1);
INSERT INTO `sys_roles_menus` VALUES (9, 1);
INSERT INTO `sys_roles_menus` VALUES (10, 1);
INSERT INTO `sys_roles_menus` VALUES (11, 1);
INSERT INTO `sys_roles_menus` VALUES (14, 1);
INSERT INTO `sys_roles_menus` VALUES (15, 1);
INSERT INTO `sys_roles_menus` VALUES (16, 1);
INSERT INTO `sys_roles_menus` VALUES (18, 1);
INSERT INTO `sys_roles_menus` VALUES (19, 1);
INSERT INTO `sys_roles_menus` VALUES (21, 1);
INSERT INTO `sys_roles_menus` VALUES (22, 1);
INSERT INTO `sys_roles_menus` VALUES (23, 1);
INSERT INTO `sys_roles_menus` VALUES (28, 1);
INSERT INTO `sys_roles_menus` VALUES (30, 1);
INSERT INTO `sys_roles_menus` VALUES (32, 1);
INSERT INTO `sys_roles_menus` VALUES (33, 1);
INSERT INTO `sys_roles_menus` VALUES (34, 1);
INSERT INTO `sys_roles_menus` VALUES (35, 1);
INSERT INTO `sys_roles_menus` VALUES (36, 1);
INSERT INTO `sys_roles_menus` VALUES (37, 1);
INSERT INTO `sys_roles_menus` VALUES (38, 1);
INSERT INTO `sys_roles_menus` VALUES (39, 1);
INSERT INTO `sys_roles_menus` VALUES (41, 1);
INSERT INTO `sys_roles_menus` VALUES (80, 1);
INSERT INTO `sys_roles_menus` VALUES (82, 1);
INSERT INTO `sys_roles_menus` VALUES (83, 1);
INSERT INTO `sys_roles_menus` VALUES (90, 1);
INSERT INTO `sys_roles_menus` VALUES (92, 1);
INSERT INTO `sys_roles_menus` VALUES (93, 1);
INSERT INTO `sys_roles_menus` VALUES (94, 1);
INSERT INTO `sys_roles_menus` VALUES (97, 1);
INSERT INTO `sys_roles_menus` VALUES (98, 1);
INSERT INTO `sys_roles_menus` VALUES (116, 1);
INSERT INTO `sys_roles_menus` VALUES (120, 1);
INSERT INTO `sys_roles_menus` VALUES (121, 1);
INSERT INTO `sys_roles_menus` VALUES (1, 2);
INSERT INTO `sys_roles_menus` VALUES (2, 2);
INSERT INTO `sys_roles_menus` VALUES (3, 2);
INSERT INTO `sys_roles_menus` VALUES (5, 2);
INSERT INTO `sys_roles_menus` VALUES (10, 2);
INSERT INTO `sys_roles_menus` VALUES (21, 2);
INSERT INTO `sys_roles_menus` VALUES (36, 2);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门名称',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `avatar_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `avatar_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像真实路径',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `is_admin` bit(1) NULL DEFAULT b'0' COMMENT '是否为admin账号',
  `enabled` bigint(20) NULL DEFAULT NULL COMMENT '状态：1启用、0禁用',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新着',
  `pwd_reset_time` datetime(0) NULL DEFAULT NULL COMMENT '修改密码的时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `UK_kpubos9gc2cvtkb0thktkbkes`(`email`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `uniq_username`(`username`) USING BTREE,
  UNIQUE INDEX `uniq_email`(`email`) USING BTREE,
  INDEX `FK5rwmryny6jthaaxkogownknqp`(`dept_id`) USING BTREE,
  INDEX `FKpq2dhypk2qgt68nauh2by22jb`(`avatar_name`) USING BTREE,
  INDEX `inx_enabled`(`enabled`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 2, 'admin', '管理员', '男', '18888888888', '201507802@qq.com', NULL, NULL, '$2a$10$Egp1/gvFlt7zhlXVfEFw4OfWQCGPw0ClmMcc6FjTnvXNRVf9zdMRa', b'1', 1, NULL, 'admin', '2020-05-03 16:38:31', '2018-08-23 09:11:56', '2020-05-05 10:12:21');
INSERT INTO `sys_user` VALUES (2, 2, 'test', '测试', '男', '18888888888', '231@qq.com', NULL, NULL, '$2a$10$4XcyudOYTSz6fue6KFNMHeUQnCX5jbBQypLEnGk1PmekXt5c95JcK', b'0', 1, 'admin', 'admin', NULL, '2020-05-05 11:15:49', '2020-05-05 11:20:51');

-- ----------------------------
-- Table structure for sys_users_jobs
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_jobs`;
CREATE TABLE `sys_users_jobs`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `job_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `job_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_users_jobs
-- ----------------------------
INSERT INTO `sys_users_jobs` VALUES (1, 11);
INSERT INTO `sys_users_jobs` VALUES (1, 12);
INSERT INTO `sys_users_jobs` VALUES (2, 12);

-- ----------------------------
-- Table structure for sys_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_roles`;
CREATE TABLE `sys_users_roles`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `FKq4eq273l04bpu4efj0jd0jb98`(`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色关联' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_users_roles
-- ----------------------------
INSERT INTO `sys_users_roles` VALUES (1, 1);
INSERT INTO `sys_users_roles` VALUES (2, 2);

-- ----------------------------
-- Table structure for test_id_name
-- ----------------------------
DROP TABLE IF EXISTS `test_id_name`;
CREATE TABLE `test_id_name`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '表注释' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_id_name
-- ----------------------------
INSERT INTO `test_id_name` VALUES (1, '一');
INSERT INTO `test_id_name` VALUES (2, '二');
INSERT INTO `test_id_name` VALUES (3, '三');

-- ----------------------------
-- Table structure for tool_alipay_config
-- ----------------------------
DROP TABLE IF EXISTS `tool_alipay_config`;
CREATE TABLE `tool_alipay_config`  (
  `config_id` bigint(20) NOT NULL COMMENT 'ID',
  `app_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用ID',
  `charset` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `format` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型 固定格式json',
  `gateway_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网关地址',
  `notify_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异步回调',
  `private_key` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '私钥',
  `public_key` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '公钥',
  `return_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回调地址',
  `sign_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '签名方式',
  `sys_service_provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商户号',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '支付宝配置类' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tool_alipay_config
-- ----------------------------
INSERT INTO `tool_alipay_config` VALUES (1, '2016091700532697', 'utf-8', 'JSON', 'https://openapi.alipaydev.com/gateway.do', 'http://api.auauz.net/api/aliPay/notify', 'MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC5js8sInU10AJ0cAQ8UMMyXrQ+oHZEkVt5lBwsStmTJ7YikVYgbskx1YYEXTojRsWCb+SH/kDmDU4pK/u91SJ4KFCRMF2411piYuXU/jF96zKrADznYh/zAraqT6hvAIVtQAlMHN53nx16rLzZ/8jDEkaSwT7+HvHiS+7sxSojnu/3oV7BtgISoUNstmSe8WpWHOaWv19xyS+Mce9MY4BfseFhzTICUymUQdd/8hXA28/H6osUfAgsnxAKv7Wil3aJSgaJczWuflYOve0dJ3InZkhw5Cvr0atwpk8YKBQjy5CdkoHqvkOcIB+cYHXJKzOE5tqU7inSwVbHzOLQ3XbnAgMBAAECggEAVJp5eT0Ixg1eYSqFs9568WdetUNCSUchNxDBu6wxAbhUgfRUGZuJnnAll63OCTGGck+EGkFh48JjRcBpGoeoHLL88QXlZZbC/iLrea6gcDIhuvfzzOffe1RcZtDFEj9hlotg8dQj1tS0gy9pN9g4+EBH7zeu+fyv+qb2e/v1l6FkISXUjpkD7RLQr3ykjiiEw9BpeKb7j5s7Kdx1NNIzhkcQKNqlk8JrTGDNInbDM6inZfwwIO2R1DHinwdfKWkvOTODTYa2MoAvVMFT9Bec9FbLpoWp7ogv1JMV9svgrcF9XLzANZ/OQvkbe9TV9GWYvIbxN6qwQioKCWO4GPnCAQKBgQDgW5MgfhX8yjXqoaUy/d1VjI8dHeIyw8d+OBAYwaxRSlCfyQ+tieWcR2HdTzPca0T0GkWcKZm0ei5xRURgxt4DUDLXNh26HG0qObbtLJdu/AuBUuCqgOiLqJ2f1uIbrz6OZUHns+bT/jGW2Ws8+C13zTCZkZt9CaQsrp3QOGDx5wKBgQDTul39hp3ZPwGNFeZdkGoUoViOSd5Lhowd5wYMGAEXWRLlU8z+smT5v0POz9JnIbCRchIY2FAPKRdVTICzmPk2EPJFxYTcwaNbVqL6lN7J2IlXXMiit5QbiLauo55w7plwV6LQmKm9KV7JsZs5XwqF7CEovI7GevFzyD3w+uizAQKBgC3LY1eRhOlpWOIAhpjG6qOoohmeXOphvdmMlfSHq6WYFqbWwmV4rS5d/6LNpNdL6fItXqIGd8I34jzql49taCmi+A2nlR/E559j0mvM20gjGDIYeZUz5MOE8k+K6/IcrhcgofgqZ2ZED1ksHdB/E8DNWCswZl16V1FrfvjeWSNnAoGAMrBplCrIW5xz+J0Hm9rZKrs+AkK5D4fUv8vxbK/KgxZ2KaUYbNm0xv39c+PZUYuFRCz1HDGdaSPDTE6WeWjkMQd5mS6ikl9hhpqFRkyh0d0fdGToO9yLftQKOGE/q3XUEktI1XvXF0xyPwNgUCnq0QkpHyGVZPtGFxwXiDvpvgECgYA5PoB+nY8iDiRaJNko9w0hL4AeKogwf+4TbCw+KWVEn6jhuJa4LFTdSqp89PktQaoVpwv92el/AhYjWOl/jVCm122f9b7GyoelbjMNolToDwe5pF5RnSpEuDdLy9MfE8LnE3PlbE7E5BipQ3UjSebkgNboLHH/lNZA5qvEtvbfvQ==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAut9evKRuHJ/2QNfDlLwvN/S8l9hRAgPbb0u61bm4AtzaTGsLeMtScetxTWJnVvAVpMS9luhEJjt+Sbk5TNLArsgzzwARgaTKOLMT1TvWAK5EbHyI+eSrc3s7Awe1VYGwcubRFWDm16eQLv0k7iqiw+4mweHSz/wWyvBJVgwLoQ02btVtAQErCfSJCOmt0Q/oJQjj08YNRV4EKzB19+f5A+HQVAKy72dSybTzAK+3FPtTtNen/+b5wGeat7c32dhYHnGorPkPeXLtsqqUTp1su5fMfd4lElNdZaoCI7osZxWWUo17vBCZnyeXc9fk0qwD9mK6yRAxNbrY72Xx5VqIqwIDAQAB', 'http://api.auauz.net/api/aliPay/return', 'RSA2', '2088102176044281');

-- ----------------------------
-- Table structure for tool_email_config
-- ----------------------------
DROP TABLE IF EXISTS `tool_email_config`;
CREATE TABLE `tool_email_config`  (
  `config_id` bigint(20) NOT NULL COMMENT 'ID',
  `from_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件人',
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮件服务器SMTP地址',
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `port` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '端口',
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发件者用户名',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '邮箱配置' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tool_local_storage
-- ----------------------------
DROP TABLE IF EXISTS `tool_local_storage`;
CREATE TABLE `tool_local_storage`  (
  `storage_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件真实的名称',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `suffix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后缀',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `size` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大小',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`storage_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '本地存储' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tool_picture
-- ----------------------------
DROP TABLE IF EXISTS `tool_picture`;
CREATE TABLE `tool_picture`  (
  `picture_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片名称',
  `md5code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件的MD5值',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片大小',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `delete_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除的URL',
  `height` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片高度',
  `width` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片宽度',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '上传日期',
  PRIMARY KEY (`picture_id`) USING BTREE,
  UNIQUE INDEX `uniq_md5_code`(`md5code`) USING BTREE,
  INDEX `inx_url`(`url`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Sm.Ms图床' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tool_qiniu_config
-- ----------------------------
DROP TABLE IF EXISTS `tool_qiniu_config`;
CREATE TABLE `tool_qiniu_config`  (
  `config_id` bigint(20) NOT NULL COMMENT 'ID',
  `access_key` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'accessKey',
  `bucket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Bucket 识别符',
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '外链域名',
  `secret_key` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'secretKey',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空间类型',
  `zone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机房',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '七牛云配置' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tool_qiniu_content
-- ----------------------------
DROP TABLE IF EXISTS `tool_qiniu_content`;
CREATE TABLE `tool_qiniu_content`  (
  `content_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bucket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Bucket 识别符',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件大小',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型：私有或公开',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件url',
  `suffix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件后缀',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '上传或同步的时间',
  PRIMARY KEY (`content_id`) USING BTREE,
  UNIQUE INDEX `uniq_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '七牛云文件存储' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;

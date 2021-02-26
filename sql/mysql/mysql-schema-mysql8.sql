
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_api` (
  `id` varchar(50) NOT NULL,
  `api_name` varchar(20) DEFAULT NULL COMMENT 'API名称',
  `api_url` varchar(45) DEFAULT NULL COMMENT 'API请求地址',
  `api_method` varchar(20) DEFAULT NULL COMMENT 'API请求方式：GET、POST、PUT、DELETE',
  `module_name` varchar(50) DEFAULT NULL COMMENT '模块名称',
  `open` int DEFAULT '0' COMMENT '是否开放',
  `api_sort` int DEFAULT NULL COMMENT '排序',
  `description` varchar(45) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='接口表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_article` (
  `id` varchar(50) NOT NULL COMMENT 'ID',
  `author_id` varchar(50) DEFAULT NULL COMMENT '作者ID',
  `title` varchar(50) DEFAULT NULL COMMENT '文章标题',
  `slug` varchar(200) DEFAULT NULL COMMENT '文章slugify标志',
  `category_id` varchar(50) DEFAULT NULL COMMENT '文章分类ID',
  `summary` text COMMENT '文章概述',
  `content_markdown` longtext COMMENT '内容(markdown格式)',
  `views_count` int DEFAULT '0' COMMENT '浏览量',
  `comments_count` int DEFAULT '0' COMMENT '评论数',
  `top` int DEFAULT '0' COMMENT '置顶（0:不置顶，1:置顶）',
  `image_url` varchar(200) DEFAULT NULL COMMENT '文章图片',
  `create_time` datetime DEFAULT NULL COMMENT '发表日期',
  `modified_time` datetime DEFAULT NULL COMMENT '修改日期',
  `state` char(1) DEFAULT '1' COMMENT '状态（1:启用，0:删除）',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `author_id` (`author_id`) USING BTREE,
  KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='文章表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_article_tag` (
  `tag_id` varchar(50) NOT NULL COMMENT '标签ID',
  `article_id` varchar(50) NOT NULL COMMENT '文章ID',
  PRIMARY KEY (`article_id`,`tag_id`) USING BTREE,
  KEY `tag_id` (`tag_id`) USING BTREE,
  CONSTRAINT `tb_article_tag_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tb_tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_article_tag_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `tb_article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='文章标签关系表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_category` (
  `id` varchar(40) NOT NULL COMMENT '分类ID',
  `slug` varchar(100) NOT NULL COMMENT 'slug',
  `name` varchar(10) DEFAULT NULL COMMENT '分类名',
  `icon` varchar(100) DEFAULT NULL COMMENT '分类图标URL',
  `sort` int DEFAULT '1' COMMENT '分类排序',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='文章分类表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_friend` (
  `id` varchar(50) NOT NULL COMMENT 'ID',
  `site_name` varchar(200) DEFAULT NULL COMMENT '站名',
  `path` varchar(500) DEFAULT NULL COMMENT '网站URL',
  `avatar` varchar(500) DEFAULT NULL COMMENT '头像',
  `description` varchar(200) DEFAULT NULL COMMENT '概述',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='友情链接表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_menu` (
  `id` varchar(50) NOT NULL COMMENT 'ID',
  `menu_name` varchar(20) DEFAULT NULL COMMENT '菜单名称',
  `route_name` varchar(20) DEFAULT NULL COMMENT '前端路由名',
  `description` text COMMENT '菜单描述',
  `menu_url` varchar(20) DEFAULT NULL COMMENT '菜单地址',
  `menu_icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `pid` varchar(50) DEFAULT NULL COMMENT '菜单父id',
  `menu_sort` int DEFAULT NULL COMMENT '菜单排序',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE,
  CONSTRAINT `tb_menu_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `tb_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_notice` (
  `id` varchar(40) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `important` int DEFAULT '0',
  `sort` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='公告表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_page` (
  `id` varchar(50) NOT NULL COMMENT 'ID',
  `title` varchar(50) DEFAULT NULL COMMENT '页面标题',
  `slug` varchar(200) DEFAULT NULL COMMENT '页面slugify标志',
  `content_markdown` longtext COMMENT '内容(markdown格式)',
  `create_time` datetime DEFAULT NULL COMMENT '发表日期',
  `modified_time` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='页面表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_role` (
  `id` varchar(50) NOT NULL,
  `role_code` varchar(20) DEFAULT NULL,
  `role_name` varchar(20) DEFAULT NULL COMMENT '角色名',
  `description` varchar(50) DEFAULT NULL COMMENT '角色描述',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `role_code` (`role_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_role_api` (
  `role_id` varchar(50) NOT NULL,
  `api_id` varchar(50) NOT NULL,
  PRIMARY KEY (`role_id`,`api_id`) USING BTREE,
  KEY `api_id` (`api_id`) USING BTREE,
  CONSTRAINT `tb_role_api_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_role_api_ibfk_2` FOREIGN KEY (`api_id`) REFERENCES `tb_api` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_role_menu` (
  `role_id` varchar(50) NOT NULL,
  `menu_id` varchar(50) NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE,
  KEY `menu_id` (`menu_id`) USING BTREE,
  CONSTRAINT `tb_role_menu_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_role_menu_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `tb_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_site_info` (
  `id` varchar(50) NOT NULL COMMENT 'ID',
  `avatar` varchar(100) DEFAULT NULL COMMENT '博主头像',
  `slogan` varchar(255) DEFAULT NULL COMMENT '网站标语',
  `name` varchar(20) DEFAULT NULL COMMENT '博主名',
  `domain` varchar(30) DEFAULT NULL COMMENT '域名',
  `notice` varchar(50) DEFAULT NULL COMMENT '网站通知',
  `description` varchar(255) DEFAULT NULL COMMENT '网站简述',
  `footer` varchar(500) DEFAULT NULL COMMENT '网站底部',
  `beian` varchar(500) DEFAULT NULL COMMENT '网站备案',
  `banner` varchar(500) DEFAULT NULL COMMENT '横幅',
  `extend` varchar(500) DEFAULT NULL COMMENT '扩展json',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='网站信息表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_social` (
  `id` varchar(50) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `href` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tag` (
  `id` varchar(50) NOT NULL DEFAULT '' COMMENT '标签ID',
  `name` varchar(10) DEFAULT NULL COMMENT '标签名',
  `sort` int DEFAULT '1' COMMENT '标签排序',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='文章标签表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_user` (
  `id` varchar(50) NOT NULL COMMENT 'ID',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `birthday` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '出生年月日',
  `avatar` varchar(150) DEFAULT NULL COMMENT '头像',
  `description` text COMMENT '个人简介',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  `state` char(1) DEFAULT '1' COMMENT '用户状态',
  `fullname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `mobile` (`mobile`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_user_role` (
  `user_id` varchar(50) NOT NULL,
  `role_id` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE,
  KEY `role_id` (`role_id`) USING BTREE,
  CONSTRAINT `tb_user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='用户角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


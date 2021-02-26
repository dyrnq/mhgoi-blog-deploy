
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

/*!40000 ALTER TABLE `tb_api` DISABLE KEYS */;
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('00366a701c83242afa4ae711df143ce6','添加用户','/user','POST','用户',0,1,'');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('049455a30abe0a7de5ed19ac444de0fc','查询所有接口','/backendApi','GET','接口',0,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('05fb28f8a80e4d11403e399cbacf9e83','绑定邮箱','/user/email/*','POST','用户',0,12,'');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('0f171505136ca957d786cec99f115d27','分页查询文章概览','/article/*/*','POST','文章',1,1,'');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('18083f3426007024ce5e3af2aa0220aa','上传文章图片','/file/token','GET','文章',0,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('1a58d0439395f64ca89a7135cc2df051','分页查询页面','/page/*/*','POST','站点相关',1,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('1ebb6b13b59373ecec8c2ee56e703b5e','文件上传','/upload/**','POST,PUT,GET','文件',0,1,'');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('2153d126273602f159d61755e0c6399c','发送邮箱验证码','/verification/email','POST','验证码',0,1,'');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('25365f0e86e99679d24622072a5fb427','添加接口','/backendApi','POST','接口',0,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('2ae05164b3999baacf6c789f710dd359','slug','/article/slug/*','GET','文章',1,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('2d826c04df53a34530b41b1661381eb2','查询用户','/user/*','GET','用户',0,4,'查询单个');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('3347549c13bbb48e45e80b1057d1b765','分页查询接口','/backendApi/*/*','POST','接口',0,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('35c9d4361da3ddcaf15961aa585fbad4','所有接口','/**','GET,POST,PUT,DELETE','所有',0,1,'所有接口的权限');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('45968ba6a72ef7595e22a6641c5ae53e','注册','/user/register/*','POST','用户',1,8,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('48303a8822864023d0f9ba50c228545d','文章浏览量','/article/visit/*','PUT','文章',1,1,'');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('49bfe8005ba9c7b64dc8f739969ad289','文件所有权限','/file/**','GET,POST,PUT,DELETE','文件',0,1,'');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('50e3ca6d0a89d2a8a81ae98074aa7211','添加菜单','/menu','POST','菜单',0,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('53d915f6bc1a2e19eb2d1451e6906dad','修改角色','/role','PUT','角色',0,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('598793b20c4d109edae7fc6244b55ba2','角色授权菜单','/menu/grant/*','POST','菜单',0,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('5f65ab4870e319de9b660835f0c99580','根据slug查询页面','/page/slug/*','GET','站点相关',1,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('60135a697f1d91fca7686b5ee4c4f428','站點運行時','/siteInfo/runtime','GET','站点相关',1,1,'');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('6105d809fecd318dc1511ce39bc1b051','获取个人信息','/user/info','GET','用户',1,5,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('6321957e73c1a69a4f63f936a57fd103','修改用户','/user','PUT','用户',0,3,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('6867f7a2f6f17cc5447c707e94340294','分页查询角色','/role/*/*','POST','角色',0,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('6c1bc363ee4bf8b1a148f99f0daa48d8','写页面','/page','POST','站点相关',0,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('73d0d08b619ef5fa5869f61ac670f023','查询单个菜单','/menu/*','GET','菜单',0,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('7ca6d8e035402a915b5802ba8aa55dc1','短信验证码','/verification/mobile','POST','验证码',1,2,'');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('8109a0529e62d6a24b11d4fcb8d98fb0','删除用户','/user','DELETE','用户',0,2,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('8d2010e8cd8d12a8e11619fd4fd423eb','feed','/feed/*','GET','站点相关',1,1,'');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('8ef140454db1940f5215c79bbc0bf6ec','刷新令牌','/user/refresh','POST','用户',1,9,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('8f200e99626a408289b9ed80e2249a23','公告查询','/notice','GET','站点相关',1,1,'');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('9563b07de6d6d29a08f1a1b01891c765','查询单个文章','/article/*','GET','文章',1,2,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('a0cdbadc88eb586010dfb8f7b8550631','删除接口','/backendApi','DELETE','接口',0,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('af850ca2b7d065e0ae53343d26a5750b','修改接口','/backendApi','PUT','接口',0,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('b423aef8686a143a3717841da35154a0','删除菜单','/menu','DELETE','菜单',0,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('c0e12a86ebdd3990c5d7d6fc973640a1','获取上传token','/file/token','GET','文件',0,1,'获取七牛云上传图片所需的token');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('c3e24bedbbb0b72b1dcf64015f708bdf','添加角色','/role','POST','角色',0,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('c7ab11b1bb0f4c03a7f01a580ed1efb8','分页查询文章标签','/tag/*/*','POST','文章',0,2,'');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('c8d7cfc4f0f34e289e2d93ff5acb5a17','站点信息','/siteInfo','GET','站点相关',1,1,'');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('cdf930f7bd15ae7264eaf9da9810e6c9','修改菜单','/menu','PUT','菜单',0,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('d107f96f946170cba27d1f1ebddc93a4','查询文章类别','/category','GET','文章',1,1,'');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('d2332f4617dbbe430f9892aa515a15c1','写文章','/article','POST','文章',0,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('dc9b05b30bd426e91633a12133805607','获取文章相关评论','/comment/article/*','GET','文章',1,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('e312c18dd7a57071b2694db6e637038a','站点朋友','/friend','GET','站点相关',1,1,'');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('e5577f94f40c0afb2d404083c69861da','查询','/tag','GET','文章',1,1,'');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('eb45d07966bc071bcdadf3bd6165fe1b','分页查询','/user/*/*','POST','用户',0,6,'分页查询用户');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('ed3f607ffc1caf583b0233a254f6d507','站点社交','/social','GET','站点相关',1,1,'');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('ef92ae01a5e2d5abf2e289b78ed8bc8d','查询标签文章','/article','GET','文章',1,1,'');
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('f4452c78ddade29b63a6a7932c26b7d7','查询所有角色','/role','GET','角色',0,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('f82c72d91d0e1c604e955cd003af9e70','添加评论','/comment','POST','文章',1,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('f9ad8c4fe124d8528019777004ad8112','查询所有菜单','/menu','GET','菜单',0,1,NULL);
INSERT INTO `tb_api` (`id`, `api_name`, `api_url`, `api_method`, `module_name`, `open`, `api_sort`, `description`) VALUES ('fc5fd36102eb49bce5cdf56975c5f983','删除角色','/role','DELETE','角色',0,1,NULL);
/*!40000 ALTER TABLE `tb_api` ENABLE KEYS */;

/*!40000 ALTER TABLE `tb_category` DISABLE KEYS */;
INSERT INTO `tb_category` (`id`, `slug`, `name`, `icon`, `sort`) VALUES ('1','shenghuo','生活','el-ali-tubiaozhizuomobanyihuifu-',1);
INSERT INTO `tb_category` (`id`, `slug`, `name`, `icon`, `sort`) VALUES ('2','jingyan','经验','el-ali-jingyan',2);
INSERT INTO `tb_category` (`id`, `slug`, `name`, `icon`, `sort`) VALUES ('3','gongju','工具','el-ali-caozuojiemiantubiao---_gongju',3);
INSERT INTO `tb_category` (`id`, `slug`, `name`, `icon`, `sort`) VALUES ('4','jishu','技术','el-ali-kechengguanlitubiao_huaban',4);
/*!40000 ALTER TABLE `tb_category` ENABLE KEYS */;

/*!40000 ALTER TABLE `tb_friend` DISABLE KEYS */;
INSERT INTO `tb_friend` (`id`, `site_name`, `path`, `avatar`, `description`, `create_time`) VALUES ('1','心月云','https://wch666.com','https://wch666.com/head.png','永远年轻，永远热泪盈眶','2020-08-02 15:36:39');
/*!40000 ALTER TABLE `tb_friend` ENABLE KEYS */;

/*!40000 ALTER TABLE `tb_menu` DISABLE KEYS */;
INSERT INTO `tb_menu` (`id`, `menu_name`, `route_name`, `description`, `menu_url`, `menu_icon`, `pid`, `menu_sort`) VALUES ('055d31745a48483396c7c4ff7208660b','角色管理','Role','角色管理','role','el-ali-jiaoseguanli','799b66a38e3b403f9fda1207b63d4e22',2);
INSERT INTO `tb_menu` (`id`, `menu_name`, `route_name`, `description`, `menu_url`, `menu_icon`, `pid`, `menu_sort`) VALUES ('0c0d216b05404939a50c92ab5f130211','菜单管理','Menu','菜单管理','menu','el-ali-erji-caidanguanli','799b66a38e3b403f9fda1207b63d4e22',10);
INSERT INTO `tb_menu` (`id`, `menu_name`, `route_name`, `description`, `menu_url`, `menu_icon`, `pid`, `menu_sort`) VALUES ('1cd3458be8224405b1ecd6f75bd944c5','API管理','Api','管理后端接口','backendApi','el-ali-quanxian','799b66a38e3b403f9fda1207b63d4e22',3);
INSERT INTO `tb_menu` (`id`, `menu_name`, `route_name`, `description`, `menu_url`, `menu_icon`, `pid`, `menu_sort`) VALUES ('1d93c58f9ed3697798af43ad061944bb','文章',NULL,'文章','/article','el-ali-16',NULL,10);
INSERT INTO `tb_menu` (`id`, `menu_name`, `route_name`, `description`, `menu_url`, `menu_icon`, `pid`, `menu_sort`) VALUES ('3154c149cb6d9915db2b2ec5601f4e81','页面管理','Page','页面管理','page','el-ali-wenzhangguanli','b2934ccbd53c4a4c34f5286c1b61eb56',1);
INSERT INTO `tb_menu` (`id`, `menu_name`, `route_name`, `description`, `menu_url`, `menu_icon`, `pid`, `menu_sort`) VALUES ('46e65e40e7830a4c19f1b5fa66c2358e','站点信息','SiteInfo','站点信息','info','el-ali-wangzhanxinxi','b2934ccbd53c4a4c34f5286c1b61eb56',1);
INSERT INTO `tb_menu` (`id`, `menu_name`, `route_name`, `description`, `menu_url`, `menu_icon`, `pid`, `menu_sort`) VALUES ('50c3c042bf36e29e1eab754c87ac7fe9','社交管理','Social','社交管理','social','el-ali-pengyou','b2934ccbd53c4a4c34f5286c1b61eb56',3);
INSERT INTO `tb_menu` (`id`, `menu_name`, `route_name`, `description`, `menu_url`, `menu_icon`, `pid`, `menu_sort`) VALUES ('799b66a38e3b403f9fda1207b63d4e22','系统',NULL,'系统','/sys','el-ali-xitong',NULL,100);
INSERT INTO `tb_menu` (`id`, `menu_name`, `route_name`, `description`, `menu_url`, `menu_icon`, `pid`, `menu_sort`) VALUES ('8ebb0b6b631dd93273eab2677dfeb547','友站管理','FriendSite','友站管理','friend','el-ali-lianxifangshi','b2934ccbd53c4a4c34f5286c1b61eb56',2);
INSERT INTO `tb_menu` (`id`, `menu_name`, `route_name`, `description`, `menu_url`, `menu_icon`, `pid`, `menu_sort`) VALUES ('b2934ccbd53c4a4c34f5286c1b61eb56','站点','','站点','/site','el-ali-wangzhan',NULL,20);
INSERT INTO `tb_menu` (`id`, `menu_name`, `route_name`, `description`, `menu_url`, `menu_icon`, `pid`, `menu_sort`) VALUES ('d0a4f27ec76b4d22a79377a06e93f461','用户管理','User','用户管理','user','el-ali-yonghu','799b66a38e3b403f9fda1207b63d4e22',1);
INSERT INTO `tb_menu` (`id`, `menu_name`, `route_name`, `description`, `menu_url`, `menu_icon`, `pid`, `menu_sort`) VALUES ('e5554caf6864f696a8cbbc859736aae9','分类管理','Category','分类管理','category','el-ali-leimupinleifenleileibie','1d93c58f9ed3697798af43ad061944bb',2);
INSERT INTO `tb_menu` (`id`, `menu_name`, `route_name`, `description`, `menu_url`, `menu_icon`, `pid`, `menu_sort`) VALUES ('e71f7949915a3b74dd3e6cdc15b7a5e9','文章管理','Article','文章管理','manage','el-ali-wenzhangguanli','1d93c58f9ed3697798af43ad061944bb',1);
INSERT INTO `tb_menu` (`id`, `menu_name`, `route_name`, `description`, `menu_url`, `menu_icon`, `pid`, `menu_sort`) VALUES ('f152343c070b465f6531b1fffed95344','公告','Notice','公告','notice','el-ali-gonggao1','b2934ccbd53c4a4c34f5286c1b61eb56',4);
/*!40000 ALTER TABLE `tb_menu` ENABLE KEYS */;

/*!40000 ALTER TABLE `tb_notice` DISABLE KEYS */;
INSERT INTO `tb_notice` (`id`, `content`, `important`, `sort`) VALUES ('1294210891365031938','唔该博客开源了',0,1);
/*!40000 ALTER TABLE `tb_notice` ENABLE KEYS */;

/*!40000 ALTER TABLE `tb_page` DISABLE KEYS */;
INSERT INTO `tb_page` (`id`, `title`, `slug`, `content_markdown`, `create_time`, `modified_time`) VALUES ('1','关于','about','## 关于博客\n\n唔该博客(mhgoi_blog)，一个基于微服务架构的前后端分离博客系统。后端使用Spring cloud + Spring boot + mybatis-plus进行开发，使用 Jwt + Spring Security做登录验证和权限校验，前端使用Vue + Element。\n\n非常感谢 fengziy 提供了一套完善的前端的个人博客模板，支持疯子先生https://gitee.com/fengziy/Gblog\n\n非常感谢 zeyili 提供了一套完善的后端的个人博客，支持https://gitee.com/zeyili/blog-li\n\n## 关于我\n\n```bah\necho $(whoami)\n唔该\n```','2021-01-15 09:43:13','2021-01-22 12:04:18');
/*!40000 ALTER TABLE `tb_page` ENABLE KEYS */;

/*!40000 ALTER TABLE `tb_role` DISABLE KEYS */;
INSERT INTO `tb_role` (`id`, `role_code`, `role_name`, `description`) VALUES ('10001','SUPER_ADMIN','超级管理员','拥有所有权限');
INSERT INTO `tb_role` (`id`, `role_code`, `role_name`, `description`) VALUES ('10002','ADMIN','管理员','访问后台，但是不包括系统管理');
INSERT INTO `tb_role` (`id`, `role_code`, `role_name`, `description`) VALUES ('10005','USER','用户','用户角色');
INSERT INTO `tb_role` (`id`, `role_code`, `role_name`, `description`) VALUES ('10006','VISITOR','游客','可以查看后台，无其他任他操作权限');
/*!40000 ALTER TABLE `tb_role` ENABLE KEYS */;

/*!40000 ALTER TABLE `tb_role_api` DISABLE KEYS */;
INSERT INTO `tb_role_api` (`role_id`, `api_id`) VALUES ('10005','05fb28f8a80e4d11403e399cbacf9e83');
INSERT INTO `tb_role_api` (`role_id`, `api_id`) VALUES ('10005','2153d126273602f159d61755e0c6399c');
INSERT INTO `tb_role_api` (`role_id`, `api_id`) VALUES ('10005','2d826c04df53a34530b41b1661381eb2');
INSERT INTO `tb_role_api` (`role_id`, `api_id`) VALUES ('10001','35c9d4361da3ddcaf15961aa585fbad4');
INSERT INTO `tb_role_api` (`role_id`, `api_id`) VALUES ('10005','6321957e73c1a69a4f63f936a57fd103');
INSERT INTO `tb_role_api` (`role_id`, `api_id`) VALUES ('10006','6867f7a2f6f17cc5447c707e94340294');
INSERT INTO `tb_role_api` (`role_id`, `api_id`) VALUES ('10006','73d0d08b619ef5fa5869f61ac670f023');
INSERT INTO `tb_role_api` (`role_id`, `api_id`) VALUES ('10006','c0e12a86ebdd3990c5d7d6fc973640a1');
INSERT INTO `tb_role_api` (`role_id`, `api_id`) VALUES ('10006','c7ab11b1bb0f4c03a7f01a580ed1efb8');
INSERT INTO `tb_role_api` (`role_id`, `api_id`) VALUES ('10006','c8d7cfc4f0f34e289e2d93ff5acb5a17');
INSERT INTO `tb_role_api` (`role_id`, `api_id`) VALUES ('10006','e312c18dd7a57071b2694db6e637038a');
INSERT INTO `tb_role_api` (`role_id`, `api_id`) VALUES ('10006','ed3f607ffc1caf583b0233a254f6d507');
INSERT INTO `tb_role_api` (`role_id`, `api_id`) VALUES ('10006','f9ad8c4fe124d8528019777004ad8112');
/*!40000 ALTER TABLE `tb_role_api` ENABLE KEYS */;

/*!40000 ALTER TABLE `tb_role_menu` DISABLE KEYS */;
INSERT INTO `tb_role_menu` (`role_id`, `menu_id`) VALUES ('10001','055d31745a48483396c7c4ff7208660b');
INSERT INTO `tb_role_menu` (`role_id`, `menu_id`) VALUES ('10001','0c0d216b05404939a50c92ab5f130211');
INSERT INTO `tb_role_menu` (`role_id`, `menu_id`) VALUES ('10001','1cd3458be8224405b1ecd6f75bd944c5');
INSERT INTO `tb_role_menu` (`role_id`, `menu_id`) VALUES ('10001','1d93c58f9ed3697798af43ad061944bb');
INSERT INTO `tb_role_menu` (`role_id`, `menu_id`) VALUES ('10001','3154c149cb6d9915db2b2ec5601f4e81');
INSERT INTO `tb_role_menu` (`role_id`, `menu_id`) VALUES ('10001','46e65e40e7830a4c19f1b5fa66c2358e');
INSERT INTO `tb_role_menu` (`role_id`, `menu_id`) VALUES ('10001','50c3c042bf36e29e1eab754c87ac7fe9');
INSERT INTO `tb_role_menu` (`role_id`, `menu_id`) VALUES ('10001','799b66a38e3b403f9fda1207b63d4e22');
INSERT INTO `tb_role_menu` (`role_id`, `menu_id`) VALUES ('10001','8ebb0b6b631dd93273eab2677dfeb547');
INSERT INTO `tb_role_menu` (`role_id`, `menu_id`) VALUES ('10001','b2934ccbd53c4a4c34f5286c1b61eb56');
INSERT INTO `tb_role_menu` (`role_id`, `menu_id`) VALUES ('10001','d0a4f27ec76b4d22a79377a06e93f461');
INSERT INTO `tb_role_menu` (`role_id`, `menu_id`) VALUES ('10001','e5554caf6864f696a8cbbc859736aae9');
INSERT INTO `tb_role_menu` (`role_id`, `menu_id`) VALUES ('10001','e71f7949915a3b74dd3e6cdc15b7a5e9');
INSERT INTO `tb_role_menu` (`role_id`, `menu_id`) VALUES ('10001','f152343c070b465f6531b1fffed95344');
/*!40000 ALTER TABLE `tb_role_menu` ENABLE KEYS */;

/*!40000 ALTER TABLE `tb_site_info` DISABLE KEYS */;
INSERT INTO `tb_site_info` (`id`, `avatar`, `slogan`, `name`, `domain`, `notice`, `description`, `footer`, `beian`, `banner`, `extend`) VALUES ('1','/pic/svgA6412628769101711.png','Creativity Is Intelligence Having Fun.','唔该博客','https://blog.mhgoi.net','','一个普通的Java攻城狮','由<a target=\"_blank\" class=\"out-link\" href=\"https://blog.mhgoi.net\">唔该博客</a>驱动','<a target=\"_blank\" href=\"http://beian.miit.gov.cn/\">粤ICP备2020092745号</a>','','{\"info\":\"就是扩展\"}');
/*!40000 ALTER TABLE `tb_site_info` ENABLE KEYS */;

/*!40000 ALTER TABLE `tb_social` DISABLE KEYS */;
INSERT INTO `tb_social` (`id`, `title`, `icon`, `color`, `href`) VALUES ('1','GitHub','el-ali-github','#24292E','https://github.com/dyrnq');
INSERT INTO `tb_social` (`id`, `title`, `icon`, `color`, `href`) VALUES ('2','Gitee','el-ali-icon_gitee','#d81e06','https://gitee.com/dyrnq');
/*!40000 ALTER TABLE `tb_social` ENABLE KEYS */;

/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` (`id`, `username`, `password`, `mobile`, `email`, `sex`, `birthday`, `avatar`, `description`, `create_time`, `modified_time`, `state`, `fullname`) VALUES ('1','admin','$2a$10$oL4bLj6yV/Qu6yB9n6pytu5BF/Uwo8UTVu.6iYBEyuQMaR/KRpQNS','','','1','2021-01-17 11:01:25','/pic/logo.png','一个普通的Java攻城狮','2020-07-02 16:42:35','2021-01-17 11:01:25','1','少年');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;

/*!40000 ALTER TABLE `tb_user_role` DISABLE KEYS */;
INSERT INTO `tb_user_role` (`user_id`, `role_id`) VALUES ('1','10001');
/*!40000 ALTER TABLE `tb_user_role` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


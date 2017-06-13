DROP TABLE IF EXISTS `a0004_admin`;
CREATE TABLE `a0004_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` tinyint(1) DEFAULT '0',
  `ctime` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT '0',
  `name` varchar(20) DEFAULT '',
  `pass` varchar(100) DEFAULT '',
  `face` varchar(10) DEFAULT '',
  `realname` varchar(20) DEFAULT '',
  `address` varchar(255) DEFAULT '',
  `mobile` varchar(20) DEFAULT '',
  `intro` varchar(255) DEFAULT '',
  `qq` varchar(20) DEFAULT '',
  `sex` char(2) DEFAULT '',
  `rbac` varchar(255) DEFAULT '',
  `json` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `a0004_item`;
CREATE TABLE `a0004_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `nid` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `sortby` int(11) NOT NULL DEFAULT '100',
  `ctime` int(11) NOT NULL DEFAULT '0',
  `utime` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_color` varchar(10) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `image_path` varchar(255) NOT NULL,
  `bgcolor` varchar(10) NOT NULL,
  `url` varchar(255) NOT NULL,
  `url_title` varchar(255) NOT NULL,
  `url_target` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `summary_color` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

INSERT INTO `a0004_item` VALUES("15","0","1","1","100","1445134500","1490520564","INTRO","","image.jpg","data/photo/15","#8565aa","http://www.ifeiwu.com/","了解详细","_self","这是一个左文右图的模版，文字和图片 占有同样的视觉比例，目的是让文字也 享有视觉焦点。让图文更好的结合展 示，更流畅地表达你自己。","");
INSERT INTO `a0004_item` VALUES("16","0","1","1","99","1445134713","1487061472","WISDOM","","image.jpg","data/photo/16","#1abb88","","","_self","它不仅思维灵活，而且拥有自己的智 慧。根据不同的情况和不同的需求而 选择不同的解决方案。","");
INSERT INTO `a0004_item` VALUES("17","0","1","1","98","1445134743","1487061493","FREEDOM","","image.jpg","data/photo/17","#339bd7","","","_self","给予网站用户最大的自由，体会最大限 度不被技术所束缚的自由自在之美。","");
INSERT INTO `a0004_item` VALUES("18","0","1","1","97","1445134779","1487061512","COLORFUL","","image.jpg","data/photo/18","#a5ca40","","","_self","遵循了扁平化网站配色的方案，采用多 色彩背景系列，点亮用户的双眼。","");


DROP TABLE IF EXISTS `a0004_log`;
CREATE TABLE `a0004_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `state` tinyint(1) DEFAULT '0',
  `ctime` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT '0',
  `admin_id` int(11) DEFAULT '0',
  `admin_name` varchar(20) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `table` varchar(20) DEFAULT '',
  `table_id` int(11) DEFAULT '0',
  `ip` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `a0004_site`;
CREATE TABLE `a0004_site` (
  `state` tinyint(1) DEFAULT '1',
  `name` varchar(100) DEFAULT '',
  `value` varchar(1000) DEFAULT '',
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `a0004_site` VALUES("1","domain","qing.com/a0004");
INSERT INTO `a0004_site` VALUES("1","logo","logo.png");
INSERT INTO `a0004_site` VALUES("1","site_name","");
INSERT INTO `a0004_site` VALUES("1","favicon","");
INSERT INTO `a0004_site` VALUES("1","touch_icon","");
INSERT INTO `a0004_site` VALUES("1","title","");
INSERT INTO `a0004_site` VALUES("1","keywords","");
INSERT INTO `a0004_site` VALUES("1","description","");
INSERT INTO `a0004_site` VALUES("1","skin","");
INSERT INTO `a0004_site` VALUES("1","style-css","");
INSERT INTO `a0004_site` VALUES("1","style","");


DROP TABLE IF EXISTS `a0004_stats`;
CREATE TABLE `a0004_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `screen` varchar(20) DEFAULT '',
  `cookie` varchar(32) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `referer` varchar(255) DEFAULT '',
  `keyword` varchar(255) DEFAULT '',
  `os` varchar(20) DEFAULT '',
  `os_version` varchar(20) DEFAULT '',
  `mobile` varchar(20) DEFAULT '',
  `browser` varchar(20) DEFAULT '',
  `browser_version` varchar(20) DEFAULT '',
  `ip` varchar(20) DEFAULT '',
  `ip_isp` varchar(20) DEFAULT '',
  `ip_country` varchar(20) DEFAULT '',
  `ip_region` varchar(20) DEFAULT '',
  `ip_area` varchar(20) DEFAULT '',
  `ip_city` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `a0004_trash`;
CREATE TABLE `a0004_trash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` tinyint(1) DEFAULT '0',
  `ctime` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT '0',
  `admin_id` int(11) DEFAULT '0',
  `admin_name` varchar(255) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `path` varchar(255) DEFAULT '',
  `note` varchar(255) DEFAULT '',
  `table` varchar(255) DEFAULT '',
  `data` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




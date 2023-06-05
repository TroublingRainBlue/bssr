/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50738
 Source Host           : localhost:3306
 Source Schema         : a8

 Target Server Type    : MySQL
 Target Server Version : 50738
 File Encoding         : 65001

 Date: 01/06/2023 18:40:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(5) NULL DEFAULT NULL COMMENT '外键->表user',
  `title` varchar(800) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章标题\r\n文章标题',
  `author` varchar(800) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章作者',
  `date` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文章内容',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shunxv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isjiajing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `userid`(`userid`) USING BTREE,
  CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1013 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1001, 1005, '123', '111', '2023-06-01 00:21:26', '在北京一个没有雾霾的周日下午，身上洒着冬日下午的一缕余阳，坐在书桌旁为大家继续讲述五叔身后的故事。\r\n\r\n五叔的一生是一个典型的悲剧，但这样的事例在西北农村绝不是个例，多少家庭因为家里的主劳动力遭受意外后导致家庭落败，甚至家破人亡都不夸张。一方面中国农村家庭收入严重依赖主劳动力且收入单一，另一方面社会保障体系不完善导致家庭抗风险系数为零。家里主劳动力一旦伤残，家庭将会遭受毁灭性打击。\r\n\r\n读这篇文章之前，强烈建议大家先阅读《五叔的一生》这篇文章，本篇文章是对这篇文章的一个后续补充。\r\n\r\n上篇文章讲到五叔是去接女儿上班的时候发生的意外，那个时候孩子才四五岁，五叔出事半年后嫂子就带着女儿走了，毕竟五叔家里就留下这个一个女儿，大家也都担心这个孩子的去向。后来回村就断断续续的听说嫂子和另外一个人重新组建了家庭，大家想着毕竟有一个完整的家庭也挺好，再后来就没有什么消息了，直到今年国庆节。\r\n\r\n今年国庆为了躲避出行大军早早的回了老家，召集着姐姐、弟弟妹妹在小姨家一起搞烧烤，正在惬意的享受假期的自由时光，村里的一个大妈带着五叔的女儿来到了小姨家，大家大吃一惊，原本印象中的小女孩已经变成了小姑娘，毕竟已经过去了七八年，第一眼全然认不出来了。\r\n\r\n大妈的邻居就是五叔的哥哥一家，五叔的哥哥一家全部出门打工去了，整个屋子空无一人。大妈说下午她正在做饭，她听到隔壁有人不断的在敲门，并且不断的喊着 XX（五叔哥哥的女儿） 的名字，足足敲了十几分钟没有人答应，就一个人站在门外哭。\r\n\r\n大妈听见哭声就过来看了一下，发现一个小姑娘蹲在门上嚎嚎大哭，大妈心想不对呀，这是不是五叔的那个女儿？于是上去就问你找谁，你是不是五叔的那个女儿 xx。这一问才知道这她就是五叔留下来的那个女儿，12岁，不知道一个小女孩怎么隔了这么多年找了回来。\r\n\r\n大妈把小女孩叫到家里，给做了一些好吃的，吃完饭之后就拉到了小姨家，小姨家曾经和五叔家走得近一些，另外人也多热闹一些。孩子来到小姨家之后就被大家围了起来，毕竟我们都有一些血缘关系，大家都非常关心她的情况，先给她妈妈打了个电话，告诉她孩子在我们家，让她的母亲不要担心，晚点我们会给送回去。\r\n\r\n和姨夫、小女孩一番交流之下才知道他们这两年的生活，嫂子从五叔家离开之后，一个人带着孩子打了两年工，随后又改嫁到另外一个条件也不是特别好的家庭，随后把小女孩放到了外婆家生活了一段时间。\r\n\r\n改嫁后没多久生下来另外一个孩子，也是女儿，又过了两年，两人生活上有矛盾就又离婚了，嫂子就在县城租了一个小房子，把两个孩子接到身边自己来抚养，一个单身女性带着两个孩子，想想就知道生活得有多不容易。\r\n\r\n就这样五叔的女儿至少待在了她妈妈的身边，一直在县城读书，现在已经到了五年级，刚好国庆学校放假了 ，可能有一天在家特别的想自己的爸爸，就没有告诉她妈妈，一个人从县城走了回来。\r\n\r\n县城到我家步行大概有30分钟的路程，开车也就十分钟左右，虽说也不是特别远，但是一个12岁的小女孩，从五叔家走的时候也才5岁左右，隔了七八年愣生生的一个人走了回来，不知道是什么力量支撑着她，姨夫说，娃知道她的家在这里，肯定就会回来的，虽然家里现在空无一人，但这是她出生的地方呀！\r\n\r\n天快黑的时候，姐开车把孩子送到了嫂子家里，临走的时候家里给女孩塞了一点钱，说了一些安心话，让她知道有困难的时候记住这边还有一些亲戚可以联系。\r\n\r\n回到北京后，久久不能忘记小女孩的模样，忘不掉小女孩那种无家可归的眼神，忘不掉小女孩对大家既陌生又渴望亲情安抚的那副模样。嫂子和小女孩以后的路还有很长，我们只能寄希望她们以后的日子可以越过越好，却又有深深的无能为力的感觉。\r\n\r\n中国在不断的发展，人们的生活质量也真真切切的发生了天翻地覆的变化，整体都在不断的变好，但是对于弱势的农村来讲，仍然有很多很多脆弱的家庭，经不起任何风吹雨打，这是现实，很沉重，也很真实。\r\n\r\n一个国家是不是真的强大，一定不是出了多少英明领袖，造了多少核弹，有多少外汇储备，在奥运会拿了多少金牌，GDP增长率多高，修建了多少高铁，盖了多少世界大楼。。。这些和处在社会底端的那些人真的没有什么关系。\r\n\r\n一个国家怎样对待弱势群体，是一个社会最柔软的部分，恰恰也是一个社会最强大的部分。', NULL, NULL, NULL);
INSERT INTO `article` VALUES (1002, 1005, '123', '111', '2023-06-01 00:21:26', '在北京一个没有雾霾的周日下午，身上洒着冬日下午的一缕余阳，坐在书桌旁为大家继续讲述五叔身后的故事。\r\n\r\n五叔的一生是一个典型的悲剧，但这样的事例在西北农村绝不是个例，多少家庭因为家里的主劳动力遭受意外后导致家庭落败，甚至家破人亡都不夸张。一方面中国农村家庭收入严重依赖主劳动力且收入单一，另一方面社会保障体系不完善导致家庭抗风险系数为零。家里主劳动力一旦伤残，家庭将会遭受毁灭性打击。\r\n\r\n读这篇文章之前，强烈建议大家先阅读《五叔的一生》这篇文章，本篇文章是对这篇文章的一个后续补充。\r\n\r\n上篇文章讲到五叔是去接女儿上班的时候发生的意外，那个时候孩子才四五岁，五叔出事半年后嫂子就带着女儿走了，毕竟五叔家里就留下这个一个女儿，大家也都担心这个孩子的去向。后来回村就断断续续的听说嫂子和另外一个人重新组建了家庭，大家想着毕竟有一个完整的家庭也挺好，再后来就没有什么消息了，直到今年国庆节。\r\n\r\n今年国庆为了躲避出行大军早早的回了老家，召集着姐姐、弟弟妹妹在小姨家一起搞烧烤，正在惬意的享受假期的自由时光，村里的一个大妈带着五叔的女儿来到了小姨家，大家大吃一惊，原本印象中的小女孩已经变成了小姑娘，毕竟已经过去了七八年，第一眼全然认不出来了。\r\n\r\n大妈的邻居就是五叔的哥哥一家，五叔的哥哥一家全部出门打工去了，整个屋子空无一人。大妈说下午她正在做饭，她听到隔壁有人不断的在敲门，并且不断的喊着 XX（五叔哥哥的女儿） 的名字，足足敲了十几分钟没有人答应，就一个人站在门外哭。\r\n\r\n大妈听见哭声就过来看了一下，发现一个小姑娘蹲在门上嚎嚎大哭，大妈心想不对呀，这是不是五叔的那个女儿？于是上去就问你找谁，你是不是五叔的那个女儿 xx。这一问才知道这她就是五叔留下来的那个女儿，12岁，不知道一个小女孩怎么隔了这么多年找了回来。\r\n\r\n大妈把小女孩叫到家里，给做了一些好吃的，吃完饭之后就拉到了小姨家，小姨家曾经和五叔家走得近一些，另外人也多热闹一些。孩子来到小姨家之后就被大家围了起来，毕竟我们都有一些血缘关系，大家都非常关心她的情况，先给她妈妈打了个电话，告诉她孩子在我们家，让她的母亲不要担心，晚点我们会给送回去。\r\n\r\n和姨夫、小女孩一番交流之下才知道他们这两年的生活，嫂子从五叔家离开之后，一个人带着孩子打了两年工，随后又改嫁到另外一个条件也不是特别好的家庭，随后把小女孩放到了外婆家生活了一段时间。\r\n\r\n改嫁后没多久生下来另外一个孩子，也是女儿，又过了两年，两人生活上有矛盾就又离婚了，嫂子就在县城租了一个小房子，把两个孩子接到身边自己来抚养，一个单身女性带着两个孩子，想想就知道生活得有多不容易。\r\n\r\n就这样五叔的女儿至少待在了她妈妈的身边，一直在县城读书，现在已经到了五年级，刚好国庆学校放假了 ，可能有一天在家特别的想自己的爸爸，就没有告诉她妈妈，一个人从县城走了回来。\r\n\r\n县城到我家步行大概有30分钟的路程，开车也就十分钟左右，虽说也不是特别远，但是一个12岁的小女孩，从五叔家走的时候也才5岁左右，隔了七八年愣生生的一个人走了回来，不知道是什么力量支撑着她，姨夫说，娃知道她的家在这里，肯定就会回来的，虽然家里现在空无一人，但这是她出生的地方呀！\r\n\r\n天快黑的时候，姐开车把孩子送到了嫂子家里，临走的时候家里给女孩塞了一点钱，说了一些安心话，让她知道有困难的时候记住这边还有一些亲戚可以联系。\r\n\r\n回到北京后，久久不能忘记小女孩的模样，忘不掉小女孩那种无家可归的眼神，忘不掉小女孩对大家既陌生又渴望亲情安抚的那副模样。嫂子和小女孩以后的路还有很长，我们只能寄希望她们以后的日子可以越过越好，却又有深深的无能为力的感觉。\r\n\r\n中国在不断的发展，人们的生活质量也真真切切的发生了天翻地覆的变化，整体都在不断的变好，但是对于弱势的农村来讲，仍然有很多很多脆弱的家庭，经不起任何风吹雨打，这是现实，很沉重，也很真实。\r\n\r\n一个国家是不是真的强大，一定不是出了多少英明领袖，造了多少核弹，有多少外汇储备，在奥运会拿了多少金牌，GDP增长率多高，修建了多少高铁，盖了多少世界大楼。。。这些和处在社会底端的那些人真的没有什么关系。\r\n\r\n一个国家怎样对待弱势群体，是一个社会最柔软的部分，恰恰也是一个社会最强大的部分。', NULL, NULL, NULL);
INSERT INTO `article` VALUES (1003, 1005, '123', '111', '2023-06-01 00:21:26', '在北京一个没有雾霾的周日下午，身上洒着冬日下午的一缕余阳，坐在书桌旁为大家继续讲述五叔身后的故事。\r\n\r\n五叔的一生是一个典型的悲剧，但这样的事例在西北农村绝不是个例，多少家庭因为家里的主劳动力遭受意外后导致家庭落败，甚至家破人亡都不夸张。一方面中国农村家庭收入严重依赖主劳动力且收入单一，另一方面社会保障体系不完善导致家庭抗风险系数为零。家里主劳动力一旦伤残，家庭将会遭受毁灭性打击。\r\n\r\n读这篇文章之前，强烈建议大家先阅读《五叔的一生》这篇文章，本篇文章是对这篇文章的一个后续补充。\r\n\r\n上篇文章讲到五叔是去接女儿上班的时候发生的意外，那个时候孩子才四五岁，五叔出事半年后嫂子就带着女儿走了，毕竟五叔家里就留下这个一个女儿，大家也都担心这个孩子的去向。后来回村就断断续续的听说嫂子和另外一个人重新组建了家庭，大家想着毕竟有一个完整的家庭也挺好，再后来就没有什么消息了，直到今年国庆节。\r\n\r\n今年国庆为了躲避出行大军早早的回了老家，召集着姐姐、弟弟妹妹在小姨家一起搞烧烤，正在惬意的享受假期的自由时光，村里的一个大妈带着五叔的女儿来到了小姨家，大家大吃一惊，原本印象中的小女孩已经变成了小姑娘，毕竟已经过去了七八年，第一眼全然认不出来了。\r\n\r\n大妈的邻居就是五叔的哥哥一家，五叔的哥哥一家全部出门打工去了，整个屋子空无一人。大妈说下午她正在做饭，她听到隔壁有人不断的在敲门，并且不断的喊着 XX（五叔哥哥的女儿） 的名字，足足敲了十几分钟没有人答应，就一个人站在门外哭。\r\n\r\n大妈听见哭声就过来看了一下，发现一个小姑娘蹲在门上嚎嚎大哭，大妈心想不对呀，这是不是五叔的那个女儿？于是上去就问你找谁，你是不是五叔的那个女儿 xx。这一问才知道这她就是五叔留下来的那个女儿，12岁，不知道一个小女孩怎么隔了这么多年找了回来。\r\n\r\n大妈把小女孩叫到家里，给做了一些好吃的，吃完饭之后就拉到了小姨家，小姨家曾经和五叔家走得近一些，另外人也多热闹一些。孩子来到小姨家之后就被大家围了起来，毕竟我们都有一些血缘关系，大家都非常关心她的情况，先给她妈妈打了个电话，告诉她孩子在我们家，让她的母亲不要担心，晚点我们会给送回去。\r\n\r\n和姨夫、小女孩一番交流之下才知道他们这两年的生活，嫂子从五叔家离开之后，一个人带着孩子打了两年工，随后又改嫁到另外一个条件也不是特别好的家庭，随后把小女孩放到了外婆家生活了一段时间。\r\n\r\n改嫁后没多久生下来另外一个孩子，也是女儿，又过了两年，两人生活上有矛盾就又离婚了，嫂子就在县城租了一个小房子，把两个孩子接到身边自己来抚养，一个单身女性带着两个孩子，想想就知道生活得有多不容易。\r\n\r\n就这样五叔的女儿至少待在了她妈妈的身边，一直在县城读书，现在已经到了五年级，刚好国庆学校放假了 ，可能有一天在家特别的想自己的爸爸，就没有告诉她妈妈，一个人从县城走了回来。\r\n\r\n县城到我家步行大概有30分钟的路程，开车也就十分钟左右，虽说也不是特别远，但是一个12岁的小女孩，从五叔家走的时候也才5岁左右，隔了七八年愣生生的一个人走了回来，不知道是什么力量支撑着她，姨夫说，娃知道她的家在这里，肯定就会回来的，虽然家里现在空无一人，但这是她出生的地方呀！\r\n\r\n天快黑的时候，姐开车把孩子送到了嫂子家里，临走的时候家里给女孩塞了一点钱，说了一些安心话，让她知道有困难的时候记住这边还有一些亲戚可以联系。\r\n\r\n回到北京后，久久不能忘记小女孩的模样，忘不掉小女孩那种无家可归的眼神，忘不掉小女孩对大家既陌生又渴望亲情安抚的那副模样。嫂子和小女孩以后的路还有很长，我们只能寄希望她们以后的日子可以越过越好，却又有深深的无能为力的感觉。\r\n\r\n中国在不断的发展，人们的生活质量也真真切切的发生了天翻地覆的变化，整体都在不断的变好，但是对于弱势的农村来讲，仍然有很多很多脆弱的家庭，经不起任何风吹雨打，这是现实，很沉重，也很真实。\r\n\r\n一个国家是不是真的强大，一定不是出了多少英明领袖，造了多少核弹，有多少外汇储备，在奥运会拿了多少金牌，GDP增长率多高，修建了多少高铁，盖了多少世界大楼。。。这些和处在社会底端的那些人真的没有什么关系。\r\n\r\n一个国家怎样对待弱势群体，是一个社会最柔软的部分，恰恰也是一个社会最强大的部分。', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限名',
  `uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限对应的uri',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, '发布文章', '/addArticle');
INSERT INTO `permission` VALUES (2, '评论文章', '/addReply');
INSERT INTO `permission` VALUES (3, '编辑自己文章', '/editArticle');
INSERT INTO `permission` VALUES (4, '编辑他人文章', '/editArticle');
INSERT INTO `permission` VALUES (5, '删除自己文章', '/deleteArticle');
INSERT INTO `permission` VALUES (6, '删除他人文章', '/deleteArticle');
INSERT INTO `permission` VALUES (7, '置顶', '/zhiding');
INSERT INTO `permission` VALUES (8, '加精', '/jiajing');

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply`  (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `article_id` int(5) NULL DEFAULT NULL COMMENT '外键->表article',
  `replyer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论人',
  `date` datetime(0) NULL DEFAULT NULL COMMENT '评论时间',
  `reply` varchar(800) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `y`(`article_id`) USING BTREE,
  INDEX `a`(`replyer`) USING BTREE,
  CONSTRAINT `a` FOREIGN KEY (`replyer`) REFERENCES `user` (`nickname`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `y` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1020 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `level` int(5) NULL DEFAULT NULL COMMENT '角色等级超级管理员（3），管理员（2），普通会员（1）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', 3);
INSERT INTO `role` VALUES (3, '普通用户', 1);
INSERT INTO `role` VALUES (6, '普通会员', 1);

-- ----------------------------
-- Table structure for role_per
-- ----------------------------
DROP TABLE IF EXISTS `role_per`;
CREATE TABLE `role_per`  (
  `roleid` int(11) NULL DEFAULT NULL,
  `perid` int(11) NOT NULL AUTO_INCREMENT,
  INDEX `permid`(`perid`) USING BTREE,
  INDEX `roleid`(`roleid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_per
-- ----------------------------
INSERT INTO `role_per` VALUES (3, 1);
INSERT INTO `role_per` VALUES (1, 1);
INSERT INTO `role_per` VALUES (1, 2);
INSERT INTO `role_per` VALUES (1, 3);
INSERT INTO `role_per` VALUES (1, 4);
INSERT INTO `role_per` VALUES (1, 5);
INSERT INTO `role_per` VALUES (1, 6);
INSERT INTO `role_per` VALUES (3, 2);
INSERT INTO `role_per` VALUES (3, 3);
INSERT INTO `role_per` VALUES (3, 5);
INSERT INTO `role_per` VALUES (1, 7);
INSERT INTO `role_per` VALUES (1, 8);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `nickname`(`nickname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1014 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1005, '是老杨啊', '123123', '81dc9bdb52d04dc20036dbd8313ed055');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `userid` int(5) NOT NULL,
  `roleid` int(5) NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1005, 1);
INSERT INTO `user_role` VALUES (1007, 3);
INSERT INTO `user_role` VALUES (1008, 3);
INSERT INTO `user_role` VALUES (1013, 3);

SET FOREIGN_KEY_CHECKS = 1;

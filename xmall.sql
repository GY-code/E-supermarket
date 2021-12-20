/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : xmall

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2018-07-27 23:08:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE `tb_address` (
  `address_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `street_name` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tb_address
-- ----------------------------
INSERT INTO `tb_address` VALUES ('3', '63', 'test', '18782059038', '�Ĵ�ʡ�ɶ����������ٻ�����վ����', '1');
INSERT INTO `tb_address` VALUES ('5', '63', 'admin', '18782059038', '�Ϻ�����������·', '0');
INSERT INTO `tb_address` VALUES ('6', '62', '1', '1', '1', '0');

-- ----------------------------
-- Table structure for tb_base
-- ----------------------------
DROP TABLE IF EXISTS `tb_base`;
CREATE TABLE `tb_base` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `web_name` varchar(255) DEFAULT NULL,
  `key_word` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `source_path` varchar(255) DEFAULT NULL,
  `upload_path` varchar(255) DEFAULT NULL,
  `copyright` varchar(1000) DEFAULT NULL,
  `count_code` varchar(1000) DEFAULT NULL,
  `has_log_notice` int(11) DEFAULT NULL,
  `log_notice` varchar(1000) DEFAULT NULL,
  `has_all_notice` int(11) DEFAULT NULL,
  `all_notice` varchar(1000) DEFAULT NULL,
  `notice` varchar(8000) DEFAULT NULL,
  `update_log` varchar(8000) DEFAULT NULL,
  `front_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_base
-- ----------------------------
INSERT INTO `tb_base` VALUES ('1', 'XMall��̨����ϵͳ v1.0', 'XMall��̨����ϵͳ v1.0,XMall,XMall�����̳Ǻ�̨����ϵͳ', 'XMall��̨����ϵͳ v1.0����һ����̺�̨����ϵͳ���ʺ���С��CMS��̨ϵͳ��', '', '', '', '', '0', 'test login notice', '0', 'test all notice', '', '', 'http://blog.exrick.cn');

-- ----------------------------
-- Table structure for tb_dict
-- ----------------------------
DROP TABLE IF EXISTS `tb_dict`;
CREATE TABLE `tb_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dict` varchar(255) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '1��չ�� 0ͣ�ô�',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_dict
-- ----------------------------
INSERT INTO `tb_dict` VALUES ('1', 'Exrick', '1');
INSERT INTO `tb_dict` VALUES ('2', 'xmall', '1');
INSERT INTO `tb_dict` VALUES ('4', 'test', '0');

-- ----------------------------
-- Table structure for tb_express
-- ----------------------------
DROP TABLE IF EXISTS `tb_express`;
CREATE TABLE `tb_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '���ID',
  `express_name` varchar(255) DEFAULT NULL COMMENT '��Ʒ����',
  `sort_order` int(11) DEFAULT NULL COMMENT '����',
  `created` datetime DEFAULT NULL COMMENT '����ʱ��',
  `updated` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='��Ʒ������';

-- ----------------------------
-- Records of tb_express
-- ----------------------------
INSERT INTO `tb_express` VALUES ('1', '�������', '1', '2018-05-31 11:45:10', null);

-- ----------------------------
-- Table structure for tb_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_item`;
CREATE TABLE `tb_item` (
  `id` bigint(20) NOT NULL COMMENT '��Ʒid��ͬʱҲ����Ʒ���',
  `title` varchar(100) DEFAULT NULL COMMENT '��Ʒ����',
  `sell_point` varchar(100) DEFAULT NULL COMMENT '��Ʒ����',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '��Ʒ�۸�',
  `num` int(11) DEFAULT NULL COMMENT '�������',
  `limit_num` int(11) DEFAULT NULL COMMENT '������������',
  `image` varchar(2000) DEFAULT NULL COMMENT '��ƷͼƬ',
  `cid` bigint(11) DEFAULT NULL COMMENT '��������',
  `status` int(1) DEFAULT '1' COMMENT '��Ʒ״̬ 1���� 0�¼�',
  `created` datetime DEFAULT NULL COMMENT '����ʱ��',
  `updated` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `status` (`status`),
  KEY `updated` (`updated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ʒ��';

-- ----------------------------
-- Records of tb_item
-- ----------------------------
INSERT INTO `tb_item` VALUES ('562379', '��� Pro ��������', 'TPU �������ʡ���ĥ�����͡��;���ǿ', '49.00', '999', '100', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', '560', '1', '2017-09-05 21:27:54', '2017-09-05 21:29:54');
INSERT INTO `tb_item` VALUES ('605616', '��� Pro �ֻ���������Ĥ��ǰ���ã�', '�ߴ�?92% �ĳ�ǿ͸���ʡ��͹λ�����ָ��', '49.00', '999', '100', 'http://image.smartisanos.cn/resource/30cacf4088f7105d16452c661afd9299.jpg', '560', '1', '2017-09-05 21:27:54', '2017-09-05 21:29:54');
INSERT INTO `tb_item` VALUES ('679532', 'Smartisan ԭװ������� 18W', '18W ��ȫ��䡢֧������ QC3.0, MTK PE+2.0 ���Э��', '59.00', '999', '100', 'http://image.smartisanos.cn/resource/dc53bd870ee64d2053ecc51750ece43a.jpg', '560', '1', '2017-09-05 21:27:54', '2017-11-09 22:31:04');
INSERT INTO `tb_item` VALUES ('679533', 'Smartisan ������ĸ�', 'ͨ�� 3.5 mm �ӿڡ��������Ͻ������ˡ��������轺�ֱ�', '69.00', '999', '100', 'http://image.smartisanos.cn/resource/afe5728faa22f4b078b84d9c725c136d.jpg', '560', '1', '2017-09-05 21:27:54', '2017-09-05 21:29:54');
INSERT INTO `tb_item` VALUES ('691300', 'Smartisan ����ƶ���Դ 10000mAh', '10000mAh ˫���䡢��ӯ��Я���߱�׼��ȫ����', '199.00', '999', '100', 'http://image.smartisanos.cn/resource/0540778097a009364f2dcbb8c5286451.jpg', '560', '1', '2017-09-05 21:27:54', '2017-11-09 22:22:53');
INSERT INTO `tb_item` VALUES ('738388', 'Smartisan ԭװ Type-C ������', 'PTC ���±�����������ơ�TPE ��������', '39.00', '999', '100', 'http://image.smartisanos.cn/resource/c79a73ffc6f8e782160d978f49f543dc.jpg', '560', '1', '2017-09-05 21:27:54', '2017-10-22 22:15:02');
INSERT INTO `tb_item` VALUES ('741524', 'Smartisan S-100 �����ʽ�߿ض���', '׿Խ�� 14.2mm ������Ԫ��������ʽ�߿�', '99.00', '999', '100', 'http://image.smartisanos.cn/resource/c98abe89b5a5502ef04c30e751b2bfef.png', '560', '1', '2017-09-05 21:27:54', '2017-09-05 21:29:54');
INSERT INTO `tb_item` VALUES ('816448', '������������ CC', '720P ����ֱ��ʡ�JBL ���졢�������������', '2799.00', '999', '100', 'http://image.smartisanos.cn/resource/41cb562a47d4831e199ed7e2057f3b61.jpg', '560', '1', '2017-09-05 21:27:54', '2017-09-05 21:29:54');
INSERT INTO `tb_item` VALUES ('816753', '��������ƣ������ִ���', '����ȫʢʱ�ڹ�ҵ�����Ʒ�״μ�����鲢�����й�', '259.00', '999', '100', 'http://image.smartisanos.cn/resource/f950d9c27ef21e17374fa212b40d66a9.jpg', '76', '1', '2017-09-05 21:27:54', '2017-09-05 21:29:54');
INSERT INTO `tb_item` VALUES ('830972', '������ֱ�ˡ�', '�״������й����߽�������Ʒ', '199.00', '999', '100', 'http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', '560', '1', '2017-09-05 21:27:54', '2017-09-05 21:29:54');
INSERT INTO `tb_item` VALUES ('832739', 'FIIL CARAT �����˶�����', '���ܼƲ�����������ʽ��������ʲ��׵�', '499.00', '999', '100', 'http://image.smartisanos.cn/resource/61b4f3de01f00e57a664e648d6ea4721.jpg', '560', '1', '2017-09-05 21:27:54', '2017-09-05 21:29:54');
INSERT INTO `tb_item` VALUES ('844022', 'FIIL CARAT LITE �����˶�����', '�߿ش���IP65 ��ˮ����������ʽ', '299.00', '999', '100', 'http://image.smartisanos.cn/resource/62c1a6988de8071beef4203bedde5144.jpg', '560', '1', '2017-09-05 21:27:54', '2017-09-05 21:29:54');
INSERT INTO `tb_item` VALUES ('847276', 'FIIL Diva Pro ȫ�������߽������', '���������������������𱾵ش洢����', '1499.00', '999', '100', 'http://image.smartisanos.cn/resource/804b82e4c05516e822667a23ee311f7c.jpg', '560', '1', '2017-09-05 21:27:54', '2018-04-20 22:18:11');
INSERT INTO `tb_item` VALUES ('856645', '���� Galaxy S4 (I9500) 16G�� �ǿպ� ��ͨ3G�ֻ�', '����ؼ���Ϯ�����Ǿ����콢����', '1888.00', '999', '100', 'https://i.loli.net/2018/07/13/5b48b58b511dc.jpg', '560', '0', '2017-09-05 21:27:54', '2017-11-06 23:44:32');
INSERT INTO `tb_item` VALUES ('150635087972564', '֧��������Ʒ IPhone X ȫ���� ȫ������', '�˽�Ϊ֧��������Ʒ ���²��ᷢ��', '1.00', '999', '100', 'https://i.loli.net/2018/07/13/5b48ac7766d98.png,https://i.loli.net/2018/07/13/5b48ac9135c5f.png,https://i.loli.net/2018/07/13/5b48ac9c2be6c.png,https://i.loli.net/2018/07/13/5b48aca99c8b6.png,https://i.loli.net/2018/07/13/5b48a7f468bf2.png', '560', '1', '2017-09-05 21:27:54', '2018-07-13 21:59:05');
INSERT INTO `tb_item` VALUES ('150642571432835', '������Ʒ', '���ľ��������ڱ�վά�� �����������õ�����', '1.00', '999', '100', 'https://i.loli.net/2018/07/13/5b48a7f46be51.png,https://i.loli.net/2018/07/13/5b48a952de430.png', '560', '1', '2017-09-05 21:27:54', '2018-07-13 21:38:52');
INSERT INTO `tb_item` VALUES ('150642571432836', 'Smartisan T�� ��ϡ����׳���', 'һ��������޵�����T��', '149.00', '999', '100', 'https://resource.smartisan.com/resource/f96f0879768bc317b74e7cf9e3d96884.jpg,https://resource.smartisan.com/resource/095b46c25f9df5b13ee51f3e512d1e96.jpg,https://resource.smartisan.com/resource/0c9c397c8ac68a2ad327e1da8a5cb7d0.jpg,https://resource.smartisan.com/resource/154b35897ed3c1cb8dc1c7aae7b88f1f.jpg,https://resource.smartisan.com/resource/4a1686f2fde86e0aaac49c92395d4b32.jpg', '1184', '1', '2018-04-18 20:41:41', '2018-04-20 00:21:01');
INSERT INTO `tb_item` VALUES ('150642571432837', '��� 3 ǰ���ֻ���������Ĥ', '��ǿ͸���ʡ��͹λ�����ָ��', '49.00', '999', '100', 'https://resource.smartisan.com/resource/3a7522290397a9444d7355298248f197.jpg', '560', '1', '2018-04-19 00:34:06', '2018-04-19 23:49:38');
INSERT INTO `tb_item` VALUES ('150642571432838', '��� 3 �޲����챣����', '�ʸо������������ϡ��ܵ�����', '79.00', '999', '100', 'https://resource.smartisan.com/resource/63ea40e5c64db1c6b1d480c48fe01272.jpg,https://resource.smartisan.com/resource/4b8d00ab6ba508a977a475988e0fdb53.jpg,https://resource.smartisan.com/resource/87ea3888491d172b7d7a0e78e4294b4b.jpg,https://resource.smartisan.com/resource/8d30265188ddd1ba05e34f669c5dcf1c.jpg', '560', '1', '2018-04-19 00:35:50', '2018-04-20 00:01:08');
INSERT INTO `tb_item` VALUES ('150642571432839', '��� 3 TPU ��͸��������', '�ᱡ͸�����������ϡ�TPU ��������', '29.00', '999', '100', 'https://resource.smartisan.com/resource/5e4b1feddb13639550849f12f6b2e202.jpg,https://resource.smartisan.com/resource/0477d8b177db197a0b09a18e116b2bca.jpg,https://resource.smartisan.com/resource/b66d7e832339cf240b13a9a91107abdc.jpg,https://resource.smartisan.com/resource/56db3c83cca697572fa8a1df2e3172d7.jpg', '560', '1', '2018-04-19 00:38:07', '2018-04-20 00:02:54');
INSERT INTO `tb_item` VALUES ('150642571432840', 'Smartisan �����ʽ����', '������ɫ��רҵ��������Ʒ����˷�', '89.00', '999', '100', 'https://resource.smartisan.com/resource/9c1d958f10a811df841298d50e1ca7c0.jpg,https://resource.smartisan.com/resource/afa4ecdb54d7f50d0b6265bbcf31d6c8.jpg,https://resource.smartisan.com/resource/eb1bf1dee365c7855e6b047d8b9c5b1e.jpg,https://resource.smartisan.com/resource/dfcc9fa16ab354a41683959398bff128.jpg', '560', '1', '2018-04-19 00:40:40', '2018-04-20 00:04:41');
INSERT INTO `tb_item` VALUES ('150642571432841', '��� 3 TPU ��������', 'TPU �������ʡ��������ϡ��ܵ�����', '49.00', '999', '100', 'https://resource.smartisan.com/resource/b899d9b82c4bc2710492a26af021d484.jpg,https://resource.smartisan.com/resource/bb8859032d6060ccb4e733a2c8e2f51d.jpg,https://resource.smartisan.com/resource/df5b3d3539481eb1c00333a5bc5b60b6.jpg', '560', '1', '2018-04-19 00:43:48', '2018-04-20 00:06:58');
INSERT INTO `tb_item` VALUES ('150642571432842', '��� 3 \"�㼣\"���� �ָߴ�ʼ�˳���', '1891 �� 4 �� 7 ��', '79.00', '999', '100', 'https://resource.smartisan.com/resource/abb6986430536cd9365352b434f3c568.jpg', '560', '1', '2018-04-19 00:45:14', '2018-04-20 00:08:21');
INSERT INTO `tb_item` VALUES ('150642571432843', '��� 3', 'Ư���ò���ʵ����', '1999.00', '999', '100', 'https://resource.smartisan.com/resource/718bcecced0df1cd23bbdb9cc1f70b7d.png', '560', '1', '2018-04-19 22:13:31', '2018-07-13 22:03:52');
INSERT INTO `tb_item` VALUES ('150642571432844', '���������ܿ�����������������ȩ��', '���¿վ� ����ֵ 699 Ԫ����̿��о', '2999.00', '999', '100', 'https://resource.smartisan.com/resource/71432ad30288fb860a4389881069b874.png', '560', '1', '2018-04-19 22:16:05', '2018-07-13 22:06:58');
INSERT INTO `tb_item` VALUES ('150642571432845', 'Smartisan ����Ь', 'һ˫̤ʵ�����ʵķ���Ь', '199.00', '999', '100', 'https://resource.smartisan.com/resource/2f9a0f5f3dedf0ed813622003f1b287b.jpg,https://resource.smartisan.com/resource/0cd8f107c70d002caf902745355e269a.jpg,https://resource.smartisan.com/resource/fa42dcd439e9fb990831f1d21c3f19b8.jpg', '1184', '1', '2018-04-19 22:22:02', '2018-04-20 00:19:39');
INSERT INTO `tb_item` VALUES ('150642571432846', 'Smartisan T�� �����÷��ۡ���׻���', '100% ���� SUPIMA �ޡ����������ʵ�', '149.00', '999', '100', 'https://resource.smartisan.com/resource/804edf579887b3e1fae4e20a379be5b5.png,https://resource.smartisan.com/resource/6a92fe5ab90b379d5315c0ee2610f467.png,https://resource.smartisan.com/resource/76c811504b910e04c448dda8d47a09c3.png', '1184', '1', '2018-04-19 22:23:39', '2018-04-20 00:23:09');
INSERT INTO `tb_item` VALUES ('150642571432847', 'Smartisan Polo�� �����', 'һ��������һ������ POLO ��', '249.00', '999', '100', 'https://resource.smartisan.com/resource/daa975651d6d700c0f886718c520ee19.jpg,https://resource.smartisan.com/resource/8b4884f04835f8de3c33817732fdcb46.jpg,https://resource.smartisan.com/resource/057f6010d6cb7afc964f812093742283.jpg,https://resource.smartisan.com/resource/3cc4b5a1e0a6136eb9725a88d6c1d3be.jpg,https://resource.smartisan.com/resource/f35c053b87dd0e1255be2a8bfa773232.jpg', '1184', '1', '2018-04-19 22:25:41', '2018-04-20 10:51:53');
INSERT INTO `tb_item` VALUES ('150642571432848', 'Smartisan ţ��ĳ���', 'һ���޾����������ʳ���', '199.00', '999', '100', 'https://resource.smartisan.com/resource/a1c53b5f12dd7ef790cadec0eaeaf466.jpg,https://resource.smartisan.com/resource/dccec50aa1480c23a6d62648d2271c0a.jpg,https://resource.smartisan.com/resource/28c798c14b3cc9cfe7100567df6e5999.jpg,https://resource.smartisan.com/resource/da87105789046c13412f6f6a32032df7.jpg,https://resource.smartisan.com/resource/cf9704df83dc6d6ff5404da154388a58.jpg', '1184', '1', '2018-04-19 22:28:11', '2018-04-20 10:53:15');
INSERT INTO `tb_item` VALUES ('150642571432849', 'Smartisan ����Ƭ', '���ʿ�ֽ����װ���¡�ɫ�ʱ���', '9.90', '999', '100', 'https://resource.smartisan.com/resource/3973d009d182d8023bea6250b9a3959e.jpg,https://resource.smartisan.com/resource/1901bf9f58d83978353cf1ec58442cc6.jpg,https://resource.smartisan.com/resource/4e0b690102858fc3013ea650fb1e1a8e.jpg,https://resource.smartisan.com/resource/51765f60367d6e40e4ae6f2b9ce46a91.jpg,https://resource.smartisan.com/resource/5108b5e7448c14e5241b60ba41fafc8e.jpg', '1184', '1', '2018-04-19 22:31:09', '2018-04-21 11:26:31');
INSERT INTO `tb_item` VALUES ('150642571432850', 'ACIL E1 ����ʽ��������', '�޸������һ�б�ü�', '199.00', '999', '100', 'https://resource.smartisan.com/resource/406eddef8808fa5a9be9594d07ef8643.jpg,https://resource.smartisan.com/resource/548de41c48d47232b4ed541c1df57c2f.jpg,https://resource.smartisan.com/resource/aee0949bc33654bc18cedb8cd7dfbcff.jpg', '560', '1', '2018-04-19 22:32:38', '2018-04-20 11:17:31');
INSERT INTO `tb_item` VALUES ('150642571432851', '�ŵ����� E1 ����ʽ����ָ��������', '����һ�£����ɿ���', '2699.00', '999', '100', 'https://resource.smartisan.com/resource/7ac3af5a92ad791c2b38bfe1e38ee334.jpg,https://resource.smartisan.com/resource/e37029b8cd3194ad9581de0ee6512acb.jpg,https://resource.smartisan.com/resource/1501eaf68c9771e5599eec45a5f6320a.jpg,https://resource.smartisan.com/resource/a8c6a41637041c576aaa2a5162d2ab56.jpg,https://resource.smartisan.com/resource/3934e0c458922c0049d311b84ddb73e0.jpg', '560', '1', '2018-04-19 22:36:50', '2018-04-20 00:13:44');
INSERT INTO `tb_item` VALUES ('150642571432852', 'FIIL Driifter ������������', 'ȫ����� ̧�־��� HEAC��������', '499.00', '999', '100', 'https://resource.smartisan.com/resource/367d93db1d58f9f3505bc0ec18efaa44.jpg,https://resource.smartisan.com/resource/8ecc94c0f0c4ebc861f06c86789a66e6.jpg,https://resource.smartisan.com/resource/58a2cdb44f722202b05dd09d6fd959de.jpg,https://resource.smartisan.com/resource/2b811a93a2915310f72291e46bd944ad.jpg,https://resource.smartisan.com/resource/8cd011adef99f9734ed974ea9732e6e7.jpg', '560', '1', '2018-06-02 19:43:12', '2018-06-02 19:43:14');

-- ----------------------------
-- Table structure for tb_item_cat
-- ----------------------------
DROP TABLE IF EXISTS `tb_item_cat`;
CREATE TABLE `tb_item_cat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '��ĿID',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '������ID=0ʱ����һ��������',
  `name` varchar(50) DEFAULT NULL COMMENT '��������',
  `status` int(1) DEFAULT '1' COMMENT '״̬ 1���� 0����',
  `sort_order` int(4) DEFAULT NULL COMMENT '�������',
  `is_parent` tinyint(1) DEFAULT '1' COMMENT '�Ƿ�Ϊ������ 1Ϊtrue 0Ϊfalse',
  `icon` varchar(255) DEFAULT NULL COMMENT 'ͼ��',
  `remark` varchar(255) DEFAULT NULL COMMENT '��ע',
  `created` datetime DEFAULT NULL COMMENT '����ʱ��',
  `updated` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`,`status`) USING BTREE,
  KEY `sort_order` (`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=1185 DEFAULT CHARSET=utf8 COMMENT='��Ʒ��Ŀ';

-- ----------------------------
-- Records of tb_item_cat
-- ----------------------------
INSERT INTO `tb_item_cat` VALUES ('-1', '0', '������Ʒ', '1', '0', '0', null, '�������޸�', '2017-09-24 11:10:45', '2017-11-06 23:24:33');
INSERT INTO `tb_item_cat` VALUES ('1', '0', 'ͼ�顢���񡢵����鿯', '1', '19', '1', null, '', '2014-10-15 18:31:55', '2017-09-24 15:50:47');
INSERT INTO `tb_item_cat` VALUES ('2', '1', '�����鿯', '1', '1', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('3', '2', '������', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('4', '2', '����ԭ��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('5', '2', '������־', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('6', '2', '��ý��ͼ��', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('7', '1', '����', '1', '2', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('8', '7', '����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('9', '7', 'Ӱ��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('10', '7', '��������', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('11', '1', 'Ӣ��ԭ��', '1', '3', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('12', '11', '�ٶ�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('13', '11', '����Ͷ��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('14', '11', 'Ӣ��ѧϰ�뿼��', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('15', '11', 'С˵', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('16', '11', '����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('17', '11', '��־', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('18', '1', '����', '1', '4', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('19', '18', 'С˵', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('20', '18', '��ѧ', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('21', '18', '�ഺ��ѧ', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('22', '18', '����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('23', '18', '����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('24', '1', '�ٶ�', '1', '5', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('25', '24', '�ٶ�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('26', '24', '0-2��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('27', '24', '3-6��', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('28', '24', '7-10��', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('29', '24', '11-14��', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('30', '1', '�������', '1', '6', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('31', '30', '��ʷ', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('32', '30', '��ѧ', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('33', '30', '��ѧ', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('34', '30', '����/����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('35', '30', '����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('36', '30', '�ڽ�', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('37', '30', '����ѧ', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('38', '30', '�Ļ�', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('39', '30', '����ѧ', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('40', '1', '������־', '1', '7', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('41', '40', '����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('42', '40', '������Ͷ��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('43', '40', '����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('44', '40', '��־��ɹ�', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('45', '1', '����', '1', '8', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('46', '45', '����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('47', '45', '�����뱣��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('48', '45', '��ͥ������', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('49', '45', '����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('50', '45', '����/��Ĭ', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('51', '1', '�Ƽ�', '1', '9', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('52', '51', '�Ƽ�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('53', '51', '����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('54', '51', '����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('55', '51', 'ҽѧ', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('56', '51', '��ѧ����Ȼ', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('57', '51', '������뻥����', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('58', '51', '����/�˶�', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('59', '1', '����', '1', '10', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('60', '59', '�̲Ľ̸�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('61', '59', '�����뿼��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('62', '59', '����ѧϰ', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('63', '59', '���ų���', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('64', '59', '��������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('65', '1', '��̨ͼ��', '1', '11', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('66', '65', '����/���/�ղ�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('67', '65', '���ù���', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('68', '65', '�Ļ�/ѧ��', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('69', '65', '�ٶ���ѧ/��ѧ', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('70', '1', '����', '1', '12', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('71', '70', '������', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('72', '70', 'Ӱӡ��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('73', '70', '��װ��', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('74', '0', '���õ���', '1', '2', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('75', '74', '�� �� ��', '1', '1', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('76', '75', 'ƽ�����', '1', '1', '0', null, '', '2014-10-15 18:31:55', '2017-11-06 23:44:12');
INSERT INTO `tb_item_cat` VALUES ('77', '75', '�յ�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('78', '75', '����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('79', '75', 'ϴ�»�', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('80', '75', '��ͥӰԺ', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('81', '75', 'DVD���Ż�', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('82', '75', '��������', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('83', '75', '�̻�/���', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('84', '75', '��ˮ��', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('85', '75', '������/ϴ���', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('86', '75', '�ƹ�/����/���', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('87', '75', '�ҵ����', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('88', '75', '�ҵ�����', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('89', '74', '�������', '1', '2', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('90', '89', '�����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('91', '89', '�����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('92', '89', '������', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('93', '89', '��ˮ��', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('94', '89', '��ˮ�豸', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('95', '89', '���̻�/�ٶ�', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('96', '89', '������', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('97', '89', '�绰��', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('98', '89', '����', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('99', '89', '��¼/����', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('100', '89', '����', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('101', '89', '��ʪ��', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('102', '89', '��ʪ��', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('103', '89', 'ȡů����', '1', '14', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('104', '89', '�����������', '1', '15', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('105', '89', 'ɨ�ػ�����', '1', '16', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('106', '89', '���»�', '1', '17', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('107', '89', '����������', '1', '18', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('108', '74', '��������', '1', '3', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('109', '108', '����/ե֭��', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('110', '108', '������', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('111', '108', '�緹��', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('112', '108', '��ѹ����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('113', '108', '�����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('114', '108', '���Ȼ�', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('115', '108', '΢��¯', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('116', '108', '�翾��', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('117', '108', '���¯', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('118', '108', '�����/�տ���', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('119', '108', '����', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('120', '108', '���̻�', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('121', '108', '������', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('122', '108', '��ˮ��/��ˮƿ', '1', '14', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('123', '108', '����;��', '1', '15', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('124', '108', '���߽ⶾ��', '1', '16', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('125', '108', '������������', '1', '17', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('126', '74', '��������', '1', '4', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('127', '126', '���뵶', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('128', '126', '��/��ë��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('129', '126', '��ǻ����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('130', '126', '�紵��', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('131', '126', '������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('132', '126', '������', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('133', '126', '��Ħ��', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('134', '126', '��Ħ��', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('135', '126', '��ԡ��', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('136', '126', 'Ѫѹ��', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('137', '126', '������/������', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('138', '126', 'Ѫ����', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('139', '126', '���¼�', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('140', '126', '�Ʋ���/֬�������', '1', '14', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('141', '126', '������������', '1', '15', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('142', '74', '����װ', '1', '5', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('143', '142', '�綯����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('144', '142', '�ֶ�����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('145', '142', '�����Ǳ�', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('146', '142', 'ԡ��/������', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('147', '142', '�ƾ�', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('148', '142', 'LED��', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('149', '142', '������', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('150', '142', 'ˮ��', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('151', '142', '��ͷ', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('152', '142', '��ԡ����', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('153', '142', '�������', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('154', '142', '�Ҿ����', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('155', '142', '����', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('156', '142', '��������', '1', '14', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('157', '142', '����', '1', '15', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('158', '142', '�繤����', '1', '16', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('159', '142', '��ذ���', '1', '17', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('160', '142', '����/����', '1', '18', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('161', '0', '���ԡ��칫', '1', '3', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('162', '161', '��������', '1', '1', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('163', '162', '�ʼǱ�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('164', '162', '������', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('165', '162', '��Ϸ��', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('166', '162', 'ƽ�����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('167', '162', 'ƽ��������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('168', '162', '̨ʽ��', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('169', '162', '������/����վ', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('170', '162', '�ʼǱ����', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('171', '161', '�������', '1', '2', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('172', '171', 'CPU', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('173', '171', '����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('174', '171', '�Կ�', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('175', '171', 'Ӳ��', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('176', '171', 'SSD��̬Ӳ��', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('177', '171', '�ڴ�', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('178', '171', '����', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('179', '171', '��Դ', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('180', '171', '��ʾ��', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('181', '171', '��¼��/����', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('182', '171', 'ɢ����', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('183', '171', '����/��չ��', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('184', '171', 'װ�����', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('185', '171', '��װ����', '1', '14', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('186', '161', '�����Ʒ', '1', '3', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('187', '186', '�ƶ�Ӳ��', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('188', '186', 'U��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('189', '186', '���', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('190', '186', '����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('191', '186', '����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('192', '186', '����ͷ', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('193', '186', '��д��', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('194', '186', '���ú�', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('195', '186', '����', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('196', '186', '����', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('197', '186', 'UPS��Դ', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('198', '186', '���Թ���', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('199', '186', '��Ϸ�豸', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('200', '186', '����', '1', '14', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('201', '186', '�������', '1', '15', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('202', '161', '�����Ʒ', '1', '4', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('203', '202', '·����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('204', '202', '����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('205', '202', '������', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('206', '202', '����洢', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('207', '202', '4G/3G����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('208', '202', '�������', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('209', '202', '�������', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('210', '161', '�칫�豸', '1', '5', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('211', '210', 'ͶӰ��', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('212', '210', 'ͶӰ���', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('213', '210', '�๦��һ���', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('214', '210', '��ӡ��', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('215', '210', '�����豸', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('216', '210', '�鳮/�㳮��', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('217', '210', 'ɨ���豸', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('218', '210', '���ϻ�', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('219', '210', '��ֽ��', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('220', '210', '���ڻ�', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('221', '210', 'ī��', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('222', '210', '�տ�/POS��', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('223', '210', '������Ƶ��Ƶ', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('224', '210', '���չ�', '1', '14', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('225', '210', 'װ��/��װ��', '1', '15', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('226', '210', '�������', '1', '16', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('227', '210', '�칫�Ҿ�', '1', '17', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('228', '210', '�װ�', '1', '18', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('229', '161', '�ľ�/�Ĳ�', '1', '6', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('230', '229', '����/ī��', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('231', '229', 'ī��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('232', '229', 'ɫ��', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('233', '229', 'ֽ��', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('234', '229', '�칫�ľ�', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('235', '229', 'ѧ���ľ�', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('236', '229', '�ļ�����', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('237', '229', '�ƻ���Ʒ', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('238', '229', '����/��ǩ', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('239', '229', '������', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('240', '229', '�����', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('241', '229', '����', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('242', '229', '���߻���', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('243', '229', '��¼��Ƭ/����', '1', '14', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('244', '161', '�����Ʒ', '1', '7', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('245', '244', '���ŷ���', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('246', '244', 'Զ�̷���', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('247', '244', '�������', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('248', '244', '��������', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('249', '0', '������ױ', '1', '4', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('250', '249', '�沿����', '1', '1', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('251', '250', '���', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('252', '250', '����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('253', '250', '��Ĥ', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('254', '250', '����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('255', '250', '��װ', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('256', '249', '���廤��', '1', '2', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('257', '256', '��ԡ', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('258', '256', '���', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('259', '256', '����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('260', '256', '����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('261', '256', '��������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('262', '256', '����', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('263', '256', '��װ', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('264', '249', '��ǻ����', '1', '3', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('265', '264', '����/����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('266', '264', '��ˢ/����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('267', '264', '����ˮ', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('268', '264', '��װ', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('269', '249', 'Ů�Ի���', '1', '4', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('270', '269', '������', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('271', '269', '��������', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('272', '269', '˽�ܻ���', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('273', '269', '��ë��', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('274', '249', 'ϴ������', '1', '5', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('275', '274', 'ϴ��', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('276', '274', '����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('277', '274', 'Ⱦ��', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('278', '274', '����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('279', '274', '�ٷ�', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('280', '274', '��װ', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('281', '249', '��ˮ��ױ', '1', '6', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('282', '281', '��ˮ', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('283', '281', '��ױ', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('284', '281', '����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('285', '281', '�۲�', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('286', '281', '����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('287', '281', '����', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('288', '281', '���ݹ���', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('289', '281', '��װ', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('290', '0', '�ӱ�', '1', '5', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('291', '290', '�ӱ�', '1', '1', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('292', '291', '�б�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('293', '291', 'Ů��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('294', '291', '��ͯ�ֱ�', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('295', '291', '���ӹ���', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('296', '0', 'ĸӤ', '1', '6', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('297', '296', '�̷�', '1', '1', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('298', '297', 'Ӥ���̷�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('299', '297', '�����̷�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('300', '296', 'Ӫ����ʳ', '1', '2', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('301', '300', '������/����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('302', '300', '�׷�/�˷�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('303', '300', '����/��֭', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('304', '300', 'DHA', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('305', '300', '������ʳ', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('306', '300', '����п/ά����', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('307', '300', '���/��θ', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('308', '300', '����/��', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('309', '296', '���ʪ��', '1', '3', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('310', '309', 'Ӥ�����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('311', '309', '������', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('312', '309', 'ʪ��', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('313', '309', '�������', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('314', '296', 'ι����Ʒ', '1', '4', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('315', '314', '��ƿ����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('316', '314', '������', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('317', '314', 'ů������', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('318', '314', '���̲���', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('319', '314', 'ˮ��/ˮ��', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('320', '314', '��������', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('321', '314', '��ʳ�����', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('322', '296', 'ϴ����Ʒ', '1', '5', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('323', '322', '��������', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('324', '322', '����ϴԡ', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('325', '322', '��ƿ��ϴ', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('326', '322', '���÷���', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('327', '322', '����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('328', '322', 'ϴ��Һ/��', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('329', '322', '�ճ�����', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('330', '322', '������', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('331', '296', 'ͯ��ͯ��', '1', '6', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('332', '331', 'Ӥ���Ƴ�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('333', '331', '����ҡ��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('334', '331', 'Ӥ����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('335', '331', 'ѧ����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('336', '331', '���ֳ�', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('337', '331', '���г�', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('338', '331', '�綯��', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('339', '331', 'ŤŤ��', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('340', '331', '���峵', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('341', '296', '�޾ӷ���', '1', '7', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('342', '341', 'Ӥ�������', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('343', '341', 'Ӥ������', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('344', '341', 'Ӥ�����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('345', '341', 'Ӥ��Ьñ��', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('346', '341', '��ȫ����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('347', '341', '�ҾӴ�Ʒ', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('348', '296', '����ר��', '1', '8', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('349', '348', '�����/��Ӥ��', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('350', '348', '��������', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('351', '348', '����/�ڿ�', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('352', '348', '�������', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('353', '348', '�и�װ', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('354', '348', '����Ӫ��', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('355', '348', '��������', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('356', '348', '����/����', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('357', '348', '����װ', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('358', '296', 'ͯװͯЬ', '1', '9', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('359', '358', '��װ', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('360', '358', '����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('361', '358', '����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('362', '358', 'ȹ��', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('363', '358', '����/�Ҿӷ�', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('364', '358', '���޷�/�޷�', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('365', '358', '����װ', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('366', '358', '��ͯ����', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('367', '358', '���/�ݳ���', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('368', '358', '�˶�Ь', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('369', '358', 'ƤЬ/����Ь', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('370', '358', 'ѥ��', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('371', '358', '��Ь', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('372', '358', '����Ь', '1', '14', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('373', '358', '����/�˶���', '1', '15', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('374', '296', '��ȫ����', '1', '10', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('375', '374', '����ʽ', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('376', '374', '��ȫ����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('377', '374', '���ߵ�', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('378', '0', 'ʳƷ���ϡ�����ʳƷ', '1', '7', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('379', '378', '����ʳƷ', '1', '1', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('380', '379', '���ɵ���', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('381', '379', '�ǹ�/�ɿ���', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('382', '379', '������ʳ', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('383', '379', '�����Ʒ', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('384', '379', '���͵�ζ', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('385', '379', 'ţ��', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('386', '378', '�ط��ز�', '1', '2', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('387', '386', '�����ز�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('388', '386', '�½�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('389', '386', '����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('390', '386', 'ɽ��', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('391', '386', '���ɹ�', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('392', '386', '����', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('393', '386', '����', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('394', '386', '�Ĵ�', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('395', '386', '����', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('396', '386', '����', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('397', '378', '����ʳƷ', '1', '3', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('398', '397', '������ʳ', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('399', '397', '�������', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('400', '397', '����⸬', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('401', '397', '�۽�����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('402', '397', '�ǹ�/�ɿ���', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('403', '397', '���ɵ���', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('404', '397', '����ʳƷ', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('405', '378', '���͵�ζ', '1', '4', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('406', '405', '��������', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('407', '405', 'ʳ����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('408', '405', '��ζƷ', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('409', '405', '�ϱ��ɻ�', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('410', '405', '����ʳƷ', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('411', '405', '�л�ʳƷ', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('412', '378', '���ϳ��', '1', '5', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('413', '412', '����ˮ', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('414', '412', '����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('415', '412', 'ţ����Ʒ', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('416', '412', '����/�̲�', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('417', '412', '��������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('418', '412', '����/���Ӳ�', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('419', '412', '�����̷�', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('420', '378', 'ʳƷ��ȯ', '1', '6', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('421', '420', '�±�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('422', '420', '��բз', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('423', '420', '����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('424', '420', '��ȯ', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('425', '378', '����', '1', '7', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('426', '425', '������', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('427', '425', '�ն�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('428', '425', '����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('429', '425', '�̲�', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('430', '425', '���', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('431', '425', '������', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('432', '425', '���ݲ�', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('433', '425', '������', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('434', '425', '������', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('435', '425', '�ڲ�', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('436', '425', '�ײ�', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('437', '425', '������', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('438', '0', '������Ʒ', '1', '8', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('439', '438', 'ά�ޱ���', '1', '1', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('440', '439', '����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('441', '439', '��Ӽ�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('442', '439', '����Һ', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('443', '439', '������', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('444', '439', '����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('445', '439', '��ˢ', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('446', '439', '����', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('447', '439', '���Ӿ�', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('448', '439', '��̥', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('449', '439', '���', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('450', '439', 'ɲ��Ƭ/��', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('451', '439', '����/Ƥ��', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('452', '439', '����', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('453', '439', '����װ��/����', '1', '14', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('454', '439', '��Ĥ', '1', '15', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('455', '439', '���޹���', '1', '16', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('456', '438', '���ص���', '1', '2', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('457', '456', '������', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('458', '456', '��ȫԤ����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('459', '456', '�г���¼��', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('460', '456', '�����״�', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('461', '456', '�����豸', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('462', '456', 'ʱ��Ӱ��', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('463', '456', '������', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('464', '456', '��Դ', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('465', '456', '����', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('466', '456', '������', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('467', '438', '������ϴ', '1', '3', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('468', '467', '����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('469', '467', '�����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('470', '467', '����ˮ', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('471', '467', '����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('472', '467', 'ϴ������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('473', '467', 'ϴ�����', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('474', '438', '����װ��', '1', '4', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('475', '474', '�ŵ�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('476', '474', '����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('477', '474', '����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('478', '474', '�����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('479', '474', 'ͷ������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('480', '474', '��ˮ', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('481', '474', '��������', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('482', '474', '������Ʒ', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('483', '474', '����С��', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('484', '474', '����װ�μ�', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('485', '474', '����', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('486', '438', '��ȫ�Լ�', '1', '5', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('487', '486', '��ȫ����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('488', '486', '̥ѹ����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('489', '486', '�����豸', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('490', '486', 'Ӧ����Ԯ', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('491', '486', '������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('492', '486', '������', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('493', '486', '�Լ�ҰӪ', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('494', '486', 'Ħ�г�װ��', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('495', '0', '�������', '1', '9', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('496', '495', '��������', '1', '1', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('497', '496', '0-6����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('498', '496', '6-12����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('499', '496', '1-3��', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('500', '496', '3-6��', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('501', '496', '6-14��', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('502', '496', '14������', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('503', '495', 'ң��/�綯', '1', '2', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('504', '503', 'ң�س�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('505', '503', 'ң�طɻ�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('506', '503', 'ң�ش�', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('507', '503', '������/�綯', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('508', '503', '���/����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('509', '495', 'ë�޲���', '1', '3', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('510', '509', 'ë��/����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('511', '509', '����/����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('512', '495', '�������', '1', '4', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('513', '512', '�ű�����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('514', '512', '��ͨ����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('515', '512', '��������', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('516', '495', 'ģ�����', '1', '5', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('517', '516', '����ģ��', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('518', '516', 'ƴ��ģ��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('519', '516', '�ղذ���', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('520', '495', '�������', '1', '6', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('521', '520', '����̺', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('522', '520', '���е�/̺', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('523', '520', '�������', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('524', '520', 'Ϸˮ���', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('525', '495', '�������', '1', '7', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('526', '525', '��Ӱ�ܱ�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('527', '525', '��ͨ�ܱ�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('528', '525', '�����ܱ�', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('529', '495', '�������', '1', '8', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('530', '529', 'ҡ��/����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('531', '529', '�����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('532', '529', '�������', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('533', '529', '�������', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('534', '495', '��ľƴ��', '1', '9', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('535', '534', '��ľ', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('536', '534', 'ƴͼ', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('537', '534', '������', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('538', '534', '����ƴ��', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('539', '495', 'DIY���', '1', '10', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('540', '539', '�ֹ�����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('541', '539', '�滭����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('542', '539', '�龰���', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('543', '495', '�����ѹ', '1', '11', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('544', '543', '��ѹ���', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('545', '543', '�������', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('546', '495', '�������', '1', '12', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('547', '546', '����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('548', '546', '������', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('549', '546', '�ַ���', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('550', '546', '����/��˹', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('551', '546', '�����������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('552', '546', '���������', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('553', '546', '����/�ڷ���/����', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('554', '546', '����������', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('555', '546', '��ʽ�������', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('556', '546', '��������', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('557', '546', '������Ʒ����', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('558', '0', '�ֻ�', '1', '10', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('559', '558', '�ֻ�ͨѶ', '1', '1', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('560', '559', '�ֻ�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('561', '559', '�Խ���', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('562', '558', '��Ӫ��', '1', '2', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('563', '562', '�����ͷ�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('564', '562', '��0��Ԫ����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('565', '562', 'ѡ������', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('566', '562', 'ѡ������', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('567', '558', '�ֻ����', '1', '3', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('568', '567', '�ֻ����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('569', '567', '��������', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('570', '567', '�����/������', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('571', '567', '�ֻ�����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('572', '567', '�ֻ���Ĥ', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('573', '567', '�ֻ��洢��', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('574', '567', '�ֻ�������', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('575', '567', '�������', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('576', '567', 'iPhone ���', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('577', '567', '�������', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('578', '567', '��Я/��������', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('579', '567', '�ֻ���Ʒ', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('580', '0', '����', '1', '11', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('581', '580', '��Ӱ����', '1', '1', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('582', '581', '�������', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('583', '581', '����/΢�����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('584', '581', '�������', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('585', '581', '�����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('586', '581', '������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('587', '581', '�˶����', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('588', '581', '��ͷ', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('589', '581', '��������', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('590', '581', 'Ӱ������', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('591', '580', '�������', '1', '2', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('592', '591', '�洢��', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('593', '591', '������', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('594', '591', '�˾�', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('595', '591', '�����/�ֱ�', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('596', '591', '�����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('597', '591', '���ż�/��̨', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('598', '591', '������', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('599', '591', '�����Ĥ', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('600', '591', '������', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('601', '591', '��ͷ����', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('602', '591', '���/�����', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('603', '591', '�ƶ���Դ', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('604', '580', '�����豸', '1', '3', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('605', '604', '�����ֻ�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('606', '604', '�����ֱ�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('607', '604', '�����۾�', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('608', '604', '�˶�������', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('609', '604', '�������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('610', '604', '��������', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('611', '604', '���ܼҾ�', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('612', '604', '��г�', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('613', '604', '�������', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('614', '580', 'ʱ��Ӱ��', '1', '4', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('615', '614', 'MP3/MP4', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('616', '614', '�����豸', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('617', '614', '����/����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('618', '614', '����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('619', '614', '���岥����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('620', '614', 'MP3/MP4���', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('621', '614', '��˷�', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('622', '614', 'רҵ��Ƶ', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('623', '614', '�������', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('624', '614', 'ƻ�����', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('625', '580', '���ӽ���', '1', '5', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('626', '625', '���Ӵʵ�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('627', '625', '��ֽ��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('628', '625', '¼����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('629', '625', '������', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('630', '625', '�����/��', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('631', '625', 'ѧ��ƽ��', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('632', '625', '��̻�', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('633', '0', '�ҾӼ�װ', '1', '12', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('634', '633', '�ҷ�', '1', '1', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('635', '634', '��Ʒ�׼�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('636', '634', '����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('637', '634', '��о', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('638', '634', '��������', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('639', '634', '̺��', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('640', '634', '����/����', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('641', '634', '����', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('642', '634', '������', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('643', '634', 'ë��ԡ��', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('644', '634', '����̺', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('645', '634', '����/��ɴ', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('646', '634', '��������', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('647', '634', '��ϯ', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('648', '633', '�ƾ�', '1', '2', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('649', '648', '̨��', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('650', '648', '���ܵ�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('651', '648', 'װ�ε�', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('652', '648', '��ص�', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('653', '648', 'Ӧ����/�ֵ�', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('654', '648', 'LED��', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('655', '648', '������', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('656', '648', '������', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('657', '648', 'Ͳ�����', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('658', '648', '����', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('659', '648', '��Χ����', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('660', '633', '��������', '1', '3', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('661', '660', '������Ʒ', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('662', '660', '��ɡ���', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('663', '660', 'ԡ����Ʒ', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('664', '660', '����/��֯��Ʒ', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('665', '660', 'ϴɹ/����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('666', '660', '������ζ', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('667', '633', '��װ����', '1', '4', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('668', '667', '����/�ּ�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('669', '667', '��̺�ص�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('670', '667', 'ɳ������/�ε�', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('671', '667', '���/��Ƭǽ', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('672', '667', 'װ���ֻ�', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('673', '667', '������Ʒ', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('674', '667', '�ֹ�/ʮ����', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('675', '667', 'װ�ΰڼ�', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('676', '667', '��ů����', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('677', '667', '���ո���', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('678', '667', 'ǽ��/װ����', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('679', '667', '����', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('680', '667', '��ƿ����', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('681', '667', '��޹����', '1', '14', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('682', '667', '����Ҿ�', '1', '15', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('683', '633', '�����Ʒ', '1', '5', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('684', '683', 'ֽƷʪ��', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('685', '683', '�������', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('686', '683', '��๤��', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('687', '683', '������Ʒ', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('688', '683', '��ͥ���', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('689', '683', 'Ƥ�߻���', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('690', '683', 'һ������Ʒ', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('691', '633', '��������', '1', '6', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('692', '691', '��������', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('693', '691', '������ʳ', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('694', '691', 'ҽ�Ʊ���', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('695', '691', '�Ҿ�����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('696', '691', '�������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('697', '691', '����װ��', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('698', '691', 'ϴ������', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('699', '0', '����', '1', '13', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('700', '699', '��⿹���', '1', '1', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('701', '700', '����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('702', '700', '���', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('703', '700', 'ѹ����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('704', '700', '����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('705', '700', '����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('706', '700', '�̹�', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('707', '700', '������װ', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('708', '700', '����', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('709', '700', 'ˮ��', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('710', '700', '���', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('711', '699', '�����˰�', '1', '2', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('712', '711', '�˵�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('713', '711', '����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('714', '711', '������װ', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('715', '711', '���', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('716', '711', '�Ϲ���/��', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('717', '711', '�๦�ܵ�', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('718', '699', '�������', '1', '3', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('719', '718', '���ʺ�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('720', '718', '�決/�տ�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('721', '718', '����/���', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('722', '718', '����/�����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('723', '718', '����DIY/С����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('724', '699', 'ˮ�߾ƾ�', '1', '4', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('725', '724', '���ϱ�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('726', '724', '�˶�ˮ��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('727', '724', '������', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('728', '724', '�մ�/��˱�', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('729', '724', '���±�', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('730', '724', '���º�', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('731', '724', '�Ʊ�/�ƾ�', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('732', '724', '������װ', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('733', '699', '�;�', '1', '5', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('734', '733', '�;���װ', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('735', '733', '��/��/��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('736', '733', '����/����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('737', '733', 'һ������Ʒ', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('738', '733', '����/����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('739', '699', '���/���Ⱦ�', '1', '6', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('740', '739', '���ײ��', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('741', '739', '�豭', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('742', '739', '���', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('743', '739', '���̲���', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('744', '739', '��Ҷ��', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('745', '739', '������', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('746', '739', '���ڼ�', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('747', '739', '���Ⱦ�', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('748', '739', '����', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('749', '0', '��������', '1', '14', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('750', '749', 'Ůװ', '1', '1', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('751', '750', 'T��', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('752', '750', '����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('753', '750', '��֯��', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('754', '750', 'ѩ����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('755', '750', '����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('756', '750', '���', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('757', '750', '����ȹ', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('758', '750', '����ȹ', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('759', '750', 'ţ�п�', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('760', '750', '���п�', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('761', '750', '��׿�', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('762', '750', '��װ��', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('763', '750', 'С��װ', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('764', '750', '������', '1', '14', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('765', '750', '����', '1', '15', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('766', '750', 'ë�ش���', '1', '16', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('767', '750', '��ƤƤ��', '1', '17', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('768', '750', '�޷�', '1', '18', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('769', '750', '���޷�', '1', '19', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('770', '750', '����Ůװ', '1', '20', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('771', '750', '������Ůװ', '1', '21', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('772', '750', '��ɴ', '1', '22', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('773', '750', '�����', '1', '23', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('774', '750', '����/��װ', '1', '24', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('775', '750', '���޿�', '1', '25', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('776', '750', '����/����', '1', '26', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('777', '750', '������', '1', '27', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('778', '750', '�̿�', '1', '28', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('779', '750', 'Ƥ��', '1', '29', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('780', '750', '���', '1', '30', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('781', '750', '��ƤƤ��', '1', '31', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('782', '750', '��ë��', '1', '32', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('783', '750', '���ʦ/����', '1', '33', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('784', '749', '��װ', '1', '2', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('785', '784', '����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('786', '784', 'T��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('787', '784', 'POLO��', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('788', '784', '��֯��', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('789', '784', '������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('790', '784', '����', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('791', '784', '���/����', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('792', '784', '�п�', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('793', '784', '����', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('794', '784', 'ë�ش���', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('795', '784', '��ƤƤ��', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('796', '784', '����', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('797', '784', '�޷�', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('798', '784', '���޷�', '1', '14', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('799', '784', 'ţ�п�', '1', '15', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('800', '784', '���п�', '1', '16', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('801', '784', '����', '1', '17', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('802', '784', '������װ', '1', '18', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('803', '784', '������װ', '1', '19', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('804', '784', '��������װ', '1', '20', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('805', '784', '��װ/��ɽװ', '1', '21', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('806', '784', '��װ', '1', '22', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('807', '784', '��ƤƤ��', '1', '23', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('808', '784', '���޿�', '1', '24', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('809', '784', '����/�˶���', '1', '25', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('810', '784', '�̿�', '1', '26', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('811', '784', '���ʦ/����', '1', '27', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('812', '784', '��ë��', '1', '28', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('813', '749', '����', '1', '3', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('814', '813', '����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('815', '813', 'Ůʽ�ڿ�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('816', '813', '��ʽ�ڿ�', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('817', '813', '˯��/�Ҿӷ�', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('818', '813', '��������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('819', '813', 'Ӿ��', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('820', '813', '����/����', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('821', '813', 'Ĩ��', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('822', '813', '������/˿��', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('823', '813', '������', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('824', '813', '��������', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('825', '813', '��ů����', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('826', '813', '����˯��', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('827', '813', '������װ', '1', '14', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('828', '813', '��Ů����', '1', '15', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('829', '813', '��������', '1', '16', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('830', '813', '��������', '1', '17', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('831', '813', '�������', '1', '18', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('832', '813', '��׿���', '1', '19', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('833', '813', '�����', '1', '20', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('834', '813', '�������', '1', '21', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('835', '813', '��Ȥ����', '1', '22', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('836', '749', '�������', '1', '4', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('837', '836', '̫����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('838', '836', '��ѧ����/��Ƭ', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('839', '836', 'Χ��/����/ñ����װ', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('840', '836', '���', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('841', '836', '����ñ', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('842', '836', 'ë��ñ', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('843', '836', '����ñ', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('844', '836', '�ϻ���', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('845', '836', 'װ���۾�', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('846', '836', '�������۾�', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('847', '836', '��Ӿ��', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('848', '836', 'Ůʿ˿��/Χ��/����', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('849', '836', '��ʿ˿��/Χ��', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('850', '836', 'Ѽ��ñ', '1', '14', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('851', '836', '����ñ', '1', '15', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('852', '836', '��ñ', '1', '16', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('853', '836', '��Ƥ����', '1', '17', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('854', '836', 'ë������', '1', '18', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('855', '836', '��ɹ����', '1', '19', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('856', '836', '��ʿ����/���', '1', '20', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('857', '836', 'Ůʿ����/���', '1', '21', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('858', '836', 'Կ�׿�', '1', '22', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('859', '836', '����ɡ/��ɡ', '1', '23', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('860', '836', '����', '1', '24', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('861', '836', '����/����', '1', '25', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('862', '836', '����', '1', '26', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('863', '836', 'ë��/������', '1', '27', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('864', '836', '���/���/�����', '1', '28', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('865', '0', 'Ьѥ', '1', '15', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('866', '865', '������Ь', '1', '1', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('867', '866', '��������Ь', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('868', '866', '��װЬ', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('869', '866', '����Ь', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('870', '866', '��Ь/ɳ̲Ь', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('871', '866', '��ѥ', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('872', '866', '����Ь', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('873', '866', '��Ь/������', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('874', '866', '��Ь/��ѥ', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('875', '866', '��ͳ��Ь', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('876', '866', 'Ь���', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('877', '866', '����Ь', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('878', '866', '����Ь', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('879', '866', '��װЬ', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('880', '866', '����Ь', '1', '14', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('881', '865', 'ʱ��ŮЬ', '1', '2', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('882', '881', '�߸�Ь', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('883', '881', '��Ь', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('884', '881', '����Ь', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('885', '881', '��Ь', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('886', '881', 'Ůѥ', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('887', '881', 'ѩ��ѥ', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('888', '881', '��Ь/������', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('889', '881', '��ѥ', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('890', '881', 'Ͳѥ', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('891', '881', '����Ь', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('892', '881', '��Ь/��ѥ', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('893', '881', '����Ь', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('894', '881', 'Ь���', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('895', '881', '��ɫЬ', '1', '14', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('896', '881', '����Ь', '1', '15', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('897', '881', '��Ь/�廨Ь', '1', '16', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('898', '881', '��ѥ', '1', '17', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('899', '881', '�¸�Ь', '1', '18', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('900', '881', '�ɸ�Ь', '1', '19', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('901', '881', '������', '1', '20', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('902', '881', '��ˮ̨', '1', '21', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('903', '0', '��Ʒ���', '1', '16', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('904', '903', '����Ů��', '1', '1', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('905', '904', 'Ǯ��', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('906', '904', '���ð�/�����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('907', '904', '�����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('908', '904', '˫���', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('909', '904', '�����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('910', '904', 'б���', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('911', '904', 'Կ�װ�', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('912', '904', '����/��Ǯ��', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('913', '903', '��Ʒ�а�', '1', '2', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('914', '913', 'Ǯ��/����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('915', '913', '��ʿ�ְ�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('916', '913', '�����İ�', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('917', '913', '˫���', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('918', '913', '����/б���', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('919', '913', 'Կ�װ�', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('920', '903', '�������', '1', '3', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('921', '920', '���԰�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('922', '920', '������/���˰�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('923', '920', '���а�', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('924', '920', '�������', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('925', '920', '�����˶���', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('926', '920', '��ɽ��', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('927', '920', '�����', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('928', '920', '���', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('929', '920', '�����', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('930', '920', '����/�ذ�', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('931', '903', '��Ʒ', '1', '4', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('932', '931', '����̾�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('933', '931', '��Ʒ�ľ�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('934', '931', '��������', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('935', '931', '�ղ�Ʒ', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('936', '931', '������Ʒ', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('937', '931', '������Ʒ', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('938', '931', '�����ȯ', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('939', '931', '�ʻ���ֲ', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('940', '931', '������Ʒ', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('941', '931', '������', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('942', '931', '��ױ��Ʒ', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('943', '931', '�ط���Ʒ', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('944', '931', '�Ŷ�����', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('945', '903', '�ݳ�Ʒ', '1', '5', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('946', '945', '���', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('947', '945', 'Ǯ��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('948', '945', '����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('949', '945', '����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('950', '945', '̫����/�۾���', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('951', '945', '���', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('952', '945', 'Ьѥ', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('953', '945', '��Ʒ', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('954', '945', '��Ʒ���', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('955', '945', '�ߵ���ױƷ', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('956', '903', '����', '1', '6', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('957', '956', '�������', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('958', '956', '��ɴ��Ӱ', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('959', '956', '��ɴ���', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('960', '956', '�������', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('961', '956', '������Ʒ/��Ʒ', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('962', '956', '����', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('963', '0', '�鱦', '1', '17', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('964', '963', 'ʱ����Ʒ', '1', '1', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('965', '964', '����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('966', '964', '����/����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('967', '964', '��ָ', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('968', '964', '����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('969', '964', 'ͷ��', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('970', '964', '����', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('971', '964', '������Ʒ', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('972', '964', '��Ʒ���', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('973', '963', '����K����Ʒ', '1', '2', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('974', '973', '��׹/����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('975', '973', '����/����/����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('976', '973', '��ָ', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('977', '973', '����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('978', '963', '����Ͷ��', '1', '3', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('979', '978', '���ս�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('980', '978', '������', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('981', '963', '����', '1', '4', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('982', '981', '��׹/����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('983', '981', '����/����/����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('984', '981', '��ָ/����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('985', '981', '��������', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('986', '981', 'ǧ��������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('987', '963', '��ʯ', '1', '5', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('988', '987', '����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('989', '987', '��ָ', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('990', '987', '����/��׹', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('991', '987', '����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('992', '987', '����/����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('993', '963', '�����ʯ', '1', '6', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('994', '993', '����/��׹', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('995', '993', '����/�ִ�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('996', '993', '��ָ', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('997', '993', '����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('998', '993', '�Ҽ�/�ڼ�/�Ѽ�', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('999', '993', '��ֵ�ղ�', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1000', '963', 'ˮ�����', '1', '7', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1001', '1000', '����/��׹', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1002', '1000', '����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1003', '1000', '����/����/����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1004', '1000', '��ָ', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1005', '1000', 'ͷ��/����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1006', '1000', '�ڼ�/�Ҽ�', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1007', '963', '�ʱ�', '1', '8', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1008', '1007', '����/��׹', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1009', '1007', '����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1010', '1007', '����/����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1011', '1007', '��ָ', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1012', '963', '����', '1', '9', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1013', '1012', '����/��׹', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1014', '1012', '����/����/����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1015', '1012', '��ָ', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1016', '1012', '����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1017', '963', '��Ȼľ��', '1', '10', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1018', '1017', 'СҶ��̴', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1019', '1017', '�ƻ���', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1020', '1017', '����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1021', '1017', '��˿�', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1022', '1017', '����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1023', '1017', '����', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1024', '963', '����', '1', '11', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1025', '1024', '����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1026', '1024', '��׹', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1027', '1024', '����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1028', '1024', '����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1029', '1024', '��ָ', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1030', '1024', '����', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1031', '0', '�˶�����', '1', '18', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1032', '1031', '�˶�Ь��', '1', '1', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1033', '1032', '����Ь', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1034', '1032', '��Ь', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1035', '1032', '����Ь', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1036', '1032', 'ר���˶�Ь', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1037', '1032', '�ܲ�Ь', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1038', '1032', '����Ь', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1039', '1032', '����Ь', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1040', '1032', 'ѵ��Ь', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1041', '1032', 'ƹ����Ь', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1042', '1032', '��Ь', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1043', '1032', '�˶���', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1044', '1031', '�˶�����', '1', '2', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1045', '1044', '�˶�����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1046', '1044', '���޷�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1047', '1044', 'ë��/����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1048', '1044', 'ƹ������', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1049', '1044', 'ѵ����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1050', '1044', '�˶�����', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1051', '1044', '����/��ͷ��', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1052', '1044', '�п�/����', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1053', '1044', 'T��', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1054', '1044', '�޷�', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1055', '1044', '�˶���', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1056', '1044', '��װ', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1057', '1031', '�����˶�', '1', '3', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1058', '1057', '�۵���', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1059', '1057', 'ɽ�س�/��·��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1060', '1057', '�綯��', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1061', '1057', '��������', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1062', '1057', '���з�', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1063', '1057', '����װ��', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1064', '1031', '������Ʒ', '1', '4', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1065', '1064', '�������', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1066', '1064', '��Ư���', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1067', '1064', '��������', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1068', '1064', '�������', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1069', '1064', '�������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1070', '1064', '����', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1071', '1031', '��Ӿ��Ʒ', '1', '5', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1072', '1071', 'Ӿ��', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1073', '1071', 'Ӿñ', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1074', '1071', '��Ӿ����ˮ��', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1075', '1071', 'ŮʿӾ��', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1076', '1071', '��ʿӾ��', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1077', '1071', '�Ȼ���', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1078', '1071', '����', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1079', '1031', '����Ь��', '1', '6', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1080', '1079', '����¿�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1081', '1079', '�ٸ��¿�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1082', '1079', '��ѩ��', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1083', '1079', '���޷�/�޷�', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1084', '1079', '�����¿�', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1085', '1079', 'ץ���¿�', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1086', '1079', '����¿�', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1087', '1079', 'T��', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1088', '1079', '�������', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1089', '1079', '��������', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1090', '1079', '���Է���', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1091', '1079', '��ɽЬ', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1092', '1079', 'ѩ��ѥ', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1093', '1079', 'ͽ��Ь', '1', '14', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1094', '1079', 'ԽҰ��Ь', '1', '15', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1095', '1079', '����Ь', '1', '16', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1096', '1079', '��װЬ', '1', '17', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1097', '1079', '��ϪЬ', '1', '18', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1098', '1079', 'ɳ̲/����', '1', '19', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1099', '1079', '������', '1', '20', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1100', '1031', '����װ��', '1', '7', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1101', '1100', '����/����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1102', '1100', '˯��/����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1103', '1100', '��ɽ����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1104', '1100', '����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1105', '1100', '��������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1106', '1100', '��������', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1107', '1100', '�����Ǳ�', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1108', '1100', '���⹤��', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1109', '1100', '��Զ��', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1110', '1100', '������Ʒ', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1111', '1100', '��Я���δ�', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1112', '1100', 'Ұ���տ�', '1', '12', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1113', '1100', '������Ʒ', '1', '13', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1114', '1100', '��Ԯװ��', '1', '14', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1115', '1100', '��ѩװ��', '1', '15', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1116', '1100', '���޻���', '1', '16', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1117', '1100', '����Ǳˮ', '1', '17', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1118', '1031', '����ѵ��', '1', '8', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1119', '1118', '�ۺ�ѵ����', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1120', '1118', '����������е', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1121', '1118', '����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1122', '1118', '���԰�/�ո���', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1123', '1118', '������С������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1124', '1118', '�٤�赸', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1125', '1118', '��������', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1126', '1118', '����/���е���', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1127', '1118', '�ܲ���', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1128', '1118', '�˶�����', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1129', '1031', '�����٤', '1', '9', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1130', '1129', '�٤��', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1131', '1129', '�٤��', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1132', '1129', '�٤���', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1133', '1129', '�٤��װ', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1134', '1129', '�赸Ь��', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1135', '1031', '������Ʒ', '1', '10', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1136', '1135', '��ë��', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1137', '1135', 'ƹ����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1138', '1135', '����', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1139', '1135', '����', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1140', '1135', '����', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1141', '1135', '����', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1142', '1135', '�߶���', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1143', '1135', '̨��', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1144', '1135', '�����齫', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1145', '1135', '�ֻ�����', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1146', '1135', '����', '1', '11', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1147', '0', '��Ʊ�����С���ֵ��Ʊ��', '1', '19', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1148', '1147', '��Ʊ', '1', '1', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1149', '1148', '˫ɫ��', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1150', '1148', '����͸', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1151', '1148', '����3D', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1152', '1148', '������', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1153', '1148', '������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1154', '1148', '���ǲ�', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1155', '1148', '���ֲ�', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1156', '1148', '��������', '1', '8', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1157', '1148', '��������', '1', '9', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1158', '1148', '��ʱʱ��', '1', '10', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1159', '1147', '��Ʊ', '1', '2', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1160', '1159', '���ڻ�Ʊ', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1161', '1147', '�Ƶ�', '1', '3', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1162', '1161', '���ھƵ�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1163', '1161', '�Ƶ��Ź�', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1164', '1147', '����', '1', '4', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1165', '1164', '�ȼ�', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1166', '1164', '����', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1167', '1164', '�⳵', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1168', '1164', '��Ʊ', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1169', '1164', '�����Ź�', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1170', '1147', '��ֵ', '1', '5', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1171', '1170', '�ֻ���ֵ', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1172', '1147', '��Ϸ', '1', '6', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1173', '1172', '��Ϸ�㿨', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1174', '1172', 'QQ��ֵ', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1175', '1147', 'Ʊ��', '1', '7', '1', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1176', '1175', '��ӰƱ', '1', '1', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1177', '1175', '�ݳ���', '1', '2', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1178', '1175', '������', '1', '3', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1179', '1175', '���ֻ�', '1', '4', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1180', '1175', '��������', '1', '5', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1181', '1175', '�赸����', '1', '6', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1182', '1175', 'Ϸ������', '1', '7', '0', null, null, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `tb_item_cat` VALUES ('1183', '0', 'Ʒ���ܱ�', '1', '1', '1', null, null, '2018-04-18 20:37:47', '2018-04-18 20:37:49');
INSERT INTO `tb_item_cat` VALUES ('1184', '1183', 'Ʒ���ܱ�', '1', '1', '0', null, null, '2018-04-18 20:38:07', '2018-04-18 20:38:09');

-- ----------------------------
-- Table structure for tb_item_desc
-- ----------------------------
DROP TABLE IF EXISTS `tb_item_desc`;
CREATE TABLE `tb_item_desc` (
  `item_id` bigint(20) NOT NULL COMMENT '��ƷID',
  `item_desc` text COMMENT '��Ʒ����',
  `created` datetime DEFAULT NULL COMMENT '����ʱ��',
  `updated` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ʒ������';

-- ----------------------------
-- Records of tb_item_desc
-- ----------------------------
INSERT INTO `tb_item_desc` VALUES ('562379', '<img src=\"http://image.smartisanos.cn/resource/98521dbfe1dd1e67db3f7ca21e76c9ef.jpg\" style=\"width:1220px;height:7000px;\" alt=\"\" />', '2017-09-05 21:27:54', '2017-11-19 21:19:07');
INSERT INTO `tb_item_desc` VALUES ('679532', '<img src=\"http://image.smartisanos.cn/resource/4a7b87fe01ec8339985702ee922d205a.jpg\" style=\"width:1220px;height:4526px;\" alt=\"\" />', '2017-09-05 21:27:54', '2017-11-09 22:31:04');
INSERT INTO `tb_item_desc` VALUES ('679533', '<img src=\"http://image.smartisanos.cn/resource/0bb13cf0b2e0b4817f4914a317fb1445.png\" style=\"width:1220px;height:6481px;\" alt=\"\" />', '2017-09-05 21:27:54', '2017-11-19 21:28:04');
INSERT INTO `tb_item_desc` VALUES ('691300', '<img src=\"http://image.smartisanos.cn/resource/d930be42185ab064035d0894f37ea179.jpg\" style=\"width:1220px;height:6478px;\" alt=\"\" />', '2017-09-05 21:27:54', '2017-11-09 22:22:53');
INSERT INTO `tb_item_desc` VALUES ('738388', '<img src=\"http://image.smartisanos.cn/resource/b3d7b420e3e609e858a8d75f19cbfd7c.jpg\" style=\"width:1220px;height:4829px;\" alt=\"\" />', '2017-09-05 21:27:54', '2017-11-19 21:21:41');
INSERT INTO `tb_item_desc` VALUES ('741524', '<img src=\"http://image.smartisanos.cn/resource/73fdd5f948cd6248c51521e87acb33e5.jpg\" style=\"width:1220px;height:8703px;\" alt=\"\" />', '2017-09-05 21:27:54', '2017-11-19 21:31:05');
INSERT INTO `tb_item_desc` VALUES ('816448', '<img src=\"http://image.smartisanos.cn/resource/e7ed8222dcd7c9f67af3097bd7bd5c2b.jpg\" style=\"width:1220px;height:12257px;\" alt=\"\" />', '2017-09-05 21:27:54', '2017-11-19 21:42:22');
INSERT INTO `tb_item_desc` VALUES ('816753', '<img src=\"http://image.smartisanos.cn/resource/62a60be80e9cd3307ef334ede82b430a.jpg\" style=\"width:1220px;height:8267px;\" alt=\"\" />', '2017-09-05 21:27:54', '2017-11-19 21:41:18');
INSERT INTO `tb_item_desc` VALUES ('830972', '<img src=\"http://image.smartisanos.cn/resource/102ed8a03b5f4452dda7dc513c016f12.jpg\" style=\"width:1220px;height:8811px;\" alt=\"\" />', '2017-09-05 21:27:54', '2017-11-19 21:37:54');
INSERT INTO `tb_item_desc` VALUES ('832739', '<img src=\"http://image.smartisanos.cn/resource/f86802b6a7b207d02f5c69163fa5e347.jpg\" style=\"width:1220px;height:13682px;\" alt=\"\" />', '2017-09-05 21:27:54', '2017-11-19 21:39:10');
INSERT INTO `tb_item_desc` VALUES ('844022', '<img src=\"http://image.smartisanos.cn/resource/bcd85c778a0b54b61afe813bd7b674d4.jpg\" style=\"width:1220px;height:12384px;\" alt=\"\" />', '2017-09-05 21:27:54', '2017-11-19 21:40:07');
INSERT INTO `tb_item_desc` VALUES ('847276', '<img src=\"http://image.smartisanos.cn/resource/9be6229b3498749c4afd173a3b1fe165.png\" style=\"width:1220px;height:15514px;\" alt=\"\" />', '2017-09-05 21:27:54', '2018-04-20 22:18:11');
INSERT INTO `tb_item_desc` VALUES ('856645', '<div class=\"ssd-module-wrap\" style=\"margin:0 auto;text-align:left;\">\n	<div class=\"outer-container\">\n		<div class=\" \" id=\"\">\n			<div class=\"ssd-1080\">\n				<div class=\"ssd-j-module item_tit\">\n					<div class=\"tit1\">\n						��Ʒ��ɫ\n					</div>\n					<div class=\"tit2\">\n						PRODUCTION\n					</div>\n				</div>\n			</div>\n		</div>\n		<div class=\" \">\n			<div class=\"ssd-1183\">\n				<div class=\"ssd-j-module item_tw_1\" style=\"background:#ffffff url(http://img30.360buyimg.com/sku/jfs/t460/159/849423048/82352/867f75ff/548e5a88N73b12dd9.jpg) no-repeat;\">\n					<div class=\"txt_box\">\n						<div class=\"title1\">\n						</div>\n						<div class=\"title2\">\n						</div>\n					</div>\n					<div class=\"img-pic\">\n						<img class=\"ssd-err-product\" src=\"http://img30.360buyimg.com/sku/jfs/t451/241/814906943/1043/fa877bc/548e4238N585a2a89.png\" alt=\"\" /> \n					</div>\n				</div>\n			</div>\n		</div>\n		<div class=\" \">\n			<div class=\"ssd-2165\">\n				<div class=\"ssd-j-module item_tw_1\" style=\"background:#ffffff url(http://img30.360buyimg.com/cms/jfs/t217/232/2460673136/4947/e76ec4b7/541a3cf8Ne7d0749d.png) no-repeat;\">\n					<div class=\"img-pic\">\n						<img class=\"ssd-err-product\" src=\"http://img30.360buyimg.com/sku/jfs/t598/141/839042103/90325/3ea2cf8a/548e7e74Nc2025337.jpg\" alt=\"\" /> \n					</div>\n					<div class=\"txt_box\">\n						<div class=\"title1\">\n						</div>\n						<div class=\"title2\">\n						</div>\n					</div>\n				</div>\n			</div>\n		</div>\n		<div class=\" \">\n			<div class=\"ssd-2165\">\n				<div class=\"ssd-j-module item_tw_1\" style=\"background:#ffffff;\">\n					<div class=\"img-pic\">\n						<img class=\"ssd-err-product\" src=\"http://img30.360buyimg.com/sku/jfs/t472/95/847651115/101211/6b98601c/548e7fc5Ncb21ef86.jpg\" alt=\"\" /> \n					</div>\n					<div class=\"txt_box\">\n						<div class=\"title1\">\n							��\n						</div>\n						<div class=\"title2\">\n							��\n						</div>\n					</div>\n				</div>\n			</div>\n		</div>\n		<div class=\" \" id=\"\">\n			<div class=\"ssd-1080\">\n				<div class=\"ssd-j-module item_tit\">\n					<div class=\"tit1\">\n						��Ʒ����\n					</div>\n					<div class=\"tit2\">\n						PRODUCT FUNCTION\n					</div>\n				</div>\n			</div>\n		</div>\n		<div class=\" \">\n			<div class=\"ssd-2165\">\n				<div class=\"ssd-j-module item_tw_1\" style=\"background:#ffffff url(http://img30.360buyimg.com/cms/jfs/t217/232/2460673136/4947/e76ec4b7/541a3cf8Ne7d0749d.png) no-repeat;\">\n					<div class=\"img-pic\">\n						<img class=\"ssd-err-product\" src=\"http://img30.360buyimg.com/sku/jfs/t745/150/148843066/79290/604280fc/548e8318Na94c82f9.jpg\" alt=\"\" /> \n					</div>\n					<div class=\"txt_box\">\n						<div class=\"title1\">\n							��\n						</div>\n						<div class=\"title2\">\n							��\n						</div>\n					</div>\n				</div>\n			</div>\n		</div>\n		<div class=\" \">\n			<div class=\"ssd-1829\">\n				<div class=\"ssd-j-module item_tw_1\" style=\"background:#ffffff;\">\n					<div class=\"img-pic\">\n						<img class=\"ssd-err-product\" src=\"http://img30.360buyimg.com/sku/jfs/t769/364/157509045/89868/d97d79ef/548e9d75N18fc06d2.jpg\" alt=\"\" /> \n					</div>\n					<div class=\"txt_box\">\n						<div class=\"title1\">\n						</div>\n						<div class=\"title2\">\n						</div>\n					</div>\n				</div>\n			</div>\n		</div>\n		<div class=\" \">\n			<div class=\"ssd-2136\">\n				<div class=\"ssd-j-module img_box\" style=\"background:#cccccc;\">\n					<div class=\"imglab\">\n						<img class=\"ssd-err-product\" src=\"http://img30.360buyimg.com/sku/jfs/t685/187/809086881/59964/1802066d/548ea270N6853bbcd.jpg\" alt=\"\" /> \n					</div>\n				</div>\n			</div>\n		</div>\n		<div class=\" \">\n			<div class=\"ssd-2136\">\n				<div class=\"ssd-j-module img_box\" style=\"background:#cccccc;\">\n					<div class=\"imglab\">\n						<img class=\"ssd-err-product\" src=\"http://img30.360buyimg.com/sku/jfs/t685/96/811972813/58610/d1082b4d/548ea4ceN7273b5bd.jpg\" alt=\"\" /> \n					</div>\n				</div>\n			</div>\n		</div>\n		<div class=\" \">\n			<div class=\"ssd-1243\">\n				<div class=\"ssd-j-module item_tw_1\" style=\"background:#f3f3f3 url(http://img30.360buyimg.com/sku/jfs/t487/290/816270587/57176/b1d5d9d0/548ea5afN026eaf9a.jpg) no-repeat;\">\n					<div class=\"txt_box\">\n						<div class=\"title1\">\n							��\n						</div>\n						<div class=\"title2\">\n							��\n						</div>\n					</div>\n					<div class=\"img-pic\">\n						<img class=\"ssd-err-product\" src=\"http://img30.360buyimg.com/sku/jfs/t547/275/827858003/1121/958dc0d9/548ea626Na2fb0cd4.png\" alt=\"\" /> \n					</div>\n				</div>\n			</div>\n		</div>\n		<div class=\" \" id=\"\">\n			<div class=\"ssd-1080\">\n				<div class=\"ssd-j-module item_tit\">\n					<div class=\"tit1\">\n						��Ʒϸ��\n					</div>\n					<div class=\"tit2\">\n						PRODUCT DETAILS\n					</div>\n				</div>\n			</div>\n		</div>\n		<div class=\" \">\n			<div class=\"ssd-2165\">\n				<div class=\"ssd-j-module item_tw_1\" style=\"background:#ffffff url(http://img30.360buyimg.com/cms/jfs/t217/232/2460673136/4947/e76ec4b7/541a3cf8Ne7d0749d.png) no-repeat;\">\n					<div class=\"img-pic\">\n						<img class=\"ssd-err-product\" src=\"http://img30.360buyimg.com/sku/jfs/t766/326/165583398/153663/931a1487/548ea712N54c54c32.jpg\" alt=\"\" /> \n					</div>\n					<div class=\"txt_box\">\n						<div class=\"title1\">\n						</div>\n						<div class=\"title2\">\n						</div>\n					</div>\n				</div>\n			</div>\n		</div>\n		<div class=\" \">\n			<div class=\"ssd-2165\">\n				<div class=\"ssd-j-module item_tw_1\" style=\"background:#ffffff url(http://img30.360buyimg.com/cms/jfs/t217/232/2460673136/4947/e76ec4b7/541a3cf8Ne7d0749d.png) no-repeat;\">\n					<div class=\"img-pic\">\n						<img class=\"ssd-err-product\" src=\"http://img30.360buyimg.com/sku/jfs/t571/63/809585802/77035/720c5d87/548ea7d9N22f04056.jpg\" alt=\"\" /> \n					</div>\n					<div class=\"txt_box\">\n						<div class=\"title1\">\n						</div>\n						<div class=\"title2\">\n						</div>\n					</div>\n				</div>\n			</div>\n		</div>\n	</div>\n</div>', '2017-09-05 21:27:54', '2017-10-22 22:04:26');
INSERT INTO `tb_item_desc` VALUES ('150635087972564', '<p style=\"text-align:center;\">\n	<img src=\"https://img30.360buyimg.com/popWaterMark/jfs/t7843/137/3005340945/124833/dc7c71f2/59b8ccd1N2bffd055.jpg\" alt=\"\" /><img src=\"https://img30.360buyimg.com/popWaterMark/jfs/t8764/314/1380452846/296346/d62490e2/59b8ccd1N96ce760d.jpg\" alt=\"\" /><img src=\"https://img30.360buyimg.com/popWaterMark/jfs/t8710/275/1373463301/363710/ebf00bff/59b8ccbaN2d563f74.jpg\" alt=\"\" /><img src=\"https://img30.360buyimg.com/popWaterMark/jfs/t8632/330/1390725687/229853/e56f9e1b/59b8ccd1N7b8b6bdb.jpg\" alt=\"\" /><img src=\"https://img30.360buyimg.com/popWaterMark/jfs/t9115/290/1376678976/488369/591760dc/59b8ccc6N1563a61b.jpg\" alt=\"\" /><img src=\"https://img30.360buyimg.com/popWaterMark/jfs/t8233/331/1431263348/183032/b875528c/59b8ccd1Ne7e633e3.jpg\" alt=\"\" /><img src=\"https://img30.360buyimg.com/popWaterMark/jfs/t8785/253/890847377/186916/c467a464/59b8ccd1N4551397c.jpg\" alt=\"\" /> <img src=\"https://img30.360buyimg.com/popWaterMark/jfs/t8728/276/1416802585/172158/1516ec08/59b8ccd1N95aae9c9.jpg\" alt=\"\" /> <img src=\"https://img30.360buyimg.com/popWaterMark/jfs/t9082/133/1223014275/307097/58f97021/59b8ccd2Nebfc633a.jpg\" alt=\"\" /><img src=\"https://img30.360buyimg.com/popWaterMark/jfs/t9052/275/1400615286/155643/1b0ecf44/59b8ccd2N46bd82bf.jpg\" alt=\"\" /> <img src=\"https://img30.360buyimg.com/popWaterMark/jfs/t9169/240/1361662217/193435/24ed9b93/59b8ccd4N03cec407.jpg\" alt=\"\" /> <img src=\"https://img30.360buyimg.com/popWaterMark/jfs/t7390/232/3008585906/285016/56cbb12/59b8ccd4Nc8434af8.jpg\" alt=\"\" /> \n</p>', '2017-09-05 21:27:54', '2018-07-13 21:59:05');
INSERT INTO `tb_item_desc` VALUES ('150642571432835', '<br />\n<br />\n<br />\n<span style=\"font-size:18px;\">ΪʲôҪ������</span> <br />\n<br />\n<span style=\"font-size:18px;\">�ڿ�ʼ֮ǰ�����ȸ�л�û���֧�ֺͿ������ң����ò�˵�����ǵ�֧�ָ����˺ܴ�Ķ���</span> <br />\n<br />\n<span style=\"font-size:18px;\">û�й��͵������ƹ�����룬������������Ŀ�ܻ�ӭ�̶���ֱ�۵�����</span> <br />\n<br />\n<span style=\"font-size:18px;\">��֧������΢��ż���յ�һ�ʾ������͸о�����һ���Ͽɣ�����һ������</span> <br />\n<br />\n<span style=\"font-size:18px;\">һ����ӯ����Ŀ����������Ȥ��֧�ţ�����ȷ���������߶�Զ</span> <br />\n<br />\n<span style=\"font-size:18px;\">���Ժ�����������Ҳ�֪������ֻ֪������Щ������Ҫ��˫��ȥά��</span> <br />\n<br />\n<span style=\"font-size:18px;\">����������</span> <br />\n<br />\n<span style=\"font-size:18px;\">֧������</span> <br />\n<br />\n<img src=\"https://i.loli.net/2018/07/13/5b48a7f46be51.png\" width=\"250px\" alt=\"\" /> <br />\n<br />\n<span style=\"font-size:18px;\">΢��֧����</span> <br />\n<br />\n<img src=\"https://i.loli.net/2018/07/13/5b48a952de430.png\" width=\"250px\" alt=\"\" /> <br />\n<br />\n<span style=\"font-size:18px;\">΢�Ŵ��������Ա�ע������Ϣ</span> <br />\n<br />\n<br />\n<br />\n<br />', '2017-09-05 21:27:54', '2018-07-13 21:38:52');
INSERT INTO `tb_item_desc` VALUES ('150642571432836', '<img src=\"https://resource.smartisan.com/resource/36fee45879f4f252492ec552dfd4c323.jpg\" style=\"width:1220px;height:6982px;\" alt=\"\" />', '2018-04-18 20:41:41', '2018-04-20 00:21:01');
INSERT INTO `tb_item_desc` VALUES ('150642571432837', '<img src=\"https://resource.smartisan.com/resource/5dcbe27f36e1f8f2bfdfabb0b2681879.jpg\" style=\"width:1220px;height:3665px;\" alt=\"\" />', '2018-04-19 00:34:06', '2018-04-19 23:49:38');
INSERT INTO `tb_item_desc` VALUES ('150642571432838', '<img src=\"https://resource.smartisan.com/resource/3aa27e8caf798b5e7e3796388190b43b.jpg\" style=\"width:1220px;height:5797px;\" alt=\"\" />', '2018-04-19 00:35:50', '2018-04-20 00:01:08');
INSERT INTO `tb_item_desc` VALUES ('150642571432839', '<img src=\"https://resource.smartisan.com/resource/fda5d962cc2b2e579c5df1c3d9e2f2c8.jpg\" style=\"width:1220px;height:4957px;\" alt=\"\" />', '2018-04-19 00:38:07', '2018-04-20 00:02:54');
INSERT INTO `tb_item_desc` VALUES ('150642571432840', '<img src=\"https://resource.smartisan.com/resource/14497b77e21fc6d0807e57bb9deabe28.jpg\" style=\"width:1220px;height:9527px;\" alt=\"\" />', '2018-04-19 00:40:40', '2018-04-20 00:04:41');
INSERT INTO `tb_item_desc` VALUES ('150642571432841', '<img src=\"https://resource.smartisan.com/resource/4272e7737eed967a8f2f10ebef9b84dc.jpg style=\"width:1220px;height:4990px;\" alt=\"\" />', '2018-04-19 00:43:48', '2018-04-20 00:06:59');
INSERT INTO `tb_item_desc` VALUES ('150642571432842', '<img src=\"https://resource.smartisan.com/resource/4cbe4a14ab225c9466e16f8c8ef4e29e.jpg\" style=\"width:1220px;height:4083px;\" alt=\"\" />', '2018-04-19 00:45:14', '2018-04-20 00:08:21');
INSERT INTO `tb_item_desc` VALUES ('150642571432843', '<img src=\"https://img20.360buyimg.com/vc/jfs/t17368/340/1617561606/1069487/9676971/5ad014b1Nb8463c4e.jpg\" width=\"1220px\" alt=\"\" />\n<img src=\"https://img20.360buyimg.com/vc/jfs/t17278/52/1620296383/1157116/3d0f473/5ad014b8N32c9c183.jpg\" width=\"1220px\" alt=\"\" />\n<img src=\"https://img20.360buyimg.com/vc/jfs/t19420/87/1609028179/1135327/9b3e0f97/5ad014c0N6234ba19.jpg\" width=\"1220px\" alt=\"\" />', '2018-04-19 22:13:31', '2018-07-13 22:03:52');
INSERT INTO `tb_item_desc` VALUES ('150642571432844', '<img src=\"https://img20.360buyimg.com/vc/jfs/t11503/47/1494539812/1725396/3defedb6/5a046e18Ne0a5d5da.jpg\" alt=\"\" />', '2018-04-19 22:16:05', '2018-07-13 22:06:58');
INSERT INTO `tb_item_desc` VALUES ('150642571432845', '<img src=\"https://resource.smartisan.com/resource/27a054301d8e10c40461443928dccd77.jpg\" style=\"width:1220px;height:7451px;\" alt=\"\" />', '2018-04-19 22:22:02', '2018-04-20 00:19:39');
INSERT INTO `tb_item_desc` VALUES ('150642571432846', '<img src=\"https://resource.smartisan.com/resource/65e89427674ee370fa58f5fe98120679.png\" style=\"width:1220px;height:7881px;\" alt=\"\" />', '2018-04-19 22:23:39', '2018-04-20 00:23:09');
INSERT INTO `tb_item_desc` VALUES ('150642571432847', '<img src=\"https://resource.smartisan.com/resource/41338ebac06fc82450f8b8e4867df257.jpg\" style=\"width:1220px;height:5043px;\" alt=\"\" />', '2018-04-19 22:25:41', '2018-04-20 10:51:53');
INSERT INTO `tb_item_desc` VALUES ('150642571432848', '<img src=\"https://resource.smartisan.com/resource/debb893778547fb9d5a6119b376d9ec1.jpg\" style=\"width:1220px;height:6879px;\" alt=\"\" />', '2018-04-19 22:28:11', '2018-04-20 10:53:15');
INSERT INTO `tb_item_desc` VALUES ('150642571432849', '<img src=\"https://resource.smartisan.com/resource/f03a523847e63f28f9238aad45567b37.jpg\" style=\"width:1220px;height:7935px;\" alt=\"\" />', '2018-04-19 22:31:09', '2018-04-21 11:26:31');
INSERT INTO `tb_item_desc` VALUES ('150642571432850', '<img src=\"https://resource.smartisan.com/resource/f6de19257228641b1a0c1964239b19b7.jpg\" style=\"width:1220px;height:9970px;\" alt=\"\" />', '2018-04-19 22:32:38', '2018-04-20 11:17:31');
INSERT INTO `tb_item_desc` VALUES ('150642571432851', '<img src=\"https://resource.smartisan.com/resource/a1f3fbf662376e8684e528f05721b286.jpg\" style=\"width:1220px;height:14998px;\" alt=\"\" />', '2018-04-19 22:36:50', '2018-04-20 00:13:44');

-- ----------------------------
-- Table structure for tb_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_log`;
CREATE TABLE `tb_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `request_type` varchar(255) DEFAULT NULL,
  `request_param` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `ip_info` varchar(255) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_log
-- ----------------------------

-- ----------------------------
-- Table structure for tb_member
-- ----------------------------
DROP TABLE IF EXISTS `tb_member`;
CREATE TABLE `tb_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '�û���',
  `password` varchar(32) NOT NULL COMMENT '���룬���ܴ洢',
  `phone` varchar(20) DEFAULT NULL COMMENT 'ע���ֻ���',
  `email` varchar(50) DEFAULT NULL COMMENT 'ע������',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `sex` varchar(2) DEFAULT '',
  `address` varchar(255) DEFAULT NULL,
  `state` int(1) DEFAULT '0',
  `file` varchar(255) DEFAULT NULL COMMENT 'ͷ��',
  `description` varchar(500) DEFAULT NULL,
  `points` int(11) DEFAULT '0' COMMENT '����',
  `balance` decimal(10,2) DEFAULT '0.00' COMMENT '���',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `phone` (`phone`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='�û���';

-- ----------------------------
-- Records of tb_member
-- ----------------------------
INSERT INTO `tb_member` VALUES ('62', 'test', '098f6bcd4621d373cade4e832627b4f6', null, null, '2017-09-05 21:27:54', '2017-10-08 18:13:51', null, null, '1', 'http://ow2h3ee9w.bkt.clouddn.com/1507866636672.png', null, null, null);
INSERT INTO `tb_member` VALUES ('63', 'admin', '21232f297a57a5a743894a0e4a801fc3', null, null, '2017-09-05 21:27:54', '2018-04-18 14:43:32', null, null, '2', 'http://ow2h3ee9w.bkt.clouddn.com/1507875078112.png', null, null, null);
INSERT INTO `tb_member` VALUES ('64', 'xhy', '21232f297a57a5a743894a0e4a801fc3', null, null, '2017-09-05 21:27:54', '2018-04-18 14:43:33', null, null, '2', null, null, null, null);
INSERT INTO `tb_member` VALUES ('65', 'xhy1', '202cb962ac59075b964b07152d234b70', null, null, '2017-09-05 21:27:54', '2017-10-17 21:21:32', null, null, '0', '', null, null, null);

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `order_id` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '����id',
  `payment` decimal(10,2) DEFAULT NULL COMMENT 'ʵ�����',
  `payment_type` int(1) DEFAULT NULL COMMENT '֧������ 1����֧�� 2��������',
  `post_fee` decimal(10,2) DEFAULT NULL COMMENT '�ʷ�',
  `status` int(1) DEFAULT NULL COMMENT '״̬ 0δ���� 1�Ѹ��� 2δ���� 3�ѷ��� 4���׳ɹ� 5���׹ر� 6����ʧ��',
  `create_time` datetime DEFAULT NULL COMMENT '��������ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '��������ʱ��',
  `payment_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `consign_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `end_time` datetime DEFAULT NULL COMMENT '�������ʱ��',
  `close_time` datetime DEFAULT NULL COMMENT '���׹ر�ʱ��',
  `shipping_name` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '��������',
  `shipping_code` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '��������',
  `user_id` bigint(20) DEFAULT NULL COMMENT '�û�id',
  `buyer_message` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '�������',
  `buyer_nick` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '����ǳ�',
  `buyer_comment` tinyint(1) DEFAULT NULL COMMENT '����Ƿ��Ѿ�����',
  PRIMARY KEY (`order_id`),
  KEY `create_time` (`create_time`),
  KEY `buyer_nick` (`buyer_nick`),
  KEY `status` (`status`),
  KEY `payment_type` (`payment_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('150787555927616', '1.00', null, null, '5', '2017-10-13 14:19:19', '2017-10-13 14:19:19', null, null, null, '2017-10-13 14:19:35', null, null, '63', null, 'admin', null);

-- ----------------------------
-- Table structure for tb_order_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_item`;
CREATE TABLE `tb_order_item` (
  `id` varchar(20) COLLATE utf8_bin NOT NULL,
  `item_id` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '��Ʒid',
  `order_id` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '����id',
  `num` int(10) DEFAULT NULL COMMENT '��Ʒ��������',
  `title` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '��Ʒ����',
  `price` decimal(10,2) DEFAULT NULL COMMENT '��Ʒ����',
  `total_fee` decimal(10,2) DEFAULT NULL COMMENT '��Ʒ�ܽ��',
  `pic_path` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '��ƷͼƬ��ַ',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tb_order_item
-- ----------------------------
INSERT INTO `tb_order_item` VALUES ('150787555927880', '150642571432835', '150787555927616', '1', '������Ʒ', '1.00', '1.00', 'http://ow2h3ee9w.bkt.clouddn.com/FgwHSk1Rnd-8FKqNJhFSSdcq2QVB');

-- ----------------------------
-- Table structure for tb_order_shipping
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_shipping`;
CREATE TABLE `tb_order_shipping` (
  `order_id` varchar(50) NOT NULL COMMENT '����ID',
  `receiver_name` varchar(20) DEFAULT NULL COMMENT '�ջ���ȫ��',
  `receiver_phone` varchar(20) DEFAULT NULL COMMENT '�̶��绰',
  `receiver_mobile` varchar(30) DEFAULT NULL COMMENT '�ƶ��绰',
  `receiver_state` varchar(10) DEFAULT NULL COMMENT 'ʡ��',
  `receiver_city` varchar(10) DEFAULT NULL COMMENT '����',
  `receiver_district` varchar(20) DEFAULT NULL COMMENT '��/��',
  `receiver_address` varchar(200) DEFAULT NULL COMMENT '�ջ���ַ���磺xx·xx��',
  `receiver_zip` varchar(6) DEFAULT NULL COMMENT '��������,�磺310001',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order_shipping
-- ----------------------------
INSERT INTO `tb_order_shipping` VALUES ('150787555927616', '4', '4', null, null, null, null, '4', null, '2017-10-13 14:19:19', '2017-10-13 14:19:19');

-- ----------------------------
-- Table structure for tb_panel
-- ----------------------------
DROP TABLE IF EXISTS `tb_panel`;
CREATE TABLE `tb_panel` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '��ĿID',
  `name` varchar(50) DEFAULT NULL COMMENT '�������',
  `type` int(1) DEFAULT NULL COMMENT '���� 0�ֲ�ͼ 1�������һ 2�������� 3��������� ',
  `sort_order` int(4) DEFAULT NULL COMMENT '�������',
  `position` int(1) DEFAULT NULL COMMENT '����λ�� 0��ҳ 1��Ʒ�Ƽ� 2��Ҫ����',
  `limit_num` int(4) DEFAULT NULL COMMENT '���������Ʒ����',
  `status` int(1) DEFAULT '1' COMMENT '״̬',
  `remark` varchar(255) DEFAULT NULL COMMENT '��ע',
  `created` datetime DEFAULT NULL COMMENT '����ʱ��',
  `updated` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`status`) USING BTREE,
  KEY `sort_order` (`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='���ݷ���';

-- ----------------------------
-- Records of tb_panel
-- ----------------------------
INSERT INTO `tb_panel` VALUES ('1', '������Ʒ', '2', '2', '0', '3', '1', '', '2018-04-18 23:49:13', '2018-04-15 19:05:16');
INSERT INTO `tb_panel` VALUES ('2', '�ٷ���ѡ', '3', '3', '0', '8', '1', '', null, '2018-04-19 11:20:59');
INSERT INTO `tb_panel` VALUES ('3', 'Ʒ�ƾ�ѡ', '3', '5', '0', '7', '1', '', '2018-04-18 23:49:19', '2018-04-17 18:54:15');
INSERT INTO `tb_panel` VALUES ('4', '��Ҫ����', '2', '3', '2', '2', '1', '', '2017-09-23 15:20:31', '2017-11-06 13:17:04');
INSERT INTO `tb_panel` VALUES ('6', 'Ϊ���Ƽ�', '2', '6', '1', '2', '1', '', '2017-11-06 13:17:41', '2017-11-06 13:17:41');
INSERT INTO `tb_panel` VALUES ('7', '�ֲ�ͼ', '0', '0', '0', '5', '1', '', '2018-04-15 12:33:07', '2018-04-15 12:33:07');
INSERT INTO `tb_panel` VALUES ('8', '����', '1', '1', '0', '4', '1', '', '2018-04-15 19:05:00', '2018-04-15 19:05:00');
INSERT INTO `tb_panel` VALUES ('9', '����2', '1', '7', '0', '4', '1', '', null, '2018-04-19 11:57:47');
INSERT INTO `tb_panel` VALUES ('10', 'Ʒ���ܱ�', '3', '4', '0', '7', '1', null, '2018-04-18 23:50:32', '2018-04-18 23:50:35');

-- ----------------------------
-- Table structure for tb_panel_content
-- ----------------------------
DROP TABLE IF EXISTS `tb_panel_content`;
CREATE TABLE `tb_panel_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `panel_id` int(11) NOT NULL COMMENT '�������id',
  `type` int(1) DEFAULT NULL COMMENT '���� 0������Ʒ 1��������',
  `product_id` bigint(20) DEFAULT NULL COMMENT '������Ʒid',
  `sort_order` int(4) DEFAULT NULL,
  `full_url` varchar(500) DEFAULT NULL COMMENT '��������',
  `pic_url` varchar(500) DEFAULT NULL,
  `pic_url2` varchar(500) DEFAULT NULL COMMENT '3d�ֲ�ͼ����',
  `pic_url3` varchar(500) DEFAULT NULL COMMENT '3d�ֲ�ͼ����',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`panel_id`),
  KEY `updated` (`updated`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_panel_content
-- ----------------------------
INSERT INTO `tb_panel_content` VALUES ('2', '3', '0', '150642571432851', '1', '', 'https://resource.smartisan.com/resource/7ac3af5a92ad791c2b38bfe1e38ee334.jpg', null, null, '2017-09-23 00:03:02', '2018-04-20 00:23:40');
INSERT INTO `tb_panel_content` VALUES ('7', '3', '0', '816448', '2', '', 'https://resource.smartisan.com/resource/41cb562a47d4831e199ed7e2057f3b61.jpg', null, null, '2017-09-23 22:58:11', '2018-04-20 00:14:29');
INSERT INTO `tb_panel_content` VALUES ('8', '2', '0', '150642571432837', '1', '', 'https://resource.smartisan.com/resource/3a7522290397a9444d7355298248f197.jpg', null, null, '2017-09-25 17:03:48', '2018-04-19 23:23:26');
INSERT INTO `tb_panel_content` VALUES ('9', '2', '0', '150642571432838', '2', '', 'https://resource.smartisan.com/resource/63ea40e5c64db1c6b1d480c48fe01272.jpg', null, null, '2017-09-25 17:04:35', '2018-04-20 10:48:17');
INSERT INTO `tb_panel_content` VALUES ('14', '2', '0', '150642571432839', '3', '', 'https://resource.smartisan.com/resource/5e4b1feddb13639550849f12f6b2e202.jpg', null, null, '2017-10-22 22:14:01', '2018-04-20 10:48:29');
INSERT INTO `tb_panel_content` VALUES ('15', '2', '0', '150642571432840', '4', '', 'https://resource.smartisan.com/resource/10525c4b21f039fc8ccb42cd1586f5cd.jpg', null, null, '2017-10-22 22:14:52', '2018-04-20 10:48:43');
INSERT INTO `tb_panel_content` VALUES ('16', '2', '0', '150642571432841', '5', '', 'https://resource.smartisan.com/resource/b899d9b82c4bc2710492a26af021d484.jpg', null, null, '2017-10-22 22:15:51', '2018-04-20 10:49:02');
INSERT INTO `tb_panel_content` VALUES ('17', '2', '0', '150642571432842', '6', '', 'https://resource.smartisan.com/resource/abb6986430536cd9365352b434f3c568.jpg', null, null, '2017-10-22 22:17:01', '2018-04-20 10:49:17');
INSERT INTO `tb_panel_content` VALUES ('18', '3', '0', '847276', '3', null, 'https://resource.smartisan.com/resource/99c548bfc9848a8c95f4e4f7f2bc1095.png', null, null, '2017-10-22 22:22:52', '2017-10-22 22:22:52');
INSERT INTO `tb_panel_content` VALUES ('19', '3', '0', '150642571432844', '4', '', 'https://resource.smartisan.com/resource/71432ad30288fb860a4389881069b874.png', null, null, '2017-10-22 22:23:35', '2018-04-20 11:25:38');
INSERT INTO `tb_panel_content` VALUES ('20', '3', '0', '847276', '5', '', 'https://resource.smartisan.com/resource/804b82e4c05516e822667a23ee311f7c.jpg', null, null, '2017-10-22 22:24:54', '2018-04-20 00:15:03');
INSERT INTO `tb_panel_content` VALUES ('21', '3', '0', '150642571432852', '6', '', 'https://resource.smartisan.com/resource/367d93db1d58f9f3505bc0ec18efaa44.jpg', null, null, '2017-10-22 22:25:28', '2018-04-20 00:24:11');
INSERT INTO `tb_panel_content` VALUES ('22', '1', '0', '150635087972564', '1', null, 'http://ow2h3ee9w.bkt.clouddn.com/FjvP4gBFeYGQoEtEX7dL3kbwJTDW', null, null, '2017-10-22 22:26:31', '2017-10-22 22:26:31');
INSERT INTO `tb_panel_content` VALUES ('23', '1', '0', '150642571432835', '2', '', 'http://ow2h3ee9w.bkt.clouddn.com/FgwHSk1Rnd-8FKqNJhFSSdcq2QVB', null, null, '2017-10-22 22:26:40', '2018-04-17 20:59:35');
INSERT INTO `tb_panel_content` VALUES ('25', '8', '0', '150642571432835', '1', 'https://www.smartisan.com/jianguo3-accessories', 'https://resource.smartisan.com/resource/6/610400xinpinpeijian.jpg', null, null, '2018-04-15 19:07:43', '2018-04-19 23:20:34');
INSERT INTO `tb_panel_content` VALUES ('26', '8', '0', '150635087972564', '2', 'https://www.smartisan.com/service/#/tradein', 'https://resource.smartisan.com/resource/6/610400yijiuhuanxin.jpg', null, null, '2018-04-15 19:08:00', '2018-04-19 23:20:48');
INSERT INTO `tb_panel_content` VALUES ('27', '8', '0', '150642571432835', '3', 'https://www.smartisan.com/category?id=69', 'https://resource.smartisan.com/resource/4/489673079577637073.png', null, null, '2018-04-15 19:08:24', '2018-04-19 23:21:01');
INSERT INTO `tb_panel_content` VALUES ('28', '8', '0', '150635087972564', '4', 'https://www.smartisan.com/', 'https://resource.smartisan.com/resource/fe6ab43348a43152b4001b4454d206ac.jpg', null, null, '2018-04-15 19:08:58', '2018-04-19 23:21:13');
INSERT INTO `tb_panel_content` VALUES ('29', '2', '2', '150642571432843', '0', '', 'https://resource.smartisan.com/resource/1/1220858shoujilouceng.jpg', null, null, '2018-04-15 20:14:35', '2018-04-20 11:41:27');
INSERT INTO `tb_panel_content` VALUES ('30', '3', '2', '150642571432850', '0', '', 'https://resource.smartisan.com/resource/a/acillouceng1220856.jpg', null, null, '2018-04-15 20:15:18', '2018-04-20 11:18:03');
INSERT INTO `tb_panel_content` VALUES ('32', '7', '0', '150635087972564', '1', '', 'http://static.smartisanos.cn/index/img/store/home/banner-3d-item-1-box-1_61bdc2f4f9.png', 'http://static.smartisanos.cn/index/img/store/home/banner-3d-item-1-box-3_8fa7866d59.png', 'http://ow2h3ee9w.bkt.clouddn.com/banner-3d-item-1-box-33.png', '2018-04-17 20:41:02', '2018-04-17 20:58:41');
INSERT INTO `tb_panel_content` VALUES ('33', '7', '0', '150642571432835', '2', '', 'http://oweupqzdv.bkt.clouddn.com/bg_left.png', 'http://ow2h3ee9w.bkt.clouddn.com/phone_left2.png', 'http://oweupqzdv.bkt.clouddn.com/erji_left.png', '2018-04-17 21:08:22', '2018-04-20 10:47:19');
INSERT INTO `tb_panel_content` VALUES ('34', '7', '0', '150635087972564', '3', null, 'https://s1.ax1x.com/2018/05/19/Ccdiid.png', '', '', '2018-04-17 21:08:30', '2018-04-17 21:08:32');
INSERT INTO `tb_panel_content` VALUES ('35', '7', '0', '150642571432843', '4', '', 'http://ow2h3ee9w.bkt.clouddn.com/24401108web1.png', null, null, '2018-04-18 23:44:48', '2018-04-20 11:41:46');
INSERT INTO `tb_panel_content` VALUES ('36', '9', '0', '150635087972564', '1', 'https://www.smartisan.com/pr/#/video/conference-jianguopro2', 'https://resource.smartisan.com/resource/88684d7ed5eee77e34f044fa32a9121b.png', null, null, '2018-04-18 23:51:45', '2018-04-20 12:03:05');
INSERT INTO `tb_panel_content` VALUES ('37', '9', '0', '150642571432835', '2', 'https://www.smartisan.com/os/#/4-x', 'https://resource.smartisan.com/resource/6/610400dibu.jpg', null, null, '2018-04-18 23:51:51', '2018-04-20 12:03:19');
INSERT INTO `tb_panel_content` VALUES ('38', '9', '0', '150635087972564', '3', 'https://www.smartisan.com/pr/#/video/changhuxi-jinghuaqi', 'https://resource.smartisan.com/resource/c245ada282824a4a15e68bec80502ad4.jpg', null, null, '2018-04-18 23:51:58', '2018-04-20 12:03:31');
INSERT INTO `tb_panel_content` VALUES ('39', '9', '0', '150642571432835', '4', 'https://www.smartisan.com/pr/#/video/onestep-introduction', 'https://resource.smartisan.com/resource/m/minibanner_03.jpg', null, null, '2018-04-18 23:52:02', '2018-04-20 12:03:41');
INSERT INTO `tb_panel_content` VALUES ('40', '10', '3', null, '0', 'http://xmall.exrick.cn/#/goods?cid=1184', 'https://resource.smartisan.com/resource/z/zhoubianshangpin1220858web.jpg', null, null, '2018-04-19 00:02:53', '2018-04-20 11:15:59');
INSERT INTO `tb_panel_content` VALUES ('41', '10', '0', '150642571432845', '1', '', 'https://resource.smartisan.com/resource/2f9a0f5f3dedf0ed813622003f1b287b.jpg', null, null, '2018-04-19 00:02:56', '2018-04-20 00:24:36');
INSERT INTO `tb_panel_content` VALUES ('42', '10', '0', '150642571432836', '2', '', 'https://resource.smartisan.com/resource/2b05dbca9f5a4d0c1270123f42fb834c.jpg', null, null, '2018-04-19 00:03:00', '2018-04-20 00:25:01');
INSERT INTO `tb_panel_content` VALUES ('43', '10', '0', '150642571432846', '3', '', 'https://resource.smartisan.com/resource/804edf579887b3e1fae4e20a379be5b5.png', null, null, '2018-04-19 00:03:04', '2018-04-20 00:25:17');
INSERT INTO `tb_panel_content` VALUES ('44', '10', '0', '150642571432848', '4', '', 'https://resource.smartisan.com/resource/a1c53b5f12dd7ef790cadec0eaeaf466.jpg', null, null, '2018-04-19 00:03:10', '2018-04-20 10:55:52');
INSERT INTO `tb_panel_content` VALUES ('45', '10', '0', '150642571432847', '5', '', 'https://resource.smartisan.com/resource/daa975651d6d700c0f886718c520ee19.jpg', null, null, '2018-04-19 00:03:15', '2018-04-20 10:54:56');
INSERT INTO `tb_panel_content` VALUES ('46', '10', '0', '150642571432849', '6', '', 'https://resource.smartisan.com/resource/3973d009d182d8023bea6250b9a3959e.jpg', null, null, '2018-04-19 00:03:20', '2018-04-20 10:55:03');
INSERT INTO `tb_panel_content` VALUES ('47', '6', '0', '150635087972564', '1', '', 'http://ow2h3ee9w.bkt.clouddn.com/FjvP4gBFeYGQoEtEX7dL3kbwJTDW', null, null, '2018-04-19 11:15:35', '2018-04-19 11:15:35');
INSERT INTO `tb_panel_content` VALUES ('48', '6', '0', '150642571432835', '2', null, 'http://ow2h3ee9w.bkt.clouddn.com/FgwHSk1Rnd-8FKqNJhFSSdcq2QVB', null, null, '2018-04-19 11:18:16', '2018-04-19 11:18:18');
INSERT INTO `tb_panel_content` VALUES ('49', '4', '0', '150635087972564', '1', null, 'http://ow2h3ee9w.bkt.clouddn.com/FjvP4gBFeYGQoEtEX7dL3kbwJTDW', null, null, '2018-04-19 11:20:15', '2018-04-19 11:20:17');
INSERT INTO `tb_panel_content` VALUES ('50', '4', '0', '150642571432835', '2', null, 'http://ow2h3ee9w.bkt.clouddn.com/FgwHSk1Rnd-8FKqNJhFSSdcq2QVB', null, null, '2018-04-19 11:20:19', '2018-04-19 11:20:21');
INSERT INTO `tb_panel_content` VALUES ('51', '7', '0', '150635087972564', '5', '', 'http://ow2h3ee9w.bkt.clouddn.com/417pcchunrihaolishouji.png', null, null, '2018-04-19 15:09:40', '2018-04-19 21:16:04');
INSERT INTO `tb_panel_content` VALUES ('55', '0', '1', null, '1', 'http://xmall.exrick.cn/#/goods?cid=1184', 'Ʒ���ܱ�', null, null, '2018-07-27 20:48:21', '2018-07-27 22:32:51');
INSERT INTO `tb_panel_content` VALUES ('58', '0', '1', null, '2', 'http://xmall.exrick.cn/#/thanks', '��������', null, null, '2018-07-27 20:50:07', '2018-07-27 22:25:18');
INSERT INTO `tb_panel_content` VALUES ('59', '0', '0', null, '3', 'http://xmadmin.exrick.cn', '��̨����ϵͳ', null, null, '2018-07-27 22:25:44', '2018-07-27 22:26:54');
INSERT INTO `tb_panel_content` VALUES ('60', '0', '0', null, '4', 'http://xpay.exrick.cn', 'XPay֧��ϵͳ', null, null, '2018-07-27 22:26:03', '2018-07-27 22:26:50');
INSERT INTO `tb_panel_content` VALUES ('61', '0', '0', null, '5', 'https://github.com/Exrick/x-boot', 'XBoot���', null, null, '2018-07-27 22:26:21', '2018-07-27 22:26:47');
INSERT INTO `tb_panel_content` VALUES ('62', '0', '0', null, '6', 'https://www.bilibili.com/video/av23121122/', '������Ƶ', null, null, '2018-07-27 22:26:44', '2018-07-27 22:26:44');
INSERT INTO `tb_panel_content` VALUES ('63', '0', '0', null, '7', 'https://github.com/Exrick/xmall', 'Github', null, null, '2018-07-27 22:27:22', '2018-07-27 22:27:26');

-- ----------------------------
-- Table structure for tb_permission
-- ----------------------------
DROP TABLE IF EXISTS `tb_permission`;
CREATE TABLE `tb_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_permission
-- ----------------------------
INSERT INTO `tb_permission` VALUES ('17', '�����Ŀ����', '/content/add');
INSERT INTO `tb_permission` VALUES ('18', 'ɾ����Ŀ����', '/content/del/*');
INSERT INTO `tb_permission` VALUES ('19', '�༭��Ŀ����', '/content/update');
INSERT INTO `tb_permission` VALUES ('20', 'webuploadͼƬ�ϴ�', '/image/imageUpload');
INSERT INTO `tb_permission` VALUES ('21', 'kindeditorͼƬ�ϴ�', '/kindeditor/imageUpload');
INSERT INTO `tb_permission` VALUES ('23', '��Ʒ����༭', '/item/cat/update');
INSERT INTO `tb_permission` VALUES ('24', '��Ʒ�������', '/item/cat/add');
INSERT INTO `tb_permission` VALUES ('25', '��Ʒ����ɾ��', '/item/cat/del/*');
INSERT INTO `tb_permission` VALUES ('27', '��Ʒ���', '/item/add');
INSERT INTO `tb_permission` VALUES ('28', '��Ʒɾ��', '/item/del/*');
INSERT INTO `tb_permission` VALUES ('29', '������Ʒ', '/item/start/*');
INSERT INTO `tb_permission` VALUES ('30', 'ͣ����Ʒ', '/item/stop/*');
INSERT INTO `tb_permission` VALUES ('31', '�༭��Ʒ', '/item/update/*');
INSERT INTO `tb_permission` VALUES ('33', '��Ա���', '/member/add');
INSERT INTO `tb_permission` VALUES ('34', '�޸Ļ�Ա����', '/member/changePass/*');
INSERT INTO `tb_permission` VALUES ('35', '��Աɾ��', '/member/del/*');
INSERT INTO `tb_permission` VALUES ('36', '��Ա�Ƴ�', '/member/remove/*');
INSERT INTO `tb_permission` VALUES ('37', '��Ա����', '/member/start/*');
INSERT INTO `tb_permission` VALUES ('38', '��Աͣ��', '/member/stop/*');
INSERT INTO `tb_permission` VALUES ('39', '��Ա�༭', '/member/update/*');
INSERT INTO `tb_permission` VALUES ('40', 'Ȩ�����', '/user/addPermission');
INSERT INTO `tb_permission` VALUES ('41', '��ɫ���', '/user/addRole');
INSERT INTO `tb_permission` VALUES ('42', '�û����', '/user/addUser');
INSERT INTO `tb_permission` VALUES ('43', '�޸��û�����', '/user/changePass');
INSERT INTO `tb_permission` VALUES ('44', 'ɾ��Ȩ��', '/user/delPermission/*');
INSERT INTO `tb_permission` VALUES ('45', 'ɾ����ɫ', '/user/delRole/*');
INSERT INTO `tb_permission` VALUES ('46', 'ɾ���û�', '/user/delUser/*');
INSERT INTO `tb_permission` VALUES ('47', '�û�����', '/user/start/*');
INSERT INTO `tb_permission` VALUES ('48', '�û�ͣ��', '/user/stop/*');
INSERT INTO `tb_permission` VALUES ('49', '�༭Ȩ��', '/user/updatePermission');
INSERT INTO `tb_permission` VALUES ('50', '�༭��ɫ', '/user/updateRole');
INSERT INTO `tb_permission` VALUES ('51', '�༭�û�', '/user/updateUser');
INSERT INTO `tb_permission` VALUES ('52', '�༭ϵͳ��������', '/sys/base/update');
INSERT INTO `tb_permission` VALUES ('53', 'ɾ��ϵͳ��־', '/sys/log/del/*');
INSERT INTO `tb_permission` VALUES ('54', '���shiro����', '/sys/shiro/add');
INSERT INTO `tb_permission` VALUES ('55', 'ɾ��shiro����', '/sys/shiro/del/*');
INSERT INTO `tb_permission` VALUES ('56', '�༭shiro����', '/sys/shiro/update');
INSERT INTO `tb_permission` VALUES ('57', 'ɾ������', '/order/del/*');
INSERT INTO `tb_permission` VALUES ('58', '��Ӿ���', '/thanks/add');
INSERT INTO `tb_permission` VALUES ('59', 'ɾ������', '/thanks/del/*');
INSERT INTO `tb_permission` VALUES ('60', '�༭����', '/thanks/update');
INSERT INTO `tb_permission` VALUES ('61', '��Ӱ��', '/panel/add');
INSERT INTO `tb_permission` VALUES ('62', 'ɾ�����', '/panel/del/*');
INSERT INTO `tb_permission` VALUES ('63', '���°��', '/panel/update');
INSERT INTO `tb_permission` VALUES ('64', '������ҳ����', '/redis/index/update');
INSERT INTO `tb_permission` VALUES ('65', '�����Ƽ���黺��', '/redis/recommend/update');
INSERT INTO `tb_permission` VALUES ('66', '���¾�����黺��', '/redis/thank/update');
INSERT INTO `tb_permission` VALUES ('67', 'ͬ������', '/item/importIndex');
INSERT INTO `tb_permission` VALUES ('69', '������ע', '/order/remark');
INSERT INTO `tb_permission` VALUES ('70', '��������', '/order/deliver');
INSERT INTO `tb_permission` VALUES ('71', 'ȡ������', '/order/cancel/*');
INSERT INTO `tb_permission` VALUES ('72', '������', '/express/add');
INSERT INTO `tb_permission` VALUES ('73', '��ݱ༭', '/express/update');
INSERT INTO `tb_permission` VALUES ('74', '���ɾ��', '/express/del/*');
INSERT INTO `tb_permission` VALUES ('75', '�ʵ����', '/dict/add');
INSERT INTO `tb_permission` VALUES ('76', '�ʵ�༭', '/dict/update');
INSERT INTO `tb_permission` VALUES ('77', '�ʵ�ɾ��', '/dict/del/*');
INSERT INTO `tb_permission` VALUES ('78', '��������ҳ��', '/thanks-list');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('0', '�ο�', 'ֻ�Ǹ�����');
INSERT INTO `tb_role` VALUES ('1', '��������Ա', 'ӵ���������ϵ�Ȩ��');

-- ----------------------------
-- Table structure for tb_role_perm
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_perm`;
CREATE TABLE `tb_role_perm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role_perm
-- ----------------------------
INSERT INTO `tb_role_perm` VALUES ('246', '1', '17');
INSERT INTO `tb_role_perm` VALUES ('247', '1', '18');
INSERT INTO `tb_role_perm` VALUES ('248', '1', '19');
INSERT INTO `tb_role_perm` VALUES ('249', '1', '20');
INSERT INTO `tb_role_perm` VALUES ('250', '1', '21');
INSERT INTO `tb_role_perm` VALUES ('251', '1', '23');
INSERT INTO `tb_role_perm` VALUES ('252', '1', '24');
INSERT INTO `tb_role_perm` VALUES ('253', '1', '25');
INSERT INTO `tb_role_perm` VALUES ('254', '1', '27');
INSERT INTO `tb_role_perm` VALUES ('255', '1', '28');
INSERT INTO `tb_role_perm` VALUES ('256', '1', '29');
INSERT INTO `tb_role_perm` VALUES ('257', '1', '30');
INSERT INTO `tb_role_perm` VALUES ('258', '1', '31');
INSERT INTO `tb_role_perm` VALUES ('259', '1', '33');
INSERT INTO `tb_role_perm` VALUES ('260', '1', '34');
INSERT INTO `tb_role_perm` VALUES ('261', '1', '35');
INSERT INTO `tb_role_perm` VALUES ('262', '1', '36');
INSERT INTO `tb_role_perm` VALUES ('263', '1', '37');
INSERT INTO `tb_role_perm` VALUES ('264', '1', '38');
INSERT INTO `tb_role_perm` VALUES ('265', '1', '39');
INSERT INTO `tb_role_perm` VALUES ('266', '1', '40');
INSERT INTO `tb_role_perm` VALUES ('267', '1', '41');
INSERT INTO `tb_role_perm` VALUES ('268', '1', '42');
INSERT INTO `tb_role_perm` VALUES ('269', '1', '43');
INSERT INTO `tb_role_perm` VALUES ('270', '1', '44');
INSERT INTO `tb_role_perm` VALUES ('271', '1', '45');
INSERT INTO `tb_role_perm` VALUES ('272', '1', '46');
INSERT INTO `tb_role_perm` VALUES ('273', '1', '47');
INSERT INTO `tb_role_perm` VALUES ('274', '1', '48');
INSERT INTO `tb_role_perm` VALUES ('275', '1', '49');
INSERT INTO `tb_role_perm` VALUES ('276', '1', '50');
INSERT INTO `tb_role_perm` VALUES ('277', '1', '51');
INSERT INTO `tb_role_perm` VALUES ('278', '1', '52');
INSERT INTO `tb_role_perm` VALUES ('279', '1', '53');
INSERT INTO `tb_role_perm` VALUES ('280', '1', '54');
INSERT INTO `tb_role_perm` VALUES ('281', '1', '55');
INSERT INTO `tb_role_perm` VALUES ('282', '1', '56');
INSERT INTO `tb_role_perm` VALUES ('283', '1', '57');
INSERT INTO `tb_role_perm` VALUES ('284', '1', '58');
INSERT INTO `tb_role_perm` VALUES ('285', '1', '59');
INSERT INTO `tb_role_perm` VALUES ('286', '1', '60');
INSERT INTO `tb_role_perm` VALUES ('287', '1', '61');
INSERT INTO `tb_role_perm` VALUES ('288', '1', '62');
INSERT INTO `tb_role_perm` VALUES ('289', '1', '63');
INSERT INTO `tb_role_perm` VALUES ('290', '1', '64');
INSERT INTO `tb_role_perm` VALUES ('291', '1', '65');
INSERT INTO `tb_role_perm` VALUES ('292', '1', '66');
INSERT INTO `tb_role_perm` VALUES ('293', '1', '67');
INSERT INTO `tb_role_perm` VALUES ('294', '1', '69');
INSERT INTO `tb_role_perm` VALUES ('295', '1', '70');
INSERT INTO `tb_role_perm` VALUES ('296', '1', '71');
INSERT INTO `tb_role_perm` VALUES ('297', '1', '72');
INSERT INTO `tb_role_perm` VALUES ('298', '1', '73');
INSERT INTO `tb_role_perm` VALUES ('299', '1', '74');
INSERT INTO `tb_role_perm` VALUES ('300', '1', '75');
INSERT INTO `tb_role_perm` VALUES ('301', '1', '76');
INSERT INTO `tb_role_perm` VALUES ('302', '1', '77');
INSERT INTO `tb_role_perm` VALUES ('303', '1', '78');

-- ----------------------------
-- Table structure for tb_shiro_filter
-- ----------------------------
DROP TABLE IF EXISTS `tb_shiro_filter`;
CREATE TABLE `tb_shiro_filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `perms` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_shiro_filter
-- ----------------------------
INSERT INTO `tb_shiro_filter` VALUES ('1', '/login', 'anon', '1');
INSERT INTO `tb_shiro_filter` VALUES ('2', '/403', 'anon', '2');
INSERT INTO `tb_shiro_filter` VALUES ('3', '/', 'authc', '3');
INSERT INTO `tb_shiro_filter` VALUES ('7', '/index', 'authc', '4');
INSERT INTO `tb_shiro_filter` VALUES ('8', '/welcome', 'authc', '5');
INSERT INTO `tb_shiro_filter` VALUES ('9', '/thanks-pic', 'authc', '6');
INSERT INTO `tb_shiro_filter` VALUES ('10', '/lock-screen', 'authc', '7');
INSERT INTO `tb_shiro_filter` VALUES ('11', '/user/logout', 'authc', '8');
INSERT INTO `tb_shiro_filter` VALUES ('12', '/user/userInfo', 'authc', '9');
INSERT INTO `tb_shiro_filter` VALUES ('17', '/content/cat/add', 'perms[/content/cat/add]', '10');
INSERT INTO `tb_shiro_filter` VALUES ('18', '/content/cat/del/*', 'perms[/content/cat/del/*]', '11');
INSERT INTO `tb_shiro_filter` VALUES ('19', '/content/cat/update', 'perms[/content/cat/update]', '12');
INSERT INTO `tb_shiro_filter` VALUES ('21', '/content/add', 'perms[/content/add]', '13');
INSERT INTO `tb_shiro_filter` VALUES ('22', '/content/del/*', 'perms[/content/del/*]', '14');
INSERT INTO `tb_shiro_filter` VALUES ('23', '/content/update', 'perms[/content/update]', '15');
INSERT INTO `tb_shiro_filter` VALUES ('24', '/image/imageUpload', 'perms[/image/imageUpload]', '16');
INSERT INTO `tb_shiro_filter` VALUES ('25', '/image/update', 'perms[/image/update]', '18');
INSERT INTO `tb_shiro_filter` VALUES ('26', '/kindeditor/imageUpload', 'perms[/kindeditor/imageUpload]', '17');
INSERT INTO `tb_shiro_filter` VALUES ('27', '/item/cat/add', 'perms[/item/cat/add]', '19');
INSERT INTO `tb_shiro_filter` VALUES ('28', '/item/cat/del/*', 'perms[/item/cat/del/*]', '20');
INSERT INTO `tb_shiro_filter` VALUES ('29', '/item/cat/update', 'perms[/item/cat/update]', '21');
INSERT INTO `tb_shiro_filter` VALUES ('30', '/item/add', 'perms[/item/add]', '22');
INSERT INTO `tb_shiro_filter` VALUES ('31', '/item/del/*', 'perms[/item/del/*]', '23');
INSERT INTO `tb_shiro_filter` VALUES ('32', '/item/start/*', 'perms[/item/start/*]', '24');
INSERT INTO `tb_shiro_filter` VALUES ('33', '/item/stop/*', 'perms[/item/stop/*]', '25');
INSERT INTO `tb_shiro_filter` VALUES ('34', '/item/update/*', 'perms[/item/update/*]', '26');
INSERT INTO `tb_shiro_filter` VALUES ('36', '/member/add', 'perms[/member/add]', '28');
INSERT INTO `tb_shiro_filter` VALUES ('37', '/member/changePass/*', 'perms[/member/changePass/*]', '29');
INSERT INTO `tb_shiro_filter` VALUES ('38', '/member/del/*', 'perms[/member/del/*]', '30');
INSERT INTO `tb_shiro_filter` VALUES ('39', '/member/remove/*', 'perms[/member/remove/*]', '31');
INSERT INTO `tb_shiro_filter` VALUES ('40', '/member/start/*', 'perms[/member/start/*]', '32');
INSERT INTO `tb_shiro_filter` VALUES ('41', '/member/stop/*', 'perms[/member/stop/*]', '33');
INSERT INTO `tb_shiro_filter` VALUES ('42', '/member/update/*', 'perms[/member/update/*]', '34');
INSERT INTO `tb_shiro_filter` VALUES ('43', '/user/addPermission', 'perms[/user/addPermission]', '35');
INSERT INTO `tb_shiro_filter` VALUES ('44', '/user/addRole', 'perms[/user/addRole]', '36');
INSERT INTO `tb_shiro_filter` VALUES ('45', '/user/addUser', 'perms[/user/addUser]', '37');
INSERT INTO `tb_shiro_filter` VALUES ('46', '/user/changePass', 'perms[/user/changePass]', '38');
INSERT INTO `tb_shiro_filter` VALUES ('47', '/user/delPermission/*', 'perms[/user/delPermission/*]', '39');
INSERT INTO `tb_shiro_filter` VALUES ('48', '/user/delRole/*', 'perms[/user/delRole/*]', '40');
INSERT INTO `tb_shiro_filter` VALUES ('49', '/user/delUser/*', 'perms[/user/delUser/*]', '41');
INSERT INTO `tb_shiro_filter` VALUES ('50', '/user/start/*', 'perms[/user/start/*]', '42');
INSERT INTO `tb_shiro_filter` VALUES ('51', '/user/stop/*', 'perms[/user/stop/*]', '43');
INSERT INTO `tb_shiro_filter` VALUES ('52', '/user/updatePermission', 'perms[/user/updatePermission]', '44');
INSERT INTO `tb_shiro_filter` VALUES ('53', '/user/updateRole', 'perms[/user/updateRole]', '45');
INSERT INTO `tb_shiro_filter` VALUES ('54', '/user/updateUser', 'perms[/user/updateUser]', '46');
INSERT INTO `tb_shiro_filter` VALUES ('55', '/sys/base/update', 'perms[/sys/base/update]', '47');
INSERT INTO `tb_shiro_filter` VALUES ('56', '/sys/log/del/*', 'perms[/sys/log/del/*]', '48');
INSERT INTO `tb_shiro_filter` VALUES ('57', '/sys/shiro/add', 'perms[/sys/shiro/add]', '49');
INSERT INTO `tb_shiro_filter` VALUES ('58', '/sys/shiro/del/*', 'perms[/sys/shiro/del/*]', '50');
INSERT INTO `tb_shiro_filter` VALUES ('59', '/sys/shiro/update', 'perms[/sys/shiro/update]', '51');
INSERT INTO `tb_shiro_filter` VALUES ('60', '/order/del/*', 'perms[/order/del/*]', '52');
INSERT INTO `tb_shiro_filter` VALUES ('61', '/thanks/add', 'perms[/thanks/add]', '53');
INSERT INTO `tb_shiro_filter` VALUES ('62', '/thanks/del/*', 'perms[/thanks/del/*]', '54');
INSERT INTO `tb_shiro_filter` VALUES ('63', '/thanks/update', 'perms[/thanks/update]', '55');
INSERT INTO `tb_shiro_filter` VALUES ('66', '/*', 'authc', '9');
INSERT INTO `tb_shiro_filter` VALUES ('67', '/geetestInit', 'anon', '3');
INSERT INTO `tb_shiro_filter` VALUES ('68', '/pay-edit', 'anon', '3');
INSERT INTO `tb_shiro_filter` VALUES ('69', '/panel/add', 'perms[/panel/add]', '56');
INSERT INTO `tb_shiro_filter` VALUES ('70', '/panel/del/*', 'perms[/panel/del/*]', '57');
INSERT INTO `tb_shiro_filter` VALUES ('71', '/panel/update', 'perms[/panel/update]', '58');
INSERT INTO `tb_shiro_filter` VALUES ('72', '/redis/index/update', 'perms[/redis/index/update]', '59');
INSERT INTO `tb_shiro_filter` VALUES ('73', '/redis/recommend/update', 'perms[/redis/recommend/update]', '60');
INSERT INTO `tb_shiro_filter` VALUES ('74', '/redis/thank/update', 'perms[/redis/thank/update]', '61');
INSERT INTO `tb_shiro_filter` VALUES ('75', '/item/importIndex', 'perms[/item/importIndex]', '62');
INSERT INTO `tb_shiro_filter` VALUES ('76', '/order/remark', 'perms[/order/remark]', '63');
INSERT INTO `tb_shiro_filter` VALUES ('77', '/order/deliver', 'perms[/order/deliver]', '64');
INSERT INTO `tb_shiro_filter` VALUES ('78', '/order/cancel/*', 'perms[/order/cancel/*]', '65');
INSERT INTO `tb_shiro_filter` VALUES ('79', '/express/add', 'perms[/express/add]', '66');
INSERT INTO `tb_shiro_filter` VALUES ('80', '/express/update', 'perms[/express/update]', '67');
INSERT INTO `tb_shiro_filter` VALUES ('81', '/express/del/*', 'perms[/express/del/*]', '68');
INSERT INTO `tb_shiro_filter` VALUES ('82', '/dict/add', 'perms[/dict/add]', '69');
INSERT INTO `tb_shiro_filter` VALUES ('83', '/dict/update', 'perms[/dict/update]', '70');
INSERT INTO `tb_shiro_filter` VALUES ('84', '/dict/del/*', 'perms[/dict/del/*]', '71');
INSERT INTO `tb_shiro_filter` VALUES ('85', '/thanks-list', 'perms[/thanks-list]', '72');

-- ----------------------------
-- Table structure for tb_thanks
-- ----------------------------
DROP TABLE IF EXISTS `tb_thanks`;
CREATE TABLE `tb_thanks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL COMMENT '֪ͨ����',
  `state` int(11) DEFAULT '0' COMMENT '״̬ 0����� 1ȷ����ʾ  2���� 3ͨ����չʾ',
  `pay_type` varchar(255) DEFAULT NULL COMMENT '֧����ʽ',
  `order_id` varchar(255) DEFAULT NULL COMMENT '��������id',
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_thanks
-- ----------------------------
INSERT INTO `tb_thanks` VALUES ('6', 'С����', '18782059038@163.com', '1.00', '��', null, '1', 'Alipay', null, '2018-03-30 19:03:07');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '�û���',
  `password` varchar(32) NOT NULL COMMENT '���� md5���ܴ洢',
  `phone` varchar(20) DEFAULT NULL COMMENT 'ע���ֻ���',
  `email` varchar(50) DEFAULT NULL COMMENT 'ע������',
  `sex` varchar(2) DEFAULT '',
  `address` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT '0',
  `file` varchar(255) DEFAULT NULL COMMENT 'ͷ��',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `phone` (`phone`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='�û���';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '17621230884', '1012139570@qq.com', '��', null, '1', '��������Ա', '1', 'http://ow2h3ee9w.bkt.clouddn.com/1507866340369.png', '2017-09-05 21:27:54', '2017-10-18 22:57:08');
INSERT INTO `tb_user` VALUES ('2', 'test', '098f6bcd4621d373cade4e832627b4f6', '12345678901', '123@qq.com', 'Ů', null, '1', '�ο�', '0', null, '2017-09-05 21:27:54', '2018-04-18 14:35:19');

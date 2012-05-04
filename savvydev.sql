/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 50509
 Source Host           : localhost
 Source Database       : savvydev

 Target Server Type    : MySQL
 Target Server Version : 50509
 File Encoding         : utf-8

 Date: 05/03/2012 09:46:02 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Contact`
-- ----------------------------
DROP TABLE IF EXISTS `Contact`;
CREATE TABLE `Contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `message` longtext NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_83DFDFA4A9F87BD` (`title_id`),
  CONSTRAINT `FK_83DFDFA4A9F87BD` FOREIGN KEY (`title_id`) REFERENCES `Title` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Contact`
-- ----------------------------
BEGIN;
INSERT INTO `Contact` VALUES ('1', '1', 'Test McTester', 'test@mctester.com', null, null, 'Example message from a user making an enquiry from the contact form', '2012-04-02 14:33:10', '2012-04-02 14:33:10');
COMMIT;

-- ----------------------------
--  Table structure for `Image`
-- ----------------------------
DROP TABLE IF EXISTS `Image`;
CREATE TABLE `Image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `portfolio_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4FC2B5BB96B5643` (`portfolio_id`),
  CONSTRAINT `FK_4FC2B5BB96B5643` FOREIGN KEY (`portfolio_id`) REFERENCES `Portfolio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Image`
-- ----------------------------
BEGIN;
INSERT INTO `Image` VALUES ('8', '3', 'Dunas Brochure 1', 'a-dunas-3.jpg'), ('9', '3', 'Dunas Brochure 2', 'b-dunas-1.jpg'), ('10', '3', 'Dunas Brochure 1', 'c-dunas-2.jpg'), ('11', '8', 'Llana Brochure', 'a-llana-3.jpg'), ('12', '8', 'Llana Brochure', 'b-llana-1.jpg'), ('13', '8', 'Llana Brochure', 'c-llana-2.jpg'), ('14', '7', 'March Fourth Campaign', 'a-march-fourth.jpg'), ('15', '7', 'March Fourth Campaign', 'b-march-fourth.jpg'), ('16', '7', 'March Fourth Campaign', 'c-march-fourth.jpg'), ('17', '6', 'Vacation Club Brochure', 'a-vacation-club-3.jpg'), ('18', '6', 'Vacation Club Brochure', 'b-vacation-club-1.jpg'), ('19', '6', 'Vacation Club Brochure', 'c-vacation-club-2.jpg'), ('20', '2', 'Happy Egg Game', 'a-egg-game-1.jpg'), ('21', '2', 'Happy Egg Game', 'b-egg-game-2.jpg'), ('22', '2', 'Happy Egg Game', 'c-egg-game.jpg'), ('23', '5', 'The Grill Menu Spread', 'a-grill-menu.jpg'), ('24', '5', 'The Grill Menu Spread', 'b-grill-menu.jpg'), ('25', '5', 'The Grill Menu Spread', 'c-grill-menu.jpg'), ('26', '4', 'The Construction Hub Website', 'a-hub.jpg'), ('27', '4', 'The Lifestyle Hub Website', 'b-hub-lifestyle.jpg'), ('28', '7', 'March Fourth Website', 'd-march-website.jpg'), ('29', '6', 'Vacation Club Website', 'vacation-club-website-1.jpg'), ('30', '6', 'Vacation Club Website', 'vacation-club-website-2.jpg'), ('31', '5', 'The Grill Menu Spread', 'd-grill-menu.jpg'), ('32', '5', 'The Grill Menu Spread', 'e-grill-menu.jpg'), ('33', '1', 'The Resort Group Exhibition', 'trg1.jpg'), ('34', '1', 'The Resort Group Exhibition', 'trg2.jpg'), ('35', '1', 'The Resort Group Exhibition', 'trg3.jpg'), ('36', '1', 'The Resort Group Exhibition', 'trg4.jpg'), ('37', '1', 'The Resort Group Exhibition', 'trg5.jpg'), ('38', '1', 'The Resort Group Exhibition', 'trg6.jpg'), ('39', '5', 'The Grill logo', 'grill-logo.jpg'), ('40', '5', 'The Grill Signage', 'the-grill-signage-1.jpg'), ('41', '5', 'The Grill Signage', 'the-grill-signage-2.jpg'), ('42', '2', 'The Happy Egg Restaurant', 'he-rest-1.jpg'), ('43', '2', 'The Happy Egg Restaurant', 'he-rest-2.jpg'), ('44', '2', 'The Happy Egg Restaurant', 'he-rest-3.jpg'), ('45', '2', 'The Happy Egg Restaurant', 'he-rest-4.jpg'), ('46', '2', 'The Happy Egg Restaurant', 'he-rest-5.jpg');
COMMIT;

-- ----------------------------
--  Table structure for `Portfolio`
-- ----------------------------
DROP TABLE IF EXISTS `Portfolio`;
CREATE TABLE `Portfolio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Portfolio`
-- ----------------------------
BEGIN;
INSERT INTO `Portfolio` VALUES ('1', 'the resort group', 'the-resort-group', '<h3>The Client</h3>\r\n<p>The Resort Group is an international property development company that builds world-class resorts for private investment. The Resort Group specialise in selecting prime development land in emerging markets and offering investors the best possible opportunities for capital appreciation and rental income.</p>\r\n\r\n<h3>The Challenge</h3>\r\n<p>The Resort Group asked us to produce two prestigious, full colour brochures to launch their two new premium beach and spa resorts on the island of Sal in Cape Verde – one of the world’s most popular property hotspots.</p>\r\n\r\n<h3>The Solution</h3>\r\n<p>We were lucky enough to go out to Cape Verde, and this helped us to create brochures that captured the essence of these truly luxurious new developments. So much so, that you can almost feel the soft sand between your toes, the sea breeze on your face and taste the refreshing chilled mojito as you turn the pages. Indeed, one of our other clients described the brochures as ‘exquisite’.</p>\r\n \r\n<h3>Other projects completed:</h3>\r\n<ul class=\"other-client-projects\">\r\n<li><span>Company website</span></li>\r\n<li><span>Exhibition stands</span></li>\r\n<li><span>Brand identity</span></li>\r\n<li><span>Advertising</span></li>\r\n<li><span>Newsletter and email campaigns</span></li>\r\n</ul>'), ('2', 'the happy egg co', 'the-happy-egg-co', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'), ('3', 'dunas beach resort & spa', 'dunas-beach-resort-and-spa', ''), ('4', 'the construction hub', 'the-construction-hub', ''), ('5', 'the grill at twenty five', 'the-grill-at-twenty-five', ''), ('6', 'vacation club', 'vacation-club', ''), ('7', 'march fourth', 'march-fourth', ''), ('8', 'llana beach hotel', 'llana-beach-hotel', '');
COMMIT;

-- ----------------------------
--  Table structure for `Title`
-- ----------------------------
DROP TABLE IF EXISTS `Title`;
CREATE TABLE `Title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Title`
-- ----------------------------
BEGIN;
INSERT INTO `Title` VALUES ('1', 'Mr'), ('2', 'Mrs'), ('3', 'Miss'), ('4', 'Ms');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

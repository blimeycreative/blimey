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

 Date: 05/22/2012 11:21:27 AM
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
  CONSTRAINT `image_ibfk_1` FOREIGN KEY (`portfolio_id`) REFERENCES `Portfolio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Image`
-- ----------------------------
BEGIN;
INSERT INTO `Image` VALUES ('8', '1', 'Dunas Brochure 1', 'a-llana-3.jpg'), ('9', '1', 'Dunas Brochure 2', 'b-llana-1.jpg'), ('10', '1', 'Dunas Brochure 1', 'c-llana-2.jpg'), ('11', '1', 'Llana Brochure', 'a-dunas-3.jpg'), ('12', '1', 'Llana Brochure', 'b-dunas-1.jpg'), ('13', '1', 'Llana Brochure', 'c-dunas-2.jpg'), ('14', '7', 'March Fourth Campaign', 'a-march-fourth.jpg'), ('15', '7', 'March Fourth Campaign', 'b-march-fourth.jpg'), ('16', '7', 'March Fourth Campaign', 'c-march-fourth.jpg'), ('17', '6', 'Vacation Club Brochure', 'a-vacation-club-3.jpg'), ('18', '6', 'Vacation Club Brochure', 'b-vacation-club-1.jpg'), ('19', '6', 'Vacation Club Brochure', 'c-vacation-club-2.jpg'), ('20', '2', 'Happy Egg Game', 'a-egg-game-1.jpg'), ('21', '2', 'Happy Egg Game', 'b-egg-game-2.jpg'), ('22', '2', 'Happy Egg Game', 'c-egg-game.jpg'), ('23', '5', 'The Grill Menu Spread', 'a-grill-menu.jpg'), ('24', '5', 'The Grill Menu Spread', 'b-grill-menu.jpg'), ('25', '5', 'The Grill Menu Spread', 'c-grill-menu.jpg'), ('26', '4', 'The Construction Hub', 'the-hub-brochure-cover.jpg'), ('27', '4', 'The Construction Hub', 'the-hub-brochure.jpg'), ('28', '7', 'March Fourth Website', 'd-march-website.jpg'), ('29', '6', 'Vacation Club Website', 'vacation-club-website-1.jpg'), ('30', '6', 'Vacation Club Website', 'vacation-club-website-2.jpg'), ('31', '5', 'The Grill Menu Spread', 'd-grill-menu.jpg'), ('32', '5', 'The Grill Menu Spread', 'e-grill-menu.jpg'), ('39', '5', 'The Grill logo', 'grill-logo.jpg'), ('40', '5', 'The Grill Signage', 'the-grill-signage-1.jpg'), ('41', '5', 'The Grill Signage', 'the-grill-signage-2.jpg'), ('42', '7', 'The Happy Egg Restaurant', 'he-rest-1.jpg'), ('43', '7', 'The Happy Egg Restaurant', 'he-rest-2.jpg'), ('44', '7', 'The Happy Egg Restaurant', 'he-rest-3.jpg'), ('45', '7', 'The Happy Egg Restaurant', 'he-rest-4.jpg'), ('46', '7', 'The Happy Egg Restaurant', 'he-rest-5.jpg'), ('47', '11', 'Delilah', 'delilah-logo.jpg'), ('49', '11', 'Delilah', 'delilah-brochure-1.jpg'), ('50', '11', 'Delilah', 'delilah-brochure-2.jpg'), ('51', '11', 'Delilah', 'delilah-xmas-brochure-cover.jpg'), ('52', '11', 'Delilah', 'delilah-xmas-brochure-spread.jpg'), ('53', '10', 'Vale Blinds', 'vale-page-2.jpg'), ('54', '10', 'Vale Blinds', 'vale-page-3.jpg'), ('55', '10', 'Vale Blinds', 'vale-website-on-laptop.jpg'), ('58', '9', 'Oak Student Letts', 'oak-page-2.jpg'), ('59', '9', 'Oak Student Letts', 'oak-page-3.jpg'), ('60', '9', 'Oak Student Letts', 'oak-website-on-laptop.jpg'), ('61', '13', 'Center Parcs', 'center-parcs-1.jpg'), ('62', '13', 'Center Parks', 'center-parcs-2.jpg'), ('63', '4', 'The Construction Hub', 'the-hub-brochure-v2.jpg'), ('64', '4', 'The Construction Hub', 'a-hub.jpg'), ('65', '4', 'The Lifestyle Hub Website', 'b-hub-lifestyle.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Portfolio`
-- ----------------------------
BEGIN;
INSERT INTO `Portfolio` VALUES ('1', 'The Resort Group', 'the-resort-group', '<h3>The client</h3>\r\n<p>The Resort Group is an international property development company that builds world-class resorts for private investment.</p><p>Specialising in selecting prime development land, in emerging markets, and offering investors the best possible opportunities for capital appreciation and rental income.</p>\r\n<h3>The brief</h3>\r\n<p>To design the brand identity for two prestigious resorts and develop the corporate website.</p><p>Design and print full colour brochures to launch their premium beach and spa resorts on the island of Sal in Cape Verde – one of the world’s most premium property hotspots.</p>'), ('2', 'the happy egg co.', 'the-happy-egg-co', '<h3>The client</h3>\r\n<p>the happy egg co. is the UK’s leading free range egg brand now with a growing portfolio of products including quiches and savoury eggs.</p>\r\n\r\n<h3>The brief</h3>\r\n<p>To generate a concept that would build awareness within the media, for the happy egg co. To enhance the PR campaign we designed and developed the on and offline happy egg game. Formats included the traditional printed board game route, a travel adaptation and more recently the iPhone app.</p>'), ('3', 'dunas beach resort & spa', 'dunas-beach-resort-and-spa', ''), ('4', 'The Construction Hub', 'the-construction-hub', '<h3>The client</h3>\n<p>The Construction Hub supply an extensive range of materials, products and systems from international sources to the UK construction industry.</p>\n<h3>The brief</h3>\n<p>To design a new corporate identity that captures the essence of the business. In addition to this and the corporate brochure, the brief included developing two websites for both the construction and lifestyle areas of the business.</p>'), ('5', 'The Grill at Twenty Five', 'the-grill-at-twenty-five', '<h3>The Client</h3>\r\n<p> A family run business, which is linked to the Best Western hotel at junction 25 of the M1. The Grill is a separate new restaurant, lounge and bar, that offers a variety of American cuisine but with a British twist.  </p>\r\n<h3>The brief</h3>\r\n<p>To design the logo, external signage and full suite of menus for the new restaurant, that captures the American diner theme.</p>'), ('6', 'vacation club', 'vacation-club', ''), ('7', 'march fourth', 'march-fourth', ''), ('8', 'llana beach hotel', 'llana-beach-hotel', ''), ('9', 'Oak Student Letts', 'oak-student-letts', '<h3>The client</h3>\r\n<p>Oak Student Letts specialise in renting student accommodation in Nottingham, which has two main universities. They provide a quality management service for landlords and tenants, housing over 1500 students every year.</p>\r\n\r\n<h3>The brief</h3>\r\n<p>To design and build a website for students, that is simple to use and offers a quick property search option for student rental accommodation in Nottingham. The site includes an online payment system for rental payment collection which benefits the tenant, the landlords and the client.</p>'), ('10', 'Vale Blinds', 'vale-blinds', '<h3>The client</h3>\n<p>Vale Blinds is an online supplier of custom made blinds. With over 25 years experience in the window treatment industry, they are appointed online suppliers for Luxaflex, Sunway, VELUX®, Fakro, Roto, RoofLite and Keylite Blinds.</p>\n<h3>The brief</h3>\n<p>To design and build a bespoke e-commerce platform that not only appeals to online customers but also offers a full made to measure blind service.</p>'), ('11', 'Delilah', 'delilah', '<h3>The client</h3>\r\n<p>An independent fine food and wine merchant, combined with a tapas style food bar situated in the heart of Nottingham\'s Lace Market. Voted \'Best Deli/Cafe\', four years running by the restaurant awards.</p>\r\n\r\n<h3>The brief</h3>\r\n<p>To establish the brand identity throughout the café, which is translated across all signage, and to design the main brochure that promotes their hamper business. The creative approach needed to capture the rustic appeal of a premium delicatessen but not follow the traditional deli route.</p>'), ('12', 'Geoquip', 'geoquip', '<h3>The Client</h3>\r\n<p> Geoquip is recognised as a world leader in the design, development and manufacture of electronic perimeter intrusion detection systems. </p>\r\n<h3>The brief</h3>\r\n<p>Branding, brochure and exhibition graphics.</p>'), ('13', 'Center Parcs', 'center-parcs', '<h3>The client</h3>\r\n<p>Center Parcs UK run a network of four, 5 star holiday villages in the UK. Known for their countryside locations and sporting facilities, they offer a variety of activities and are currently official partners of the English badminton team.</p>\r\n<h3>The brief</h3><p>To design a free standing interactive unit that will help raise awareness for badminton as an Olympic sport at all Center Parcs sites.</p>');
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

/*
 Navicat Premium Data Transfer

 Source Server         : Lionheart
 Source Server Type    : MySQL
 Source Server Version : 50157
 Source Host           : 94.229.161.30
 Source Database       : savvydev

 Target Server Type    : MySQL
 Target Server Version : 50157
 File Encoding         : utf-8

 Date: 05/21/2012 13:11:18 PM
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
INSERT INTO `Image` VALUES ('8', '1', 'Dunas Brochure 1', 'a-dunas-3.jpg'), ('9', '1', 'Dunas Brochure 2', 'b-dunas-1.jpg'), ('10', '1', 'Dunas Brochure 1', 'c-dunas-2.jpg'), ('11', '1', 'Llana Brochure', 'a-llana-3.jpg'), ('12', '1', 'Llana Brochure', 'b-llana-1.jpg'), ('13', '1', 'Llana Brochure', 'c-llana-2.jpg'), ('14', '7', 'March Fourth Campaign', 'a-march-fourth.jpg'), ('15', '7', 'March Fourth Campaign', 'b-march-fourth.jpg'), ('16', '7', 'March Fourth Campaign', 'c-march-fourth.jpg'), ('17', '6', 'Vacation Club Brochure', 'a-vacation-club-3.jpg'), ('18', '6', 'Vacation Club Brochure', 'b-vacation-club-1.jpg'), ('19', '6', 'Vacation Club Brochure', 'c-vacation-club-2.jpg'), ('20', '2', 'Happy Egg Game', 'a-egg-game-1.jpg'), ('21', '2', 'Happy Egg Game', 'b-egg-game-2.jpg'), ('22', '2', 'Happy Egg Game', 'c-egg-game.jpg'), ('23', '5', 'The Grill Menu Spread', 'a-grill-menu.jpg'), ('24', '5', 'The Grill Menu Spread', 'b-grill-menu.jpg'), ('25', '5', 'The Grill Menu Spread', 'c-grill-menu.jpg'), ('26', '4', 'The Construction Hub Website', 'a-hub.jpg'), ('27', '4', 'The Lifestyle Hub Website', 'b-hub-lifestyle.jpg'), ('28', '7', 'March Fourth Website', 'd-march-website.jpg'), ('29', '6', 'Vacation Club Website', 'vacation-club-website-1.jpg'), ('30', '6', 'Vacation Club Website', 'vacation-club-website-2.jpg'), ('31', '5', 'The Grill Menu Spread', 'd-grill-menu.jpg'), ('32', '5', 'The Grill Menu Spread', 'e-grill-menu.jpg'), ('39', '5', 'The Grill logo', 'grill-logo.jpg'), ('40', '5', 'The Grill Signage', 'the-grill-signage-1.jpg'), ('41', '5', 'The Grill Signage', 'the-grill-signage-2.jpg'), ('42', '2', 'The Happy Egg Restaurant', 'he-rest-1.jpg'), ('43', '2', 'The Happy Egg Restaurant', 'he-rest-2.jpg'), ('44', '2', 'The Happy Egg Restaurant', 'he-rest-3.jpg'), ('45', '2', 'The Happy Egg Restaurant', 'he-rest-4.jpg'), ('46', '2', 'The Happy Egg Restaurant', 'he-rest-5.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Portfolio`
-- ----------------------------
BEGIN;
INSERT INTO `Portfolio` VALUES ('1', 'the resort group', 'the-resort-group', '<h3>The Client</h3>\r\n<p>The Resort Group is an international property development company that builds world-class resorts for private investment. The Resort Group specialise in selecting prime development land in emerging markets and offering investors the best possible opportunities for capital appreciation and rental income. </p>\r\n\r\n<h3>The brief</h3>\r\n<p>To design the brand identity for two prestigious resorts, develop the corporate website and design & print full colour brochures to launch their the premium beach and spa resorts on the island of Sal in Cape Verde – one of the world’s most popular property hotspots.</p>'), ('2', 'the happy egg co', 'the-happy-egg-co', '<h3>The Client</h3>\r\n<p> The happy egg company is the UK’s leading free range egg brand. Owned by Noble Foods, who are the leading supplier of fresh eggs to all the major retailers nationwide. </p>\r\n<h3>The brief</h3>\r\n<p>To generate a concept that would build awareness levels within the media for the happy egg company. As part of a PR strategy we designed and developed the on and offline happy egg game. Formats included the traditional board route, travel concept and more recently the I-phone app.</p>'), ('3', 'dunas beach resort & spa', 'dunas-beach-resort-and-spa', ''), ('4', 'the construction hub', 'the-construction-hub', '<h3>The Client</h3>\r\n<p> The Construction Hub knows only too well the importance of developing steel structures to exacting standards and delivered to meet the tough schedules that surround todays construction sites.\r\nWe have built strong partnerships with some of the leading steel producers around the world, to enable us to design, produce and even install to your specifications, often saving you up to 30% over UK suppliers.</p>\r\n<p>Supply an extensive range of materials, products and systems from trusted, audited international sources.</p>\r\n<h3>The brief</h3>\r\n<p>To design and create a brand identity that captures the essence of the business and communicates its strength, as being “the centre of procurement expertise for construction and development”.  In addition to the identity we designed the main corporate brochure and two websites, one for the construction industry and the second for the lifestyle side of the business.</p>'), ('5', 'the grill at twenty five', 'the-grill-at-twenty-five', '<h3>The Client</h3>\r\n<p> A family run business, which is linked to the Best Western hotel at junction 25 of the M1. The Grill is a separate new restaurant, lounge and bar, that offers a variety of American cuisine but with a British twist.  </p>\r\n<h3>The brief</h3>\r\n<p> The challenge for this restaurant was to ensure a design would work within its location was to design an identity for the restaurant that would appeal to the family, motor and hotel target markets </p>'), ('6', 'vacation club', 'vacation-club', ''), ('7', 'march fourth', 'march-fourth', ''), ('8', 'llana beach hotel', 'llana-beach-hotel', ''), ('9', 'Oak Student Letts', 'oak-student-letts', '<h3>The Client</h3>\r\n<p> Oak Student Letts specialises in renting student accommodation in Nottingham, which has two main universities. They provide a quality management service for landlords and tenants and manage over 350 properties for over 250 landlords, and house over 1500 students every year. </p>\r\n<h3>The brief</h3>\r\n<p> To design and build a website for students that was simple and offered a quick property search option for rental accommodation in Nottingham. As part of this build we added a new method for rental payment collection which benefited both the tenant and the landlords.  </p>'), ('10', 'Vale Blinds', 'vale-blinds', '<h3>The Client</h3>\r\n<p>Online supplier of custom made blinds and appointed online suppliers for Luxaflex, Sunway, VELUX®, Fakro, Roto, RoofLite and Keylite Blinds.\r\n</p>\r\n<h3>The brief</h3>\r\n<p> To design and build a new website that appealed to online customers, offering a full made to measure blind service. The site needed to include an in-depth ecommerce facility for order processing.   </p>'), ('11', 'Delilah', 'delilah', '<h3>The Client</h3>\r\n<p>A traditional delicatessen, combined with a tapas style food bar based in the Lace Market in the heart of Nottingham. Voted \'Best Deli/Cafe\', four years running by the restaurant awards.</p>\r\n<h3>The brief</h3>\r\n<p>To establish the brand identity throughout the café, including interior and exterior design and sales collateral required to promote the hamper business. The creative approach needed to capture the rustic appeal of a premium style feel different to the traditional deli route.</p>'), ('12', 'Geoquip', 'geoquip', '<h3>The Client</h3>\r\n<p> Geoquip is recognised as a world leader in the design, development and manufacture of electronic perimeter intrusion detection systems. </p>\r\n<h3>The brief</h3>\r\n<p>Branding, brochure and exhibition graphics.</p>');
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

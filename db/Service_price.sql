CREATE TABLE IF NOT EXISTS `price_headers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `header_name` VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `price_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(400) NOT NULL DEFAULT '',
  `price` int(50) NOT NULL DEFAULT '',
  `header_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`), 
  FOREIGN KEY (`header_id`) REFERENCES `price_headers` (`id`)
);
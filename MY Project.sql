CREATE TABLE `Customs` (
	`id` INT(11) NOT NULL,
	`Name` varchar(50) NOT NULL,
	`Surname` varchar(50) NOT NULL,
	`Phone` INT(11) NOT NULL,
	`Email` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Orders` (
	`id` INT(11) NOT NULL,
	`Date` TIME NOT NULL,
	`Customs_id` varchar NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Plumbers` (
	`id` INT(11) NOT NULL,
	`Name` varchar(50) NOT NULL,
	`Surname` varchar(50) NOT NULL,
	`Phone` INT(11) NOT NULL,
	`Email` varchar(50) NOT NULL,
	`Speciality_id` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Variates` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`Name` varchar(50) NOT NULL,
	`Products_id` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Products` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`Name` varchar(70) NOT NULL,
	`Company_id` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Companies` (
	`id` INT(11) NOT NULL,
	`Name` varchar(50) NOT NULL,
	`Address` varchar(70) NOT NULL,
	`Phone` INT(11) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Plumbers_speciality` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`Name` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Pray_list` (
	`id` INT(11) NOT NULL,
	`Orders_id` TIME NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Sales` (
	`id` INT(11) NOT NULL,
	`Pray_list_id` INT NOT NULL,
	`Products` TIME NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Users` (
	`id` INT(11) NOT NULL,
	`Ad` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Feedback` (
	`id` INT(11) NOT NULL,
	`Sales_id` INT(11) NOT NULL,
	`Services_id` INT(11) NOT NULL,
	`Content` TEXT NOT NULL,
	`Users_id` INT(11) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Orders` ADD CONSTRAINT `Orders_fk0` FOREIGN KEY (`Customs_id`) REFERENCES `Customs`(`id`);

ALTER TABLE `Plumbers` ADD CONSTRAINT `Plumbers_fk0` FOREIGN KEY (`Speciality_id`) REFERENCES `Plumbers_speciality`(`id`);

ALTER TABLE `Variates` ADD CONSTRAINT `Variates_fk0` FOREIGN KEY (`Products_id`) REFERENCES `Products`(`id`);

ALTER TABLE `Products` ADD CONSTRAINT `Products_fk0` FOREIGN KEY (`Company_id`) REFERENCES `Companies`(`id`);

ALTER TABLE `Pray_list` ADD CONSTRAINT `Pray_list_fk0` FOREIGN KEY (`Orders_id`) REFERENCES `Orders`(`id`);

ALTER TABLE `Sales` ADD CONSTRAINT `Sales_fk0` FOREIGN KEY (`Pray_list_id`) REFERENCES `Pray_list`(`id`);

ALTER TABLE `Feedback` ADD CONSTRAINT `Feedback_fk0` FOREIGN KEY (`Sales_id`) REFERENCES `Sales`(`id`);

ALTER TABLE `Feedback` ADD CONSTRAINT `Feedback_fk1` FOREIGN KEY (`Users_id`) REFERENCES `Users`(`id`);


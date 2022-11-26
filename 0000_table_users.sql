CREATE TABLE `users`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `nick` varchar(50) NOT NULL UNIQUE,
    `email` varchar(50) NOT NULL UNIQUE,
    `password` text NOT NULL,
    `creationDate` DATETIME NOT NULL,
    PRIMARY KEY(`id`)
);
CREATE TABLE `projects`(
    `id` INT(10) NOT NULL AUTO_INCREMENT,
    `name` varchar(50) NOT NULL,
    `creationDate` DATETIME NULL,
    `creationUserId` INT(10) NOT NULL,
    PRIMARY KEY(`id`),
    UNIQUE KEY `UK_Collections`(
        `name`,
        `creationUserId`
    ),
    CONSTRAINT `FK_COL_CREATION_USER` FOREIGN KEY(`creationUserId`) REFERENCES `users`(`id`)
);
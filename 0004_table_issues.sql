CREATE TABLE `issues`(
    `id` INT(10) NOT NULL AUTO_INCREMENT,
    `name` varchar(50) NOT NULL,
    `description` text NULL,
    `creationUserId` INT(10) NOT NULL,
    `creationDate` DATETIME NULL,
    `state` TINYINT(1) DEFAULT 1 COMMENT "Esto es un enumerado con los posibles estados de la issue",
    PRIMARY KEY(`id`),
    CONSTRAINT `FK_IS_CREATION_USER` FOREIGN KEY(`creationUserId`) REFERENCES `users`(`id`)
)
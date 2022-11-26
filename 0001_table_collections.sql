CREATE TABLE `collections`(
    `id` INT(10) NOT NULL AUTO_INCREMENT,
    `name` varchar(50) NOT NULL,
    `creationDate` DATETIME NULL,
    `creationUserId` INT(10) NOT NULL,
    PRIMARY KEY(`id`),
    UNIQUE KEY(
        `name`,
        `creationUserId`
    )
);
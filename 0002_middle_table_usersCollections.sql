-- Tabla intermedia para la relación n:n de users y collections

CREATE TABLE `usersCollections`(
    id INT(10) NOT NULL AUTO_INCREMENT,
    userId INT(10) NOT NULL,
    collectionId INT(10) NOT NULL,
    PRIMARY KEY(`id`),
    CONSTRAINT FK_UC_USERS FOREIGN KEY(`userId`) REFERENCES `users`(`id`),
    CONSTRAINT FK_UC_COLLECTIONS FOREIGN KEY(`collectionId`) REFERENCES `collections`(`id`)
);
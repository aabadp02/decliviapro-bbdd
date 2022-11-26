-- Tabla intermedia para la relación n:n de users y collections

CREATE TABLE `usersProjects`(
    `userId` INT(10) NOT NULL,
    `projectId` INT(10) NOT NULL,
    CONSTRAINT `FK_UC_USERS` FOREIGN KEY(`userId`) REFERENCES `users`(`id`),
    CONSTRAINT `FK_UC_COLLECTIONS` FOREIGN KEY(`projectId`) REFERENCES `projects`(`id`),
    UNIQUE KEY `UK_USERS_PROJECTS`(
        `userId`,
        `projectId`
    )
);
CREATE TABLE `usersIssues`(
    `userId` INT(10) NOT NULL,
    `issueId` INT(10) NOT NULL,
    CONSTRAINT `FK_UI_USER` FOREIGN KEY(`userId`) REFERENCES `users`(`id`),
    CONSTRAINT `FK_UI_ISSUE` FOREIGN KEY(`issueId`) REFERENCES `issues`(`id`)
)
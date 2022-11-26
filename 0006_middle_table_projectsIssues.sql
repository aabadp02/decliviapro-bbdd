CREATE TABLE `projectsIssues`(

    `projectId` INT(10) NOT NULL,
    `issueId` INT(10) NOT NULL,
    CONSTRAINT `FK_CI_COLLECTION` FOREIGN KEY(`projectId`) REFERENCES `projects`(`id`),
    CONSTRAINT `FK_CI_ISSUE` FOREIGN KEY(`issueId`) REFERENCES `issues`(`id`)
)
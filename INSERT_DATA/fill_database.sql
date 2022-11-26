-- Script para insertar filas con datos "de prueba" en la base de datos
USE `declivia`;

INSERT INTO `users` (`nick`, `email`, `password`, `creationDate`) VALUES ("AcelgaLetal", "acelgaLetal@gmail.com", "1234", "1998-01-23 12:45:56");
INSERT INTO `users` (`nick`, `email`, `password`, `creationDate`) VALUES ("Alexitoabad55", "alexitoabad55@gmail.com", "1234", "1998-01-23 12:45:56");
INSERT INTO `users` (`nick`, `email`, `password`, `creationDate`) VALUES ("Redoblemstr", "redoblemstr@gmail.com", "1234", "1998-01-23 12:45:56");
INSERT INTO `users` (`nick`, `email`, `password`, `creationDate`) VALUES ("Cleverito", "cleverito@gmail.com", "1234", "1998-01-23 12:45:56");

-- Proyectos creados por AcelgaLetal
INSERT INTO `projects` (`name`, `creationUserId`) VALUES ("DECLIVIA", 1);
INSERT INTO `projects` (`name`, `creationUserId`) VALUES ("PANICOKERNEL", 1);
INSERT INTO `projects` (`name`, `creationUserId`) VALUES ("DIARIO", 1);
-- Creamos la relación básica entre el usuario y los proyectos
INSERT INTO `usersProjects`(`userId`, `projectId`) VALUES (1, 1);
INSERT INTO `usersProjects`(`userId`, `projectId`) VALUES (1, 2);
INSERT INTO `usersProjects`(`userId`, `projectId`) VALUES (1, 3);

-- Collections creadas por Alexitoabad55
INSERT INTO `projects` (`name`, `creationUserId`) VALUES ("CPL", 2);
INSERT INTO `projects` (`name`, `creationUserId`) VALUES ("SAAS", 2);
INSERT INTO `projects` (`name`, `creationUserId`) VALUES ("DBERP", 2);
-- Creamos la relación básica entre el usuario y los proyectos
INSERT INTO `usersProjects`(`userId`, `projectId`) VALUES (2, 4);
INSERT INTO `usersProjects`(`userId`, `projectId`) VALUES (2, 5);
INSERT INTO `usersProjects`(`userId`, `projectId`) VALUES (2, 6);

-- Collections creadas por Cleverito
INSERT INTO `projects` (`name`, `creationUserId`) VALUES ("OUTER WILDS", 4);
INSERT INTO `projects` (`name`, `creationUserId`) VALUES ("WOW", 4);
INSERT INTO `projects` (`name`, `creationUserId`) VALUES ("DECLIVIAPRO", 4);
-- Creamos la relación básica entre el usuario y los proyectos
INSERT INTO `usersProjects`(`userId`, `projectId`) VALUES (4, 5);
INSERT INTO `usersProjects`(`userId`, `projectId`) VALUES (4, 6);
INSERT INTO `usersProjects`(`userId`, `projectId`) VALUES (4, 7);

-- En el proyecto PANICO DEL KERNEL PARTICIPAN TAMBIÉN ALEXITOABAD Y CLEVERITO
INSERT INTO `usersProjects`(`userId`, `projectId`) VALUES(2,2);
INSERT INTO `usersProjects`(`userId`, `projectId`) VALUES(4,2);

-- En el proyecto CPL participan todos
INSERT INTO `usersProjects`(`userId`, `projectId`) VALUES(1, 5);
INSERT INTO `usersProjects`(`userId`, `projectId`) VALUES(3, 5);

-- AcelgaLetal Crea issues
INSERT INTO `issues`(`name`, `creationUserId`) VALUES ("Hacer el login de usuarios de PANICOKERNEL", 1);
INSERT INTO `issues`(`name`, `creationUserId`) VALUES ("Hacer la cama", 1);
INSERT INTO `issues`(`name`, `creationUserId`) VALUES ("Ordenadr las figuras", 1);

-- Creamos la relación entre usuario e issue
INSERT INTO `usersIssues`(`userId`, `issueId`) VALUES(1, 1);
INSERT INTO `usersIssues`(`userId`, `issueId`) VALUES(1, 2);
INSERT INTO `usersIssues`(`userId`, `issueId`) VALUES(1, 3);

-- AcelgaLetal comparte hacer el login con cleveirto
INSERT INTO `usersIssues`(`userId`, `issueId`) VALUES(4, 1);

-- Asignamos estas issues a proyectos concretos
INSERT INTO `projectsIssues`(`projectId`, `issueId`) VALUES (2, 1);
INSERT INTO `projectsIssues`(`projectId`, `issueId`) VALUES (3, 2);
INSERT INTO `projectsIssues`(`projectId`, `issueId`) VALUES (3, 3);
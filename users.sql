USE declivia;

CREATE TABLE users(

    id INT(10) NOT NULL AUTO_INCREMENT,
    nick varchar(50) NOT NULL,
    email varchar(50) NOT NULL,
    password text NOT NULL,
)
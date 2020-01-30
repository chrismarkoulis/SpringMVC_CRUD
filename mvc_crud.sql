CREATE DATABASE School;
USE School;

CREATE TABLE Trainers
(
 tcode         int auto_increment primary key,
 tfirstName    varchar(20) not null,
 tlastName     varchar(20) not null,
 trsubject     varchar(45) not null
 );
 
INSERT INTO Trainers(tcode,tfirstName,tlastName,trsubject)
values(0101,'Jason','Gosling','Algorithms and Data Structures'),
(0102,'Arnold','Schwarz','Object-oriented Programming'),
(0103,'Thomas','Anders','Object-oriented Programming'),
(0104,'George','Newark','HTML/CSS'),
(0105,'Andy','Waters','Databases');
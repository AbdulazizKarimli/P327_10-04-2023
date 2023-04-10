CREATE DATABASE P327Db

--DROP DATABASE P327Db

USE P327Db

CREATE TABLE Students(
	Id int primary key identity,
	Name nvarchar(100) not null,
	Surname nvarchar(120) default 'xxxxxx',
	Age int CHECK(Age >= 18)
)

--DROP Table Students

ALTER TABLE Students
ADD Point int CHECK(Point >= 0 AND Point <= 100)

ALTER TABLE Students
DROP CONSTRAINT CK__Students__Point__2B3F6F97

ALTER TABLE Students
DROP COLUMN Point

ALTER TABLE Students
ADD CONSTRAINT default_point DEFAULT 0 for Point

INSERT INTO Students
VALUES ('Asiman', 'Qasimzade', 19, 80),
       ('Semra', 'Albendeyeva', 32, 90),
	   ('Orxan', 'Aslanov', 26, 100)

INSERT INTO Students (Name, Age, Point)
VALUES ('Test', 19, 80)

UPDATE Students
SET Surname = 'Testov'
WHERE Id=6

DELETE Students
WHERE Id=6

SELECT Name, Age, Point FROM Students
WHERE Id = 3

SELECT * FROM Students
WHERE Age > 20

SELECT * FROM Students
WHERE Point >= 50 AND Point <= 100

SELECT * FROM Students
WHERE Point BETWEEN 100 AND 50

SELECT * FROM Students
WHERE Name LIKE '%a%'

SELECT * FROM Students
WHERE Id IN(1,2,3)

SELECT COUNT(*) 'Telebelerin sayi' FROM Students

SELECT MIN(Point) FROM Students

SELECT MAX(Point) FROM Students

SELECT * FROM Students
WHERE Point = (SELECT MAX(Point) FROM Students)
CREATE DATABASE AddressBookSystemDB --UC 1

CREATE TABLE AddressBook(FirstName  VARCHAR(10) NOT NULL,LastName VARCHAR(10)NOT NULL,Address VARCHAR(255), City VARCHAR(20)NOT NULL, State VARCHAR(2),
Zip INT NOT NULL, PhoneNumber bigint, Email VARCHAR(25)); --UC2

SELECT * FROM AddressBook;

--UC3
INSERT INTO AddressBook VALUES ('Sid', 'Gandhi', 'Lic Colony Bhopal Naka', 'Sehore','MP', 466001, 74153574154,'sid.jain@gmail.com');
INSERT INTO AddressBook VALUES ('Lalit', 'Raghu', 'RamNagar Colony', 'Vidisha', 'MP', 429001, 74102589630,'lalit.raghu@gmail.com');
INSERT INTO AddressBook VALUES ('Arpit', 'Jain', 'Lisa Talkies', 'Budhar', 'MP', 469001, 70003963586,'arpit.jain@gmail.com');
INSERT INTO AddressBook VALUES ('Ajay', 'Jadhao', 'Nehru Colony', 'Pune','MH', 566001, 9632587410,'ajay.jadhao@gmail.com');
INSERT INTO AddressBook VALUES ('Rajesh', 'Barle', 'Tatiban', 'Raipur','CG', 620147, 70008529630,'raju.barle@gmail.com');
INSERT INTO AddressBook VALUES ('Agrim', 'Tripathi', 'Tehsil Chouraha', 'Lucknow','UP', 226001, 7539514568,'argrim.tripati@gmail.com');

SELECT * FROM AddressBook;

UPDATE AddressBook SET FirstName = 'Ajju' WHERE PhoneNumber = 9632587410; --UC4

SELECT * FROM AddressBook;

DELETE FROM AddressBook WHERE FirstName='Agrim'; -- UC5

SELECT * FROM AddressBook;

SELECT * FROM AddressBook WHERE City = 'Raipur'; --UC6

SELECT COUNT(City) FROM AddressBook; -- UC7

SELECT FirstName, LastName FROM AddressBook ORDER BY City ASC; --UC8

ALTER TABLE AddressBook ADD Type VARCHAR(20);  --UC9
UPDATE AddressBook SET Type = 'Friends' WHERE PhoneNumber = 74102589630;
UPDATE AddressBook SET Type = 'Family' WHERE PhoneNumber = 9632587410;
UPDATE AddressBook SET Type = 'Friends' WHERE PhoneNumber = 70003963586;
UPDATE AddressBook SET Type = 'Profesional' WHERE PhoneNumber = 70008529630;
UPDATE AddressBook SET Type = 'Family' WHERE PhoneNumber = 74102589630;
UPDATE AddressBook SET Type = 'Others' WHERE PhoneNumber = 74153574154;


SELECT * FROM AddressBook;

SELECT COUNT(*) FROM AddressBook WHERE Type IN (SELECT DISTINCT(Type) FROM AddressBook); --UC10


INSERT INTO AddressBook VALUES ('Lalit', 'Raghu', 'RamNagar Colony', 'Vidisha', 'MP', 429001, 74102589630,'lalit.raghu@gmail.com','Friends'); --UC11
INSERT INTO AddressBook VALUES ('Lalit', 'Raghu', 'RamNagar Colony', 'Vidisha', 'MP', 429001, 74102589630,'lalit.raghu@gmail.com','Family');
SELECT * FROM AddressBook;

----UC12----


CREATE TABLE Type(  
Id INT PRIMARY KEY IDENTITY(1,1),
Type VARCHAR(20) NOT NULL
);

ALTER TABLE AddressBook DROP COLUMN Type;

ALTER TABLE AddressBook ADD Type INT CONSTRAINT fk FOREIGN KEY(Type) REFERENCES Type(Id)






DROP TABLE 


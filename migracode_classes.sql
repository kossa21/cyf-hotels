--Exercise 3
--Create a new table mentors, for each mentor we want to save their name, 
--how many years they lived in Barcelona, their address and their favourite programming language.

create table mentors (
	mentor_id		serial primary key,
	name			varchar(30) not null,
	years_in_bcn	int not null,
	address			varchar(40) not null,
	fav_language	varchar(15) not null
);

--Exercise 4
--Insert 5 mentors in the mentors table

insert into mentors (name, years_in_bcn, address, fav_language) values ('Vincent', 4, 'Barcelona', 'HTML');
insert into mentors (name, years_in_bcn, address, fav_language) values ('Ricard', 3, 'Barcelona', 'SQL');
insert into mentors (name, years_in_bcn, address, fav_language) values ('Yonah', 1, 'Barcelona', 'React');
insert into mentors (name, years_in_bcn, address, fav_language) values ('Antonio', 5, 'Barcelona', 'Javascript');
insert into mentors (name, years_in_bcn, address, fav_language) values ('Carlos', 2, 'Barcelona', 'Javascript');

--Exercise 5
--Create a new table students, for each student we want to save their name, address and age.

create table students (
  id        SERIAL PRIMARY KEY,
  name      VARCHAR(30) NOT NULL,
  age       int NOT NULL,
  address   VARCHAR(120),
  city      VARCHAR(30),
  postcode  VARCHAR(12)
);

--Exercise 6
--Insert 10 students in the students table.

INSERT INTO student (name, address, age) VALUES ('Thiago Luiz Pereira','Carrer dAvinyó','28');
insert into student (name, address, city, postcode, age ) values ('Anandamaya', 'Av Sant Ildefons', 'Cornella de Llobregat', '08940', 25);
INSERT INTO student (name, address , city, postcode,age ) VALUES ('Akond', 'C Riereta 32', 'Barcelona', 08001, 31 );
insert into student(name,age,address,city,postcode) values('Alejandro Sanchez',24,'Cornella','Cornella','08940');
insert into student  (name, address, city, postcode, age) values ('Rubén', 'Corséga 416', 'Barcelona', 08037, 29);
INSERT INTO student (name,age,address, city, postcode) VALUES ('roshan',25,'glories','Barcelona', '333');
INSERT INTO student (name,age,address, city, postcode) VALUES ('lavinia loredana', 35,'rossello 432','Barcelona', '08237');
insert into student (name, address , city, postcode, age) values ('Umit Selahattin Oner', 'Carrer Canyelles', 'Tarragona', '43003', 32);
insert into student (name, address, city, postcode, age) values ('Joaquin', 'Joan Blanques 41', 'Barcelona', 08012, 29);
insert into student ( name, address , city, postcode, age) values ('Viktoryia Mamantava', 'Avenida Denia 140', 'Santa Coloma de Gramenet', '08921', 33); 
INSERT INTO Student (name, address, city, postcode, age) VALUES ('Gustavo', 'Haiti, 2, 1-2', 'Barcelona', '08023', 34);

--Exercise 7
--Verify that the data you created for mentors and students 
--are correctly stored in their respective tables

select * from mentors m ;
select * from student s ;

--Exercise 8
--Create a new classes table to record the following information:
/*A class has a leading mentor
A class has a topic (such as Javascript, NodeJS)
A class is taught at a specific date and at a specific location*/

create table classes (
	class_id 			serial primary key,
	leading_mentor_id 	int,
	topic				varchar(20),
	class_date			date,
	class_location		varchar(20)
);

--Exercise 9
--Insert a few classes in the classes table

insert into classes (leading_mentor_id , topic , class_location, class_date) values (1, 'Welcoming', 'Glovo Offices', '2019-10-25');
insert into classes (leading_mentor_id , topic , class_location, class_date ) values (2, 'Javascript', 'Remote', '2020-07-18');

--Exercise 10
--We now want to store who among the students attends a specific class. 
--How would you store that? Come up with a solution and insert some data 
--if you model this as a new table.

create table attendances (
	attendance_id 	serial primary key,
	class_id		int,
	student_id		int
);

insert into attendances (class_id , student_id ) values (1, 2);
insert into attendances (class_id , student_id ) values (2, 3);




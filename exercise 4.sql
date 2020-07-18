/*Exercise 1*/
--Create the customers table in the cyf_hotels database.
--Create a new table hotels in the cyf_hotels database 

CREATE TABLE customers (
  id        SERIAL PRIMARY KEY,
  name      VARCHAR(30) NOT NULL,
  email     VARCHAR(120) NOT NULL,
  address   VARCHAR(120),
  city      VARCHAR(30),
  postcode  VARCHAR(12),
  country   VARCHAR(20)
);

create table hotels (
	id			SERIAL primary key,
	name 		varchar(30) not null,
	rooms		int not null,
	postcode 	int not null
);


/*Exercise 2*/
--Create the table bookings in your cyf_hotels database and verify that it is correctly created.

CREATE TABLE bookings (
  id               SERIAL PRIMARY KEY,
  customer_id      INT REFERENCES customers(id),
  hotel_id         INT REFERENCES hotels(id),
  checkin_date     DATE NOT NULL,
  nights           INT NOT NULL
);


/*Exercise 3*/
--Run the 3 SQL statements above.
--Insert yourself in the customers table.
--Insert the following 3 hotels in the hotels table:
--The Triple Point Hotel has 10 rooms, its postcode is CM194JS
--The Royal Cosmos Hotel has 5 rooms, its postcode is TR209AX
--The Pacific Petal Motel has 15 rooms, its postcode is BN180TG
/*Try to insert a booking for a customer id which does not exist in the customers table (
for example ID 100). What is happening and why?*/

INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('John Smith','j.smith@johnsmith.org','11 New Road','Liverpool','L10 2AB','UK');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Triple Point Hotel', 10, 'CM194JS');
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (1, 1, '2019-10-01', 2);

INSERT into customers (name, email, address, city, postcode, country) values ('Ananda Arno', 'aarno@gmail.com', '345 Camp Street', 'Bcn', '08904', 'Spain');

insert into hotels (name, rooms, postcode) values ('Triple Point Hotel', 10, 'CM194JS');
insert into hotels (name, rooms, postcode) values ('Royal Cosmos Hotel', 5, 'TR209AX');
insert into hotels (name, rooms, postcode) values ('Pacific Petal Motel', 15, 'BN180TG');

insert into bookings (customer_id , hotel_id , checkin_date , nights ) values (100, 1, '2020-07-15', 4);

/*Exercise 4*/
--Use the above SQL statement to display all the data inserted in the customers table.
--Use the above SQL statement to display all the data inserted in the hotels table.
--Use the above SQL statement to display all the data inserted in the bookings table.

select * from hotels;
select * from customers;
select * from bookings b2 ;


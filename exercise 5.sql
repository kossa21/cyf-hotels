/*Exercise 5*/

--Retrieve all information for the customer Laurence Lebihan.
select * from customers where name = 'Laurence Lebihan';

--Retrieve all customers name living in UK.
select name from customers c where country = 'UK';

--Retrieve the address, city and postcode of Melinda Marsh.
select address, city, postcode from customers c where name = 'Melinda Marsh';

--Retrieve all hotels located in the postcode DGQ127.
select * from hotels h where postcode = 'DGQ127';

--Retrieve all hotels with more than 11 rooms.
select * from hotels h where rooms > 11;

--Retrieve all hotels with more than 6 rooms but less than 15 rooms.
select * from hotels h where rooms > 6 and rooms < 15;

--Retrieve all hotels with exactly 10 rooms or 20 rooms.
select * from hotels h2 where rooms = 10 or rooms = 20;

--Retrieve all bookings for customer id 1.
select * from bookings where customer_id = 1;

--Retrieve all bookings for more than 4 nights.
select * from bookings where nights >= 4;

--Retrieve all bookings starting in 2020.
select * from bookings b where checkin_date >= '2020-01-01';

--Retrieve all bookings before 2020 for less than 4 nights.
select * from bookings b where checkin_date < '2020-01-01' and nights < 4;

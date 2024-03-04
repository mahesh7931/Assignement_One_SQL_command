
use mavenmovies;
-- Question 1: Identify the primary keys and foreign keys in maven movies db. Discuss the differences.
-- A Primary key is a unique identifier for each record in a table. A table can have only one primary key. A primary key value cannot be deleted from the parent table
-- A Foreign key establishes a relationship between tables by referencing the primary key of another table. Ensures uniqueness and data integrity within a single table a foreign key can be deleted from the child's table.
-- Primary key is a combination of UNIQUE and Not Null constraints.
-- Foreign contains duplicate values and a table in a relational database.

desc actor;
 -- actor_id is primary key and last_name is foreign key
 
 desc actor_award;
 -- actor_id is primary key and last_name is foreign key
 
 desc address;
 -- address_id is primary key and city_id is foreign key
 
 desc advisor;
 -- advisor_id is a primary key
 
 desc category;
 -- category_id is primary key 
 
 desc city;
 -- city_id is primary key and country_id is foreign key
 
 desc country;
 -- country_id is primary key
 
 desc customer;
 -- customer_id is primary key and store_id ,last_name,address_id is foreign key
 
 desc film;
 -- film_id is primary key and title ,languge_id ,origignal_languge_id  is foreign key
 
 desc film_actor;
 -- actor_id , film_id is primary key
 
 desc film_category;
 -- film_id and category_id is primary key

  desc film_text;
  -- film_id is the primary key and the title is a foreign key

-- Question 2: List all details of the actors.
select * from actor;

-- Question 3: List all customer information from DB.
select * from customer;

-- Question 4: list different countries. 
select distinct(country) from country;

-- Question 5: Display all active customers.
select customer_id, first_name, last_name, active from customer
where active = 1;

-- Question 6: List of all rental IDs for customer with ID 1. 
select rental_id, customer_id from rental
where customer_id = 1 ;

-- Question 7: Display all the films whose rental duration is greater than 5. 
select * from film
where rental_duration > 5; 

-- Question 8: List the total number of films whose replacement cost is greater than $15 and less than $20. 
select count(title) as total_number from film
where replacement_cost between 15 and 20;

-- Question 9: Find the number of films whose rental rate is less than $1.
select count(*) as Num_film from film
where rental_rate < 1;

-- Question 10: Display the count of unique first names of actors.
select count(distinct first_name) from actor;

-- Question 11: Display the first 10 records from the customer table.
select * from customer
limit 10 ;

-- Question 12: Display the first 3 records from the customer table whose first name starts with ‘b’. 
select * from customer 
where first_name like 'b%'
limit 3;

-- Question 13: Display the names of the first 5 movies which are rated as ‘G’. 
select title, rating from film
where rating = 'G'
limit 5;

-- Question 14: Find all customers whose first name starts with "a". 
select first_name from customer
where first_name like 'a%';

-- question 15: Find all customers whose first name ends with "a". 
select first_name from customer
where first_name like '%a';

-- Question 16: Display the list of first 4 cities which start and end with ‘a’ . 
select city from city
where city like 'a%a'
limit 4;

-- Question 17: Find all customers whose first name have "NI" in any position.
select first_name from customer
where first_name like '%NI%';

-- Question 18: Find all customers whose first name have "r" in the second position .
select first_name from customer
where first_name like '_r';

-- Question 19: Find all customers whose first name starts with "a" and are at least 5 characters in length. 
select first_name from customer
where first_name like 'a_____%';

-- Question 20: Find all customers whose first name starts with "a" and ends with "o". 
select first_name from customer
where first_name like 'a%o';

-- Question 21: Get the films with pg and pg-13 rating using IN operator. 
select * from film
where rating in ( 'pg', 'pg-13');

-- Question 22: Get the films with length between 50 to 100 using between operator. 
select * from film
where length between 50 and 100;

-- Question 23: Get the top 50 actors using limit operator. 
select * from actor
limit 50;

-- Question 24: Get the distinct film ids from inventory table. 
select distinct(film_id) from inventory;











































































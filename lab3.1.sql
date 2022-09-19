use sakila; 
-- lab 3.1 
-- act 1
-- 1
ALTER TABLE staff
DROP COLUMN picture;
-- 2 
SELECT * FROM sakila.customer
WHERE first_name = 'TAMMY' AND last_name = 'SANDERS';

insert into sakila.staff(first_name, last_name, email, address_id, store_id, username)
values('TAMMY','SANDERS', 'TAMMY.SANDERS@sakilacustomer.org', 79, 2, 'tammy');
select * from sakila.staff;

-- 3 
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
-- customer id 130 
select film_id from sakila.film
where title = 'academy dinosaur';
-- film id 1
select * from sakila.staff
where first_name = 'mike';
-- staff_id 1
select inventory_id from sakila.inventory 
where film_id = 1;
-- there is 8 

insert into sakila.rental(rental_date, inventory_id, customer_id, return_date, staff_id)
values(CURRENT_TIMESTAMP,1, 130, DATE_FORMAT(CURRENT_TIMESTAMP, '%Y-%m-%d %T'),1);

select * from sakila.rental;
-- rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update


-- act 2
-- 1. Drop film_text as all fields are replicated.
-- 2. Drop Location in address table.
-- 3. Phone in address gets int value.
-- 4  Title in film type, varchar(50)

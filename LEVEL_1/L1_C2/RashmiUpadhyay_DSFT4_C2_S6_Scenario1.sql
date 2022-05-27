USE sakila;

/* TASK- 1 */
SELECT first_name, last_name, last_update FROM actor;

/* TASK- 2 */
/* 1 */
SELECT * FROM actor;

/* 2 */
SELECT first_name, last_name, COUNT(*) AS Occurance FROM actor GROUP BY first_name, last_name HAVING (COUNT(*)>1);

/* 3 */
SELECT COUNT(DISTINCT first_name, last_name) AS No_Of_Actors_With_Unique_Name FROM actor;

 
 /* TASK- 3 */
/* Actors (Non-repeated name) */
SELECT first_name, last_name FROM actor GROUP BY first_name HAVING COUNT(1)=1;
/* Actors (repeated names) */
 SELECT first_name, COUNT(*) AS No_Of_Actors_Repeated_Names FROM actor GROUP BY first_name HAVING COUNT(*)>1;
 
 
/* TASK- 4 */

SELECT actor.first_name, actor.last_name, category.name, category.category_id, film_category.film_id FROM film_category
INNER JOIN actor ON actor_id=film_id
INNER JOIN category ON film_category.category_id=category.category_id WHERE name ='Action' or name = 'Romance' or name=  'Horror' or name =  'Mystery';

/* TASK- 5 */
SELECT category_id, COUNT(*) FROM film_category GROUP  BY category_id ;

/* TASK- 6 */
/* A */
SELECT title, replacement_cost FROM film WHERE replacement_cost<=9;

/* B */
SELECT title, replacement_cost FROM film WHERE replacement_cost BETWEEN 15 AND 20;

/* C */
SELECT title , replacement_cost, rental_rate FROM film ORDER BY replacement_cost DESC, rental_rate ASC;


/* TASK- 7 */

SELECT f.title, COUNT(a.actor_id) AS 'Number Of Actors' FROM film f
JOIN film_actor a ON f.film_id= a.film_id GROUP BY (f.title);	

/* TASK- 8 */
SELECT title from film WHERE title LIKE 'K%' OR title LIKE 'Q%';

/* TASK- 9 */
SELECT first_name, last_name FROM actor WHERE actor_id IN(SELECT actor_id FROM film_actor WHERE film_id IN
(SELECT film_id FROM film WHERE title='AGENT TRUMAN'));


/* TASK- 10 */
SELECT title FROM film WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id IN
((SELECT category_id FROM category WHERE name='Family')));


/* TASK- 11 */
SELECT f.title, COUNT(f.title) AS rentals FROM film f JOIN(SELECT r.rental_id, i.film_id FROM rental r
JOIN inventory i ON i.inventory_id=r.inventory_id) a 
ON a.film_id=f.film_id GROUP BY f.title ORDER BY rentals DESC;


/* TASK- 12 */
SELECT a.category_id, AVG(b.replacement_cost - b.rental_rate) difference FROM film_category a 
INNER JOIN film b ON a.film_id=b.film_id GROUP BY a.category_id HAVING difference >15;

/* TASK- 13 */
SELECT category_id, COUNT(*) AS 'Number Of Films' FROM film_category GROUP  BY category_id ;
 

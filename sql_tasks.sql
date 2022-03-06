SELECT - extracts data from a database
UPDATE - updates data in a database
DELETE - deletes data from a database
INSERT INTO - inserts new data into a database
CREATE DATABASE - creates a new database
ALTER DATABASE - modifies a database
CREATE TABLE - creates a new table
ALTER TABLE - modifies a table
DROP TABLE - deletes a table
CREATE INDEX - creates an index (search key)
DROP INDEX - deletes an index


SELECT customerName Klientas, country Salis, country
FROM customers;

SELECT * FROM CUSTOMERS; // VISOS LENTELES ISTRAUKIMAS (SELECTA ALL);

SELECT contactFirstName FROM CUSTOMERS;

SELECT DISTINCT FROM contactFirstName, contactLastName; // PASIKARTOJANCIUS ATMETA (SUTRAUKIA SARASA)

SELECT customerName  Klientas, city Miestas, country Valsybe, creditLimit Kredito_limitas
FROM customers 
WHERE NOT country IN ('USA', 'France')
OR NOT creditLIMIT BETWEEN 0 AND 100000;
//AND NOT creditLIMIT BETWEEN 0 AND 100000;
ORDER BY ASC ;  // ASC - didejancia tvarka *
[09:09 popiet] Rimantas Naruševičius
ascending = ASC,  descending DESC  
<> = nelygu 


//////////



1. Parašykite SQL užklausą, kuri ištrauktų visus stulpelius iš lentelės „actor“
SELECT *
FROM actor

2. Parašykite SQL užklausą, kuri ištrauktų visus stulpelius iš lentelės „actor“ , surušiuotus pagal stulpelį „first_name“.
SELECT *
FROM actor
ORDER BY first_name
3. Parašykite SQL užklausą, kuri ištrauktų visus stulpelius iš lentelės „actor“ , surušiuotus pagal stulpelį „first_name“ mažėjimo tvarka.
SELECT *
FROM actor
ORDER BY first_name DESC
4. Parašykite užklausą, kuri ištrauktų stulpelį „first_name“ iš lentelės „actor“ .
SELECT first_name
FROM actor
5. Parašykite užklausą, kuri ištrauktų stulpelus „first_name“, „last_name“ iš lentelės „actor“ .
SELECT first_name, last_name
FROM actor
6. Parašykite užklausą, kuri ištrauktų stulpelus „first_name“, „last_name“ iš lentelės „actor“ surušiuotus pagal „last_name“ didėjimo tvarka.
SELECT first_name, last_name
FROM actor
ORDER BY last_name ASC
7. Parašykite užklausą, kuri ištrauktų stulpelus „first_name“, „last_name“ iš lentelės „actor“ surušiuotus pagal „last_name“ mažėjimo tvarka.
SELECT first_name, last_name
FROM actor
ORDER BY last_name DESC
8. Parašykite užklausą, kuri ištrauktų stulpelus „first_name“, „last_name“ iš lentelės „actor“ sugrupuotus pagal stulpelį „first_name“ ir surušiuotus pagal „first_name“ mažėjimo tvarka.
SELECT first_name, last_name
FROM actor
GROUP BY first_name
ORDER BY first_name DESC
9. Parašykite SQL užklausą, kuri ištrauktų visus stulpelius iš lentelės „actor“ , kur stulpelio „first_name“ reikšmė yra Nick.
SELECT * 
FROM actor
WHERE first_name = 'Nick'

10. Parašykite SQL užklausą, kuri ištrauktų visas skirtingas stulpelio „first_name“ reikšmes iš lentelės „actor“.


SELECT DISTINCT first_name 
FROM actor;

11. Parašykite SQL užklausą, kuri rezultate stulpelius atvaizduotų tokia tvarka kaip pateikta žemiau. Naudokite lentelę “actor”.


SELECT last_update, last_name, first_name
 FROM actor;

12. Parašykite SQL užklausą, kuri pateiktų visą informaciją apie filmus, kurių nuomos trukmė yra 6. Naudokite lentelę „film“.

SELECT rental_duration
FROM film
WHERE rental_duration = '6'


13. Parašykite SQL užklausą, kuri pateiktų filmo pavadinimą, aprašymą, išleidimo metus, reitingą, kai reitingas yra PG. Naudokite lentelę „film“.


SELECT title, description, release_year, rating
FROM film
WHERE rating = 'PG'

14. Parašykite SQL užklausą, kuri pateiktų filmo pavadinimą, nuomos kainą ir filmo trukmę, pagal filmo trukmę nuo trumpiausio iki ilgiausio. Naudokite lentelę „film“.

SELECT title, rental_rate, length 
FROM film
ORDER BY length ASC

15. Parašykite SQL užklausą, kuri ištrauktų filmo pavadinimą, nuomos trukmę, nuomos kainą, kai nuomos kaina yra 4.99 arba mažiau, o nuomos trukmė 5 ir 6. Naudokite lentelę „film“.

SELECT title, rental_duration, rental_rate
FROM film 
WHERE rental_rate <= '4.99'
OR rental_duration = ('5,6')


16. Parašykite SQL užklausą, kuri ištraukia filmo pavadinimą, filmo trukmę, nuomos kainą, žanro tipą, išskyrus tuos filmus, kur žanras nėra “Trailers”, pirmiausiai surušiuojant nuo trumpiausių iki ilgiausiai trunkančių filmų, o paskui pagal nuomos kainą. Naudokite lentelę „film“.

SELECT title, length, rental_rate, special_features
FROM film
WHERE NOT special_features = 'Trailers'
ORDER BY length ASC, rental_rate

//////////////////////////////////////////////////////////////////////////////////////////////

1. Parašykite SQL užklausą, kuri ištrauktų visus filmus, kurių žanro aprašyme nėra žodžio “Trailers”.
Naudokite lentelę „film“. 


SELECT title,special_features 
FROM film 
WHERE special_features NOT LIKE "%Trailers%";

SELECT title,special_features 
FROM film
WHERE special_features NOT LIKE "Trailers%";

SELECT *
FROM film
WHERE special_features IN ('Commentaries,Deleted Scenes,Behind the Scenes')




2. Parašykite SQL užklausą, kuri ištrauktų visus filmus, kurių žanro aprašymas prasideda žodžiu
“Trailers”. Naudokite lentelę „film“. 

SELECT title, special_features
FROM film
WHERE special_features LIKE 'Trailers%';
 


3. Parašykite užklausą, kuri ištraukia visus filmų pavadinimus, kurie prasideda raide „z“. Naudokite
lentelę „film“. 


SELECT title FROM film
WHERE title LIKE 'z%';

4. Parašykite užklausą, kuri ištraukia visus filmų pavadinimus, kurių antroji raidė yra “w”. Naudokite
lentelę „film“

SELECT title
FROM film 
WHERE SUBSTRING(title, 2, 1) = 'w'

SELECT first_name FROM table WHERE SUBSTR(last_name, 2, 1) = 'o';


SELECT title
FROM film
WHERE title LIKE '_w%';

5. Parašykite SQL užklausą, kuri ištraukia visus filmų pavadinimus, kurių antroji raidė yra “w”, o
ketvirtoji raidė yra “e”. Naudokite lentelę „film“. 

SELECT title
FROM film
WHERE title LIKE '_w_e%';

6. Parašykite SQL užklausą, kuri stulpelius title, description pervadina į stulpelius ‘filmo pavadinimas’,
‘aprašymas’ atitinkamai. ”. Naudokite lentelę „film“. 

SELECT title, description AS 'filmo_pavadinimas'
FROM film

7. Parašykite SQL užklausą, kuri ištraukia filmo pavadinimą, aprašymą, trukmę, kai trukmė yra tarp 46
ir 50, pradedant nuo trumpiausių. ”. Naudokite lentelę „film“. 

SELECT title, description, length 
FROM film
WHERE length BETWEEN 46 AND 50
ORDER BY ASC;


8. Parašykite SQL užklausą, kuri ištrauktų filmų pavadinimus, nuomos kainą, trukmę, kai nuomos kaina
yra 2.99 arba trukmė yra 130. Naudokite lentelę „film“


SELECT title, rental_rate, length 
FROM film
WHERE rental_rate = '2.99' OR length = '130'


9. Parašykite SQL užklausą, kuri ištraukia filmų pavadinimus, trukmę, nuomos kainą, kai trukmė yra 48
arba nuomos kaina nedidesnė negu 2.99. Naudokite lentelę „film“. 

SELECT title, rental_rate, length 
FROM film
WHERE length = '48' OR rental_rate <= '2.99'


10. Parašykite užklausą, pateikiančią visus klientus, kurie dar negrąžino išsinuomotų filmų. Naudokite
lentelę “rental”. 


SELECT *
FROM rental
WHERE return_date IS NULL;


11. Parašykite SQL užklausą, pateikiančią visus klientus, kurie grąžino išsinuomotus filmus. Naudokite
lentelę “rental”. 

SELECT *
FROM rental
WHERE NOT return_date IS NULL;

12. Parašykite SQL užklausą, kuri pateikia visą informaciją apie miestus, išskyrus miestus Adana, Abu
Dhabi ir Aden. Naudokite lentelę “city”. 


SELECT * 
FROM city
WHERE NOT city('Adana Abu Dhbi Aden');


13. Parašykite SQL užklausą, kuri pateikia visą informaciją apie nuomą tarp išnuomavimo laikotarpių
'2005-05-24 22:54:33' ir '2005-05-24 23:05:21'. Naudokite lentelę “rental”. 


SELECT * 
FROM rental
WHERE rental_date BETWEEN '2005-05-24 22:54:33' AND '2005-05-24 23:05:21';

//////////////

SELECT productLine, SUM(quantityInStock) AS total
FROM products
GROUP BY productLine
ORDER BY Total DESC;


SELECT AVG(buyPirce) AS Average
FROM products

SELECT MAX(MSRP) AS MaxPrice
FROM products
WHERE productScale LIKE "%12"; 
// is priekio% , kai reikalingi tokie skaiciai gale
// is galo % , kai skaiciai reiklingi priekyje
// %i% is abieju, kai betkur sakinyje ieskom

SELECT COUNT(*) AS count
FROM products
WHERE * is NOT null
WHERE productline = "Motorcycles";

SELECT COUNT(DISTINCT) AS count
FROM products

// COUNT skaiciuoja null reiksmes, kitos salygos neskaiciuoja


SELECT productName, buyPrice, MSRP, SUM(MSRP - buyPrice) AS Profit
FROM products
ORDER BY Profit DESC;


SELECT (COUNT(productLine)*AVG(MSRP - buyPrice)) AS Profit
FROM products
WHERE productline="Motorcycles";


SELECt productLine, SUM(quantityInStock) as Total
FROM products
GROUP BY productLine
HAVING SUM(quantityInStock)<50000;


1.  Parašykite SQL užklausą, kuri ištraukia filmo pavadinimą, nuomos kainą, (pavėluoto) grąžinimo kainą,
o bendra nuomos kaina ir (pavėluoto) grąžinimo kaina pateikiama naujame stulpelyje “total”.
Naudokite lentelę „film“. 

SELECT title,rental_rate, replacement_cost, (rental_rate replacement_cost) AS Total
FROM film;

2. Parašykite SQL užklausą, kuri pateiktų filmų sąrašą ir paskaičiuotų, kiek vieno filmo nuoma kainuoja
per dieną. Rezultatą pateikite naujame stulpelyje „cost per day“. Naudokite lentelę „film“. 

SELECT film_id, (rental_duration * rental_rate) "cost per day"
FROM film



3. Parašykite SQL užklausą, kuri paskaičiuoja bendrą visų mokėjimų sumą. Rezultatą pateikite
stulpelyje „Iš viso“. Naudokite lentelę „payment“.


SELECT SUM(amount)
FROM payment;

4. Parašykite SQL užklausą, kuri paskaičiuoja vidutinę visų mokėjimų sumą. Rezultatą pateikite
stulpelyje „Vidutinė suma“. Naudokite lentelę „payment“. 

SELECT AVG(amount) AS "Vidutine suma"
FROM payment;

5. Parašykite SQL užklausą, kuri paskaičiuotų, kiek yra darbuotojų. Rezultatą pateikite stulpelyje
'Darbuotojų skaičius”. Naudokite lentelę „payment'

SELECT COUNT(DISTINCT staff_id) AS 'Darbuotojų skaičius'
FROM payment;




6. Parašykite SQL užklausą, kuri paskaičiuoja, kiek yra atlikta mokėjimų. Rezultatą pateikite stulpelyje
„Iš viso mokėjmų“. Paskaičiuoti galima keliais būdais. Naudokite lentelę „payment“. 

SELECT COUNT(payment_date) AS 'Iš viso mokėjmų'
FROM payment;




7. Parašykite SQL užklausą, kuri ištraukia didžiausią atliktą įmoką. Rezultatą pateikite stulpelyje
„Didžiausias mokėjimas”. Naudokite lentelę „payment“. 

SELECT MAX(amount) AS 'Didžiausias mokėjimas'
FROM payment;

8. Parašykite SQL užklausą, kuri ištraukia mažiausią atliktą įmoką. Rezultatą pateikite stulpelyje
„Mažiausias mokėjimas”. Naudokite lentelę „payment“. 

SELECT MIN(amount) AS 'Mažiausias mokėjimas'
FROM payment
WHERE amount <> "0.00";

9. Parašykite SQL užklausą, kuri pateikia kiekvieno kliento didžiausią mokėjimą mažėjimo tvarka.
Naudokite lentelę „payment“.


SELECT customer_id , MAX(amount) FROM payment
GROUP BY customer_id
ORDER BY MAX(amount) DESC;

10. Parašykite SQL užklausą, kuri pateikia kiekvieno kliento didžiausią per dieną atliktą mokėjimą.
Naudokite lentelę „payment“. 


SELECT customer_id, DATE(payment_date), MAX(amount) FROM payment
GROUP BY customer_id, DATE(payment_date);

11. Parašykite SQL užklausą, kuri pateikia mažiausią kiekvieno kliento mokėjimą, atliktą 2005-07-08.
Naudokite lentelę „payment“. 

SELECT customer_id, MIN(amount), DATE(payment_date) FROM payment
WHERE DATE(payment_date) = '2005-07-8'
GROUP BY customer_id, DATE(payment_date);

12. Parašykite SQL užklausą, kuri pateiktų visus klientus, atlikusius mokėjimą 2005-07-08. Naudokite
lentelę „payment“. 

SELECT customer_id, payment_date
FROM payment
WHERE payment_date LIKE '2005-07-08%'
GROUP BY customer_id, DATE(payment_date);

SELECT customer_id, DATE(payment_date)
FROM payment
WHERE DATE(payment_date) = '2005-07-08'
GROUP BY customer_id, DATE(payment_date);

13. Parašykite SQL užklausą, pateikiančią klientų sąrašą ir didžiausią kiekvieno kliento mokėjimą, bet tik
tų klientų, kurių didžiausias atliktas mokėjimas didesnis negu 6.99, rušiuojant pagal didžiausią
mokėjimą didėjimo tvarka. Naudokite lentelę „payment“. 

SELECT customer_id, MAX(amount) FROM payment
GROUP BY customer_id
HAVING MAX(amount)>6.99 ORDER BY MAX(amount) ASC;

14. Parašykite SQL užklausą, pateikiančią klientų sąrašą su mokėjimo data ir didžiausiu kiekvieno
kliento mokėjimu per dieną, bet tik tų klientų, kurių atliktas didžiausias mokėjimas per dieną yra
tarp 3.99 ir 4.99. Naudokite lentelę „payment“. 


SELECT customer_id, MAX(amount), DATE(payment_date) FROM payment
GROUP BY customer_id, DATE(payment_date)
HAVING MAX(amount) BETWEEN 3.99 AND 4.99;

//////////// JUNGIMAI 


SELECT customers.customerName, orders.orderNumber, orders.STATUS
FROM orders
JOIN customers ON customers.customerNumber = orders.customerNumber;
ORDER BY orders.status ASC;


Parašykite SQL užklausą, sudarančią sąrašą su kliento vardu, kliento pavarde, atliktu mokėjimu ir mokėjimo kodu, tiems mokėjimams, kurių vertė yra tarp 4.99 ir 6.99. Naudokite lenteles customer ir payment.

SELECT c.first_name, c.last_name, p.amount, p.payment_id
FROM customer
INNER JOIN payment AS p ON p.customer_id = c.customer_id
WHERE p.amount BETWEEN 4.99 AND 6.99;


1. Parašykite SQL užklausą, parodančią, kokie pardavėjai kokius klientus aptarnauja. Naudokite lenteles „customer“ ir „ staff“.

SELECT customer.first_name as 'Kliento vardas',customer.last_name as 'Kliento pavarde', staff.first_name AS 'Darbuotojo vardas', staff.last_name AS 'Darbuotojo pavarde'
FROM staff
INNER JOIN customer on customer.store_id=staff.store_id;


2. Parašykitr SQL užklausą, pateikiančią kliento vardą, kliento pavardę, atliktą mokėjimą, mokėjimo
datą tiems mokėjimams, kurių vertė yra 2.99, 4.99, 6.99. Naudokite lenteles „customer“ ir
„payment“.

SELECT c.first_name 'Kliento vardas', c.last_name 'Kliento Pavardė', p.payment_id 'Atliktas/ų mokėjimas', p.payment_date 'Mokėjimo data', p.amount
FROM customer AS c
INNER JOIN payment as p ON c.customer_id = p.payment_id
WHERE p.amount IN ('2.99, 4.99, 6.99')



3. Parašykite SQL užklausą, pateikiančią kliento vardą, kliento pavardę, šalį (district) ir adresą.
Naudokite lenteles „customer“ ir „address“.

SELECT customer.first_name, customer.last_name, address.district, address.address
FROM customer
INNER JOIN address ON address.address_id=customer.address_id; 

4. Parašykite SQL užklausą, pateikiančią mokėjimo ID, mokėjimo datą, mokėjimo sumą, kliento vardą ir
pavardę, pardavėjo vardą ir pavardę. Naudokite lenteles „payment“, „customer“, „staff“

SELECT payment.payment_id, payment.payment_date, payment.amount, customer.first_name as 'kliento vardas', customer.last_name as 'kliento pavarde', staff.first_name as 'fdarbuotojo vardas', staff.last_name as 'darbuotojo pavarde'
FROM payment
inner join customer on customer.customer_id=payment.customer_id inner join staff on staff.staff_id=payment.staff_id;


5. Parašykite SQL užklausą, pateikiančią kiekvieno kliento, išleidusio nuomai iš viso nuo 150 iki 200,
vardą ir pavardę. Taip pat pateikite ir pardavėjo vardą bei pavardę, aptarnavusio šiuos klientus.
Rezultatą surušiuokite pagal iš viso išleistą sumą nuomai didėjimo tvarka. Naudokite lenteles
„payment“, „customer“, „staff“.

SELECT customer.first_name as 'kliento vardas', customer.last_name as 'kliento pavarde', staff.first_name as 'fdarbuotojo vardas', staff.last_name as 'darbuotojo pavarde', SUM(payment.amount)
FROM payment
inner join customer on customer.customer_id=payment.customer_id inner join staff on staff.staff_id=payment.staff_id
GROUP BY payment.customer_id
HAVING SUM(payment.amount) BETWEEN 150 AND 200 ORDER BY SUM(payment.amount) DESC;


6. Parašykite užklausą, kuri pateikia 2006-02-14 išnuomuotų filmų pavadinimus. Naudokite lenteles
„film“, „inventory“, „rental“.

SELECT a.film_id, a.title, c.rental_date
FROM film a
INNER JOIN inventory b ON a.film_id=b.film_id INNER JOIN rental c on b.inventory_id=c.inventory_id WHERE date(c.rental_date)='2006-02-14';


7. Parašykite užklausą, kuri paskaičiuoja, kiek klientė BARBARA JONES išleido nuomai per 2005 metus.
Naudokite lenteles „customer“ ir „payments“.

SELECT a.first_name,a.last_name, SUM(b.amount)
FROM customer a INNER JOIN payment b ON b.customer_id=a.customer_id
WHERE a.first_name = 'BARBARA' AND a.last_name ='JONES'
AND date(b.payment_date) BETWEEN '2005-01-01' AND '2005-12-31';


8. Parašykite SQL užklausą, pateikiančią klientų, gyvenančių Californijoje, vardus ir pavardes. Naudokite
lenteles „customer“ ir „address“.

SELECT a.first_name, a.last_name, b.district
 
FROM customer a INNER JOIN address b ON a.address_id=b.address_id WHERE b.district = 'California';


9. Parašykite užklausą, kuri paskaičiuoja, kiek yra klientų, gyvenančių Kalifornijoje.

SELECT COUNT(DISTINCT(a.first_name)), b.district
FROM customer a INNER JOIN address b ON a.address_id=b.address_id WHERE b.district = 'California';



///////////////// 


LEFT JOIN

1. Parašykite SQL užklausą, pateikiančią kiekvieno kliento vardą ir pavardę, ką jis išsinuomavo,
išsinuomavimo datą, grąžinimo datą, nuomos mokestį. Rezultatą surušiuokite pagal kliento ID.
Naudokite lenteles „customer“ ir „rental“, „payment“.

SELECT c.customer_id, c.first_name,c.last_name,
r.inventory_id, r.rental_date,r.return_date, r.rental_id,
p.amount
FROM customer c
LEFT JOIN rental r
ON c.customer_id=r.customer_id
LEFT JOIN payment p
on p.rental_id=r.rental_id;

2. Parašykite SQL užklausą, pateikiančią, ką klientas, vardu 'BARBARA' ir pavarde 'JONES', išsinuomavo,
išsinuomavimo datą, grąžinimo datą, nuomos mokestį. Rezultatą surūšiuokite pagal invetoriaus ID
didėjimo tvarka. Naudokite lenteles „customer“ ir „rental“, „payment“.

SELECT 'BARBARA', + 'JONES' , r.inventory_id, r.rental_id, r.rental_date, r.return_date, p.amount
FROM customer c JOIN rental r ON c.customer_id = r.customer_id 
LEFT JOIN payment p ON p.rental_id = r.rental_id 
ORDER BY inventory_id ASC;


RIGHT JOIN

1.  Parašykite SQL užklausą, kuri pateikia filmų negrąžinusių klientų vardą, pavardę, el.pašto adresą.
Naudokite lenteles „customer“ ir „rental“. Rezultatą surūšiuokite pagal kliento ID didėjimo tvarka.

SELECT  c.first_name, c.last_name, c.email
FROM customer c 
RIGHT JOIN rental r ON c.customer_id = r.customer_id
WHERE r.return_date IS NULL
ORDER BY c.customer_id ASC

VISOKIE

1. Pateikite filmus, kurių trukmė neilgesnė negu 90.

SELECT f.length, f.title
FROM film f
WHERE f.length < '90';

2. Pateikite filmų pavadinimus, nuomos kainą, trukmę, kai nuomos kaina yra 3.99 arba trukmė yra 130.

SELECT title , rental_rate, length
FROM film
WHERE rental_rate ='3.99' OR length = '130';

3. Pateikite visą informaciją apie filmų kategorijas, kurių pavadinimas prasideda bet kuria kita raide
negu tarp A ir E. 

SELECT *
FROM film f
JOIN film_category ON f.film_id = film_category.film_id
WHERE SUBSTR(f.title, 1, 1) NOT IN ("A","B","C","D","E");

SELECT *
FROM category
WHERE name NOT BETWEEN 'A%' AND 'E%';

4. Pateikite visą informaciją apie filmų kategorijas, kurių pavadinimas prasideda raide F, ketvirtoji
raidė yra I, o likusios raidės gali būti bet kokios. 

SELECT *
FROM film f
JOIN film_category ON f.film_id = film_category.film_id
WHERE f.title LIKE 'F%'
AND SUBSTR(f.title, 4, 1) = 'I'


SELECT *
FROM category
WHERE name LIKE 'F__I%';


5. Pateikite filmų sąrašą, kurių pavadinimas susideda iš 5 raidžių, o ketvirtoji raidė yra „m“. 

SELECT name
FROM category
WHERE name LIKE '___m_';

6. Pateikite filmų sąrašą, kurių pavadinime ketvirtoji raidė yra „m“.

SELECT name FROM category
WHERE name LIKE '___m%';

7. . Pateikite klientų sąrašą su mokėjimo data ir didžiausiu kiekvieno kliento mokėjimu, bet tik tų
klientų, kurių didžiausias mokėjimas per dieną didesnis negu 6.99, rušiuojant pagal didžiausią
mokėjimą mažėjimo tvarka. 


SELECT customer_id,payment_date,MAX(amount) FROM payment
GROUP BY customer_id,payment_date
HAVING MAX(amount)>6.99 ;

8. Pateikite klientų sąrašą su mokėjimo data ir didžiausiu kiekvieno kliento mokėjimu, bet tik tų
klientų, kurie turi didžiausią mokėjimą per dieną, lygų 2.99, 3.99 ir 4.99. 

SELECT customer_id,payment_date, MAX(amount) FROM payment
GROUP BY customer_id,payment_date
HAVING MAX(amount) IN ('2.99', '3.99','4.99');

9. Pateikite klientus, kurie nuomai išleido 200 ir daugiau. Nuomai išleistą sumą pateikite stulpelyje „Iš
viso“. 

SELECT customer_id,SUM(amount) AS 'Iš viso' FROM payment
GROUP BY customer_id
HAVING SUM(amount)>=200;

10. Paskaičiuokite, kiek nuomai išleido klientas, kurio ID yra 15. Nuomai išleistą sumą pateikite
stulpelyje „Išleido“. 

SELECT customer_id,SUM(amount) AS 'Išleido' FROM payment
WHERE customer_id=15;

11. Jums paskambino klientė Helen Harris ir klausia, ar yra filmų, kurių ji dar negrąžino?
Jeigu taip, kokie tų filmų pavadinimai?

SELECT customer.first_name, customer.last_name, film.title, rental.return_date FROM customer
LEFT JOIN rental ON rental.customer_id=customer.customer_id
LEFT JOIN inventory ON inventory.inventory_id=rental.inventory_id
LEFT JOIN film ON film.film_id=inventory.film_id
WHERE customer.first_name='HELEN' AND customer.last_name='HARRIS' AND rental.return_date IS NULL;

12. Kokiuose filmuose vaidino aktorė Uma Wood?

SELECT film.title, actor.first_name, actor.last_name
FROM film
LEFT JOIN film_actor ON film_actor.film_id=film.film_id
LEFT JOIN actor ON actor.actor_id=film_actor.actor_id
WHERE actor.first_name = 'Uma' AND actor.last_name = 'Wood';


13. Kiek klientė Amy Lopez sumokėjo už filmo Rocky War nuomą?


SELECT customer.first_name, customer.last_name, payment.amount, film.title FROM customer
LEFT JOIN payment ON payment.customer_id=customer.customer_id
LEFT JOIN rental ON rental.rental_id = payment.rental_id
LEFT JOIN inventory ON inventory.inventory_id=rental.inventory_id
LEFT JOIN film ON film.film_id=inventory.film_id
WHERE customer.first_name='Amy' AND customer.last_name = 'Lopez' AND
film.title = 'Rocky war';

14. Pateikite Graikijoje gyvenančių klientų vardą, pavardę ir miesto pavadinimą.

SELECT customer.first_name, customer.last_name, city.city, country.country FROM customer
LEFT JOIN address ON address.address_id=customer.address_id
LEFT JOIN city ON city.city_id = address.city_id
LEFT JOIN country ON country.country_id = city.country_id WHERE country.country = 'Greece';

15. Kiek iš viso kiekvienoje šalyje yra išleidžiama filmų nuomai?

SELECT SUM(payment.amount) AS 'Isleista nuomai',country.country FROM payment
LEFT JOIN customer ON customer.customer_id=payment.customer_id LEFT JOIN address ON address.address_id=customer.address_id
LEFT JOIN city ON city.city_id = address.city_id
LEFT JOIN country ON country.country_id = city.country_id GROUP BY country.country_id
ORDER BY SUM(payment.amount) DESC;


DESC - sąrašas nuo galo;

INSERT INTO actor (first_name, last_name)
VALUES ('Jonas', 'Jonaitis') 

UPDATE actor
SET first_name = 'Jonas'
WHERE actor_id = 201;

DELETE
FROM table_name
WHERE condition;
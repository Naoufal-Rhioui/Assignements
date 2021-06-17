--Question 1:
select c.first_name, c.last_name, a.district
from customer as c
inner join address as a
on c.address_id = a.address_id
where district = 'Texas'

--Question 2:
select first_name, last_name, amount
from customer as c
inner join payment as p
on c.customer_id = p.customer_id
where amount > 6.99

--Question 3:
select first_name, last_name, sum(amount) from
(select first_name, last_name, amount 
	from customer as c
	inner join payment as p
	on c.customer_id = p.customer_id) sub
group by first_name, last_name
having sum(amount) > 175

--Question 4:
select first_name, last_name, country
from customer 
inner join address on customer.address_id = address.address_id
inner join city on address.city_id = city.city_id
inner join country on city.country_id = country.country_id
where country = 'Nepal';

--Question 5:
select count(s.staff_id), first_name, last_name
from staff as s
inner join payment as p
on s.staff_id = p.staff_id
group by s.staff_id, first_name, last_name

--Question 6:
select rating, count(rating)
from film
group by rating

--Question 7:
select count(number_of_payments)
from(select customer_id, first_name, last_name, count(amount) as number_of_payments 
	 from(
		select c.customer_id,first_name, last_name, amount
		from customer as c
		inner join payment as p
		on c.customer_id = p.customer_id
		where amount > 6.99) as sub1
	group by customer_id, first_name, last_name
	having count(amount) =1) as sub2
	
--Question 8:
select count(payment)
from payment
where amount = 0













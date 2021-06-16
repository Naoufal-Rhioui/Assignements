INSERT INTO customer(
	customer_id,
	user_name,
	age,
	email
)VALUES(
	1,
	'King101',
	18,
	'fake.em@fakemail.com'	
);


INSERT INTO ticket(
	ticket_id,
	customer_id,
	auditorium_num,
	movie_id,
	seat_id,
	price
)VALUES(
	10,
	1,
	11,
	12,
	13,
	15
);

INSERT INTO movie(
	movie_id,
	movie_name,
	description
)VALUES(
	12,
	'James Bond 007',
	'This is a James Bond movie description'	
);

INSERT INTO auditorium(
	auditorium_num,
	seat_id,
	capacity,
	movie_id
)VALUES(
	11,
	13,
	100,
	12	
);


INSERT INTO seat(
	seat_id,
	seat_num,
	row_num
)VALUES(
	13,
	35,
	25	
);

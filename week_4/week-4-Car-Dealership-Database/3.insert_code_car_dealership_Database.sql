INSERT INTO car_inventory(
	car_inventory_id,
	car_id
)VALUES(
	1234,
	10203040
);

INSERT INTO car_inventory(
	car_inventory_id,
	car_id
)VALUES(
	2345,
	20304050
);

INSERT INTO parts_inventory(
	parts_inventory_id,
	parts_id,
	parts_name
)VALUES(
	9876,
	90807060,
	'Alternator'	
);

INSERT INTO parts_inventory(
	parts_inventory_id,
	parts_id,
	parts_name
)VALUES(
	8765,
	80706050,
	'Clockspring'	
);

INSERT INTO staff(
	staff_id,
	customer_id,
	first_name,
	last_name,
	role_
)VALUES(
	11,
	1,
	'Rida',
	'Khouribga',
	'Mechanic'
);

INSERT INTO staff(
	staff_id,
	customer_id,
	first_name,
	last_name,
	role_
)VALUES(
	22,
	2,
	'Mustapha',
	'Marrakech',
	'Salesman'
);

INSERT INTO customer(
	customer_id,
	type_,
	first_name,
	last_name,
	email,
	service_invoice
)VALUES(
	1,
	'service',
	'Khalid',
	'Chamal',
	'khalid.chamal@fake.com',
	1111	
);

INSERT INTO customer(
	customer_id,
	type_,
	first_name,
	last_name,
	email,
	sales_invoice
)VALUES(
	2,
	'sales',
	'Lena',
	'Agadir',
	'lena.agadir@fake.com',
	2222	
);

INSERT INTO car(
	car_id,
	car_make,
	car_model,
	car_year,
	car_color
)VALUES(
	9182,
	'Mercedes',
	'C300',
	2019,
	'white'
);

INSERT INTO car(
	car_id,
	car_make,
	car_model,
	car_year,
	car_color
)VALUES(
	7465,
	'BMW',
	'X5',
	2017,
	'Blue'
);

INSERT INTO service_sales(
	service_invoice,
	staff_id,
	customer_id,
	car_id,
	parts_inventory_id,
	service_type
)VALUES(
	1111,
	11,
	1,
	9182,
	8765,
	'change part'
);

INSERT INTO service_sales(
	service_invoice,
	staff_id,
	customer_id,
	car_id,
	parts_inventory_id,
	service_type
)VALUES(
	1122,
	12,
	7,
	9002,
	8995,
	'fix engine & change part'
);

INSERT INTO car_sales(
	sales_invoice,
	staff_id,
	customer_id,
	car_id,
	date_of_sale,
	phone_number
)VALUES(
	2222,
	22,
	2,
	7465,
	'01/01/2020',
	'1234567890'
);





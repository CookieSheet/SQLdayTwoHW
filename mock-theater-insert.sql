-- Insertion of data into Database Tables

-- Insert for customer table

INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	billing_info
) VALUES (
	1,
	'Roger',
	'Connery',
	'4242-4242-4242-4242 623 05/24'
);
-- Insert into movie table

INSERT INTO movie(
	movie_id,
	movie_name,
	movie_genre,
	movie_length,
	movie_rating
) VALUES (
	1,
	'From Russia With Dr. No',
	'Action',
	'44 minutes',
	'G'
);

--Insert into screen table

INSERT INTO screen(
	screen_id,
	seat_number,
	row_letter,
	movie_id
) VALUES (
	1,
	4,
	'M',
	1
);

--Insert into movie_time table

INSERT INTO movie_time(
	movie_time_id,
	showing_time,
	movie_id,
	screen_id
) VALUES (
	1,
	'afternoon',
	1,
	1
);

-- Insert into ticket table

INSERT INTO ticket(
	ticket_id,
	ticket_cost,
	movie_id,
	movie_time_id,
	screen_id
) VALUES (
	1,
	6.99,
	1,
	1,
	1
);

--Insert into ticket table

INSERT INTO concession(
	concession_id,
	employee_first_name
) VALUES (
	1,
	'Shawn'
);

-- Insert into receipt table

INSERT INTO receipt(
	receipt_id,
	product_name,
	product_cost,
	concession_id
) VALUES (
	1,
	'Nachos',
	12.99,
	1
);


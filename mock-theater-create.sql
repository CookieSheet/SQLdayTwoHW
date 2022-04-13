-- SQL CRREATE STATEMENTS

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	billing_info VARCHAR(150)
);

CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(150),
	movie_genre VARCHAR(150),
	movie_length VARCHAR(150),
	movie_rating VARCHAR(150)
);

CREATE TABLE screen(
	screen_id SERIAL PRIMARY KEY,
	seat_number INTEGER,
	row_letter VARCHAR(20),
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE movie_time(
	movie_time_id SERIAL PRIMARY KEY,
	showing_time VARCHAR(100),
	showing_date DATE DEFAULT CURRENT_DATE,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id),
	screen_id INTEGER NOT NULL,
	FOREIGN KEY(screen_id) REFERENCES screen(screen_id)
);

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	ticket_cost NUMERIC(8,2),
	transaction_data DATE DEFAULT CURRENT_DATE,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id),
	movie_time_id INTEGER NOT NULL,
	FOREIGN KEY(movie_time_id) REFERENCES movie_time(movie_time_id),
	screen_id INTEGER NOT NULL,
	FOREIGN KEY(screen_id) REFERENCES screen(screen_id)
);

CREATE TABLE concession(
	concession_id SERIAL PRIMARY KEY,
	employee_first_name VARCHAR(150)
);

CREATE TABLE receipt(
	receipt_id SERIAL PRIMARY KEY,
	product_name VARCHAR(150),
	product_cost NUMERIC(8,2),
	concession_id INTEGER NOT NULL,
	FOREIGN KEY(concession_id) REFERENCES concession(concession_id)
);

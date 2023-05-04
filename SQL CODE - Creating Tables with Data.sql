-- This SQL code creates two tables for a Fashion Stylist database: "stylists" and "categories".
-- The "stylists" table includes columns for the stylist's ID, first and last name, category, gender, birthdate, and phone number.
-- The "categories" table includes columns for the category ID, category type, release date, and the ID of the stylist who is responsible for that category.
-- The primary key of the "stylists" table is the "stylist_id" column, which is also referenced as a foreign key in the "categories" table.
-- The INSERT INTO statement adds three rows of data to the "stylists" table, each with a unique ID, first and last name, gender, birthdate, and phone number.
-- The 2nd INSERT INTO statement adds three rows of data to the "categories" table, each with a unique ID, category_type, release_date, and stylist_id.
-- The stylist_id value for each row corresponds to the stylist_id values in the stylists table, and is used as a foreign key to link the two tables together.

CREATE TABLE stylists (
	stylist_id INT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL, 
	gender CHAR(1) CHECK (gender IN ('M', 'F')),
	birth_date DATE,
	phone VARCHAR(50),
CONSTRAINT Pk_stylist_id PRIMARY KEY (stylist_id))
;

CREATE TABLE categories (
category_id INT NOT NULL,
category_type VARCHAR(50),
release_date DATE,
stylist_id INT NOT NULL,
CONSTRAINT pk_category_id PRIMARY KEY (category_id),
CONSTRAINT fk_stylist_id FOREIGN KEY (stylist_id) REFERENCES stylists (stylist_id)
);

INSERT INTO stylists (stylist_id, first_name, last_name, gender, birth_date, phone)
VALUES (2422, 'Sarah', 'Anderson', 'F', '1999-02-02', '229-093-3741'),
	   (6023, 'Larry', 'Mute', 'M', '1989-11-12', '932-091-2041'),
       (1324, 'Jack', 'Rueger', 'M', '2000-08-10', '701-293-3110')
;
       
INSERT INTO categories (category_id, category_type, release_date, stylist_id)
VALUES (0922, 'Streetwear', '2001-01-01', 1324),
	   (4300, 'Business', '1991-02-03', 6023),
       (1199, 'Old Fashion', '2018-09-11', 2422)
;

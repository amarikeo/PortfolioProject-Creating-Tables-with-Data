# Fashion Stylist Database
This SQL code creates two tables for a Fashion Stylist database: "stylists" and "categories". The "stylists" table includes columns for the stylist's ID, first and last name, category, gender, birthdate, and phone number. The "categories" table includes columns for the category ID, category type, release date, and the ID of the stylist who is responsible for that category.

#Tables
## stylists
* stylist_id - INT NOT NULL - Primary key for the table
* first_name - VARCHAR(50) NOT NULL - The stylist's first name
* last_name - VARCHAR(50) NOT NULL - The stylist's last name
* gender - CHAR(1) CHECK (gender IN ('M', 'F')) - The stylist's gender
* birth_date - DATE - The stylist's birthdate
* phone - VARCHAR(50) - The stylist's phone number

##categories
** *category_id -* INT NOT NULL - Primary key for the table
** category_type - VARCHAR(50) - The type of fashion category
** release_date - DATE - The date when the fashion category was released
** stylist_id - INT NOT NULL - The ID of the stylist who is responsible for that category. This field is a foreign key that ** references the "stylists" table.

# Data
The INSERT INTO statement adds three rows of data to the "stylists" table, each with a unique ID, first and last name, gender, birthdate, and phone number. The 2nd INSERT INTO statement adds three rows of data to the "categories" table, each with a unique ID, category_type, release_date, and stylist_id. The stylist_id value for each row corresponds to the stylist_id values in the stylists table, and is used as a foreign key to link the two tables together.

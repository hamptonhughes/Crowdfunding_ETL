CREATE TABLE contacts (
	contact_id int PRIMARY KEY NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(100) NOT NULL
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(30) PRIMARY KEY NOT NULL,
	subcategory VARCHAR(30) NOT NULL
);

CREATE TABLE category(
	category_id VARCHAR(30) PRIMARY KEY NOT NULL,
	category VARCHAR(30) NOT NULL
);

CREATE TABLE campaign (
	cf_id int PRIMARY KEY NOT NULL,
	contact_id int NOT NULL,
	FOREIGN KEY (contact_ID) REFERENCES contacts (contact_id),
	company_name VARCHAR(100) NOT NULL,
	description VARCHAR(100) NOT NULL,
	goal numeric NOT NULL,
	pledged numeric NOT NULL,
	outcome VARCHAR(30) NOT NULL,
	backers_count int NOT NULL,
	country VARCHAR(30) NOT NULL,
	currency VARCHAR(30) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(30) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	subcategory_id VARCHAR(30) NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id) 
);

select * from campaign;

select * from contacts;

select * from category;

select * from subcategory;
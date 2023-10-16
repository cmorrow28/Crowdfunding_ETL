CREATE TABLE Category(
	category_id VARCHAR(20) PRIMARY KEY,
	category VARCHAR(50) NOT NULL
);

CREATE TABLE Subcategory(
	subcategory_id VARCHAR(20) PRIMARY KEY,
	subcategory VARCHAR(50) NOT NULL
);

CREATE TABLE Contacts(
	contact_id INTEGER PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50)
);

CREATE TABLE Campaign(
	cf_id INTEGER PRIMARY KEY,
	contact_id INTEGER,
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
	category VARCHAR(50),
	FOREIGN KEY (category_id) REFERENCES Category(category_id),
	subcategory VARCHAR(50),
	FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id),
	company_name VARCHAR(50),
	description VARCHAR(255),
	goal DEC,
	pledged DEC,
	outcome BOOLEAN DEFAULT false,
	backers_count INTEGER,
	country VARCHAR(50)
	currency VARCHAR(20)
	launch_date DATE,
	end_date DATE
);


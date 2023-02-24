-- COFFEE_SHOP table
CREATE TABLE COFFEE_SHOP (
shop_id		INTEGER,
shop_name 	VARCHAR(50),
city 		VARCHAR(50),
state 		CHAR(2),
PRIMARY KEY(shop_id)
);

-- EMPLOYEE table
CREATE TABLE EMPLOYEE (
employee_id	INTEGER,
first_name	VARCHAR(30),
last_name	VARCHAR(30),
hire_date	DATE,
job_title	VARCHAR(30),
shop_id		INTEGER,
PRIMARY KEY(employee_id),
FOREIGN KEY(shop_id) REFERENCES COFFEE_SHOP(shop_id)
);

-- SUPPLIER table
CREATE TABLE SUPPLIER (
supplier_id 		INTEGER,
company_name 		VARCHAR(50),
country 			VARCHAR(30),
sales_contact_name 	VARCHAR(60),
email 			VARCHAR(50) 	NOT NULL,
PRIMARY KEY(supplier_id)
);

-- COFFEE table
CREATE TABLE COFFEE (
coffee_id 	INTEGER,
shop_id 		INTEGER, 
supplier_id 	INTEGER,
coffee_name 	VARCHAR(30),
price_per_pound 	NUMERIC(5,2),
PRIMARY KEY(coffee_id),
FOREIGN KEY(shop_id) REFERENCES COFFEE_SHOP(shop_id),
FOREIGN KEY(supplier_id) REFERENCES SUPPLIER(supplier_id)
);

-- COFFEE_SHOP INSERT
INSERT INTO COFFEE_SHOP (shop_id, shop_name, city, state)
VALUES (1, 'The Hogs Head', 'Seattle', 'WA'),
(2, 'The Three Broomsticks', 'Chandler', 'AZ'),
(3, 'The Leaky Cauldron', 'Bellingham', 'WA')
;

-- EMPLOYEE INSERT
INSERT INTO EMPLOYEE (employee_id, first_name, last_name, hire_date, job_title, shop_id)
VALUES (10, 'Albus', 'Dumbledore', '2019-01-01', 'Manager', 1), 
(20, 'Minerva', 'McGonagall', '2020-02-02', 'Assistant Manager', 2), 
(30, 'Dolores', 'Umbridge', '2021-03-03', 'Barista', 3)
;

-- SUPPLIER INSERT
INSERT INTO SUPPLIER (supplier_id, company_name, country, sales_contact_name, email)
VALUES (11, 'Hogwarts', 'United States', 'Neville Longbottom', 'IloveLuna@gmail.com' ),
(22, 'The Order', 'United States', 'Alastor Moody', 'MadEyeMoody@gmail.com'),
(33, 'The Ministry', 'United States', 'Cornelius Fudge', 'HesNotBack@gmail.com')
;

-- COFFEE INSERT
INSERT INTO COFFEE (coffee_id, shop_id, supplier_id, coffee_name, price_per_pound)
VALUES (101, 1, 11, 'Butter Beer', 10.00),
(102, 2, 22, 'Polyjuice Potion', 20.00),
(103, 3, 33, 'Pea Soup', 30.00)
;

-- EMPLOYEE VIEW
CREATE VIEW employeeView AS
SELECT employee_id, concat(first_name, ' ', last_name) employee_full_name, hire_date, job_title, shop_id
FROM EMPLOYEE
;

-- COFFEE table INDEX
CREATE INDEX coffee_name_index 
ON COFFEE (coffee_name)
;
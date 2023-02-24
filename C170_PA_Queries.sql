-- TABLES
/*
SELECT *
FROM COFFEE_SHOP;

SELECT *
FROM EMPLOYEE;

SELECT *
FROM SUPPLIER;

SELECT *
FROM COFFEE;
*/

-- TABLE Queries
SELECT *
FROM COFFEE_SHOP
WHERE shop_id = 3;

SELECT *
FROM EMPLOYEE
WHERE first_name = 'Minerva';

SELECT *
FROM SUPPLIER
WHERE company_name LIKE 'The%';

SELECT *
FROM COFFEE
WHERE coffee_name LIKE 'P%';

-- VIEW Query
SELECT *
FROM employeeView
WHERE job_title IS NOT NULL;

-- JOIN COFFEE, SUPPLIER, COFFEE_SHOP
SELECT shop_name, coffee_name, company_name, sales_contact_name, email
FROM SUPPLIER AS S
LEFT JOIN COFFEE AS C
ON S.supplier_id = C.supplier_id
JOIN COFFEE_SHOP AS CS
ON CS.shop_id = C.shop_id;

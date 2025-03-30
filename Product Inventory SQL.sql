/*
Data Cleaning in SQL
*/

-----------------------------------------------------------------------------------------------------------------------------

/*
View table and create duplicate table
*/

SELECT *
FROM products;

CREATE TABLE products1
LIKE products;

INSERT INTO products1
SELECT * 
FROM products;

SELECT *
FROM products1;

-------------------------------------------------------------------------------------------------------------------------------

/*
Check for duplicates
The dataset had no duplicates
*/

SELECT `Product ID`
FROM products1
GROUP BY 1
HAVING COUNT(*) > 1;

-------------------------------------------------------------------------------------------------------------------------------
/*
Delete table with incorrect data
*/

ALTER TABLE products1
DROP `Product Category`;

-------------------------------------------------------------------------------------------------------------------------------

/*
Check for blanks and null values
*/

SELECT *
FROM products1
WHERE `Product Name` = '' OR NULL;

SELECT *
FROM products1
WHERE Price = '' OR NULL;

SELECT *
FROM products1
WHERE `Stock Quantity` = '' OR NULL;

SELECT *
FROM products1
WHERE `Warranty Period` = '' OR NULL;

SELECT *
FROM products1
WHERE `Product Dimensions` = '' OR NULL;

SELECT *
FROM products1
WHERE `Manufacturing Date` = '' OR NULL;

SELECT *
FROM products1
WHERE `Expiration Date` = '' OR NULL;

SELECT *
FROM products1
WHERE SKU = '' OR NULL;

SELECT *
FROM products1
WHERE `Product Tags` = '' OR NULL;

SELECT *
FROM products1
WHERE `Color/Size Variations` = '' OR NULL;

SELECT *
FROM products1
WHERE `Product Ratings` = '' OR NULL;

--------------------------------------------------------------------------------------------------------------------------

/*
Standardize data
*/

ALTER TABLE products1
MODIFY COLUMN `Manufacturing Date` date;

ALTER TABLE products1
MODIFY COLUMN `Expiration Date` date;

-------------------------------------------------------------------------------------------------------------------------


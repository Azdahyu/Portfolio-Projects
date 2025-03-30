SELECT *
FROM products;

CREATE TABLE products1
LIKE products;

INSERT INTO products1
SELECT * 
FROM products;

SELECT *
FROM products1;

SELECT `Product ID`
FROM products1
GROUP BY 1
HAVING COUNT(*) > 1;

ALTER TABLE products1
DROP `Product Category`; #contains incorrect data

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

ALTER TABLE products1
MODIFY COLUMN `Manufacturing Date` date;

ALTER TABLE products1
MODIFY COLUMN `Expiration Date` date;


WITH CTElaptop AS (
	SELECT `Product Name`, Price
	FROM products1
	WHERE `Product Name` = 'Laptop'
    )
SELECT SUM(Price)
FROM CTElaptop;

WITH CTEheadphones AS (
    SELECT `Product Name`, Price
    FROM products1
    WHERE `Product Name` = 'Headphones'
    )
SELECT SUM(Price) Total_headphones_price
FROM CTEheadphones;

WITH CTEsmartphones AS (
    SELECT `Product Name`, Price
    FROM products1
    WHERE `Product Name` = 'Smartphone'
    )
SELECT SUM(Price)
FROM CTEsmartphones;

WITH CTEmonitor AS (
    SELECT `Product Name`, Price
    FROM products1
    WHERE `Product Name` = 'Monitor'
    )
SELECT SUM(Price)
FROM CTEmonitor;

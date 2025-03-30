/*
Exploratory Data Analysis (EDA) in MySQL
*/

-------------------------------------------------------------------------------------------------------------------

/*
View table and create a duplicate table
*/

SELECT *
FROM indian_traffic_violations;

CREATE TABLE indian_traffic_violations1
LIKE indian_traffic_violations;

INSERT INTO indian_traffic_violations1
SELECT *
FROM indian_traffic_violations;

SELECT *
FROM indian_traffic_violations1;

---------------------------------------------------------------------------------------------------------------------

/*
Check for duplicates 
*/
SELECT COUNT(Violation_ID) AS count_ID
FROM indian_traffic_violations1;

SELECT COUNT(DISTINCT Violation_ID) AS distinct_ID
FROM indian_traffic_violations1;

----------------------------------------------------------------------------------------------------------------------

/*
Check for blanks and null values
*/

SELECT *
FROM indian_traffic_violations1
WHERE Violation_Type = '' OR Violation_Type IS NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Fine_Amount = '' OR Fine_Amount IS NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Location = '' OR Location IS NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Vehicle_Type = '' OR Vehicle_Type IS NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Driver_Age = '' OR Driver_Age IS NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Driver_Gender = '' OR Driver_Gender IS NULL;

SELECT *
FROM indian_traffic_violations1
WHERE License_Type = '' OR License_Type IS NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Penalty_Points = '' OR Penalty_Points IS NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Weather_Condition = '' OR Weather_Condition IS NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Road_Condition = '' OR Road_Condition IS NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Issuing_Agency = '' OR Issuing_Agency IS NULL;

SELECT *
FROM indian_traffic_violations1
WHERE License_Validity = '' OR License_Validity IS NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Traffic_Light_Status = '' OR Traffic_Light_Status IS NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Speed_Limit = '' OR Speed_Limit IS NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Recorded_Speed = '' OR Recorded_Speed IS NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Alcohol_Level = '' OR Alcohol_Level IS NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Breathanalyzer_Result = '' OR Breathanalyzer_Result IS NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Court_Appearance_Required = '' OR Court_Appearance_Required IS NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Previous_Violations = '' OR Previous_Violations IS NULL;

---------------------------------------------------------------------------------------------------------------------

/*
Return each column with the number of violations
*/

SELECT Violation_Type, COUNT(Violation_Type) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER BY 2 DESC;

SELECT Location, COUNT(Violation_Type) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER BY 2 DESC;

SELECT Vehicle_Type, COUNT(Violation_Type) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

SELECT Driver_Age, COUNT(Violation_Type) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

SELECT Driver_Gender, COUNT(Violation_Type) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

SELECT License_Type, COUNT(Violation_Type) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

SELECT Violation_Type, AVG(Penalty_Points) AS avg_penalty_points
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

SELECT Weather_Condition, COUNT(Violation_Type) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

SELECT Road_Condition, COUNT(Violation_Type) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

SELECT Issuing_Agency, COUNT(Violation_Type) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

SELECT License_Validity, COUNT(Violation_Type) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

SELECT Traffic_Light_Status, COUNT(Violation_Type) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

SELECT Recorded_Speed, COUNT(Violation_Type) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

SELECT Alcohol_Level, COUNT(Violation_Type) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

SELECT Breathalyzer_Result, COUNT(Violation_Type) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

SELECT Fine_Paid, COUNT(Violation_Type) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

SELECT Court_Appearance_Required, COUNT(Violation_Type) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

SELECT Previous_Violations, COUNT(Violation_Type) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

--------------------------------------------------------------------------------------------------------------------

/*
Return the minimum and maximum fine amount for each violation type
*/

SELECT Violation_Type, MIN(Fine_Amount) min_fine, MAX(Fine_Amount) max_fine
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

--------------------------------------------------------------------------------------------------------------------

/*
Delete unused columns
*/

ALTER TABLE indian_traffic_violations1
DROP Date, Drop Time, Drop Vehicle_Color, DROP Vehicle_Model_Year, DROP Registration_State, DROP Officer_ID, DROP Number_of_Passengers, DROP Helmet_Worn, DROP Seatbelt_Worn, DROP Payment_Method, DROP Comments

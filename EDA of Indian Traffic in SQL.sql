/*
Exploratory Data Analysis (EDA) in MySQL Workbench
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

SELECT Violation_ID
FROM indian_traffic_violations1
GROUP BY Violation_ID
HAVING COUNT(*) > 1;

----------------------------------------------------------------------------------------------------------------------

/*
Check for blanks and null values in each column (there were no null or blank values)
*/

SELECT *
FROM indian_traffic_violations1
WHERE Violation_Type = '' OR NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Fine_Amount = '' OR NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Location = '' OR NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Vehicle_Type = '' OR NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Driver_Age = '' OR NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Driver_Gender = '' OR NULL;

SELECT *
FROM indian_traffic_violations1
WHERE License_Type = '' OR NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Penalty_Points = '' OR NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Weather_Condition = '' OR NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Road_Condition = '' OR NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Issuing_Agency = '' OR NULL;

SELECT *
FROM indian_traffic_violations1
WHERE License_Validity = '' OR NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Traffic_Light_Status = '' OR NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Speed_Limit = '' OR NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Recorded_Speed = '' OR NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Alcohol_Level = '' OR NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Breathalyzer_Result = '' OR NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Court_Appearance_Required = '' OR NULL;

SELECT *
FROM indian_traffic_violations1
WHERE Previous_Violations = '' OR NULL;

---------------------------------------------------------------------------------------------------------------------

--What are the types of violation and how many times have they been reported?

SELECT Violation_Type, COUNT(Violation_ID) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER BY 2 DESC;

--At what locations do these violations occur and how many violations were recored for each location?

SELECT Location, COUNT(Violation_ID) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER BY 2 DESC;

--What are the vehicle types and how many violations are recorded for each type?

SELECT Vehicle_Type, COUNT(Violation_ID) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

--What is the range of the drivers age and how many violations are recorded for each age?

SELECT Driver_Age, COUNT(Violation_ID) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

--What are the drivers gender and how many violations has each gender committed?

SELECT Driver_Gender, COUNT(Violation_ID) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

--What are the license types and how many violations are recorded for each type?

SELECT License_Type, COUNT(Violation_ID) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

--What is the average penalty point for each violation type?

SELECT Violation_Type, AVG(Penalty_Points) AS avg_penalty_points
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

--What was the weather condition when the violation was committed and how many times has these violations been committed during those weather conditions?

SELECT Weather_Condition, COUNT(Violation_ID) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

--What was the road condition when these violations were committed and how many violations are recorded for each road condition?

SELECT Road_Condition, COUNT(Violation_ID) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

--What issuing agency handled these violations and how many times has each agency handled a violation case?

SELECT Issuing_Agency, COUNT(Violation_ID) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

--What was the license validity of the drivers and many violations are recorded for each validity type?

SELECT License_Validity, COUNT(Violation_ID) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

--What was the status of the traffic light when these violations were committed and how many violations were recorded for each status?

SELECT Traffic_Light_Status, COUNT(Violation_ID) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

--What were the recorded speed and how many violations fall under each speed?

SELECT Recorded_Speed, COUNT(Violation_ID) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

--What were the alcohol level of the offenders and how many violations were recorded for each alcohol level?

SELECT Alcohol_Level, COUNT(Violation_ID) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

--What were the breath analyzer results and how many times was it conducted for each result?

SELECT Breathalyzer_Result, COUNT(Violation_ID) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

--Did the offenders pay their fine? How many paid or did not pay?

SELECT Fine_Paid, COUNT(Violation_ID) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

--Was it necessary for the offenders to appear in court and how many of them had to appear or not appear?

SELECT Court_Appearance_Required, COUNT(Violation_ID) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

--How many previous violations did the drivers have and how many more violations have they committed?

SELECT Previous_Violations, COUNT(Violation_ID) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

--What were the maximum and minimum fine amount for each violation type?

SELECT Violation_Type, MIN(Fine_Amount) min_fine, MAX(Fine_Amount) max_fine
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

--What was the average fine amount for each violation type?

SELECT Violation_Type, ROUND(AVG(Fine_Amount), 2) avg_fine
FROM indian_traffic_violations1
GROUP BY 1
ORDER BY 2 DESC;

--------------------------------------------------------------------------------------------------------------------

/*
Delete unused columns
*/

ALTER TABLE indian_traffic_violations1
DROP Date,
Drop Time, 
Drop Vehicle_Color, 
DROP Vehicle_Model_Year, 
DROP Registration_State, 
DROP Officer_ID,
DROP Number_of_Passengers, 
DROP Helmet_Worn, 
DROP Seatbelt_Worn,
DROP Towed,
DROP Payment_Method, 
DROP Comments

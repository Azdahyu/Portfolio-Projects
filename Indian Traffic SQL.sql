SELECT *
FROM indian_traffic_violations;

CREATE TABLE indian_traffic_violations1
LIKE indian_traffic_violations;

INSERT INTO indian_traffic_violations1
SELECT *
FROM indian_traffic_violations;

SELECT *
FROM indian_traffic_violations1;

SELECT MIN(Date) min_date, MAX(Date) max_date
FROM indian_traffic_violations1;

ALTER TABLE indian_traffic_violations1
DROP COLUMN Date;

SELECT COUNT(DISTINCT Violation_ID) AS distinct_ID
FROM indian_traffic_violations1;

SELECT *
FROM indian_traffic_violations1
WHERE Violation_Type = '' OR Violation_Type IS NULL;

ALTER TABLE indian_traffic_violations1
MODIFY COLUMN Time time;

SELECT DISTINCT Violation_Type
FROM indian_traffic_violations;

SELECT Violation_Type, COUNT(Violation_Type)
FROM indian_traffic_violations1
GROUP BY 1
ORDER BY 2 DESC;

SELECT Violation_Type, MIN(Fine_Amount) min_fine, MAX(Fine_Amount) max_fine
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

SELECT DISTINCT Location
FROM indian_traffic_violations1;

SELECT Location, COUNT(Violation_Type) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER BY 2 DESC;

SELECT DISTINCT Vehicle_Type
FROM indian_traffic_violations1;

SELECT Vehicle_Type, COUNT(Violation_Type) AS num_of_violations
FROM indian_traffic_violations1
GROUP BY 1
ORDER  BY 2 DESC;

SELECT DISTINCT Driver_Age
FROM indian_traffic_violations1
ORDER BY 1 DESC;

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


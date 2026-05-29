# SQL Learning Notes — EV Battery Project

---
## Day 1 — Aggregate Functions

**Date:** 19-05-2026

### 1. What I Learned Today
Today, I learned about Aggregate functions in SQL
I learned Average which finds average, SUM do the addition, Count just count the rows, MIN gets minimum value, MAX finds maximum value

### 2. Key Rules / Points
- Rule 1 Aggregate Functions works with Numbers
- Rule 2 Except, Count which count total no. of Rows
- Rule 3 Avg(Ram, Raman, Deeraj) gives error due to the concept of aggregate functions which is stated as they only calculate numbers not text.

### 3. Example Query I Wrote
```sql
Select Count(*) from ev_battery_Data;
```
Result: 10000

### 4. What Confused Me
First of all I'm a bit confused about aggregate functions but after a bit learning, i clear all my doubts 

### 5. How It Got Cleared
Let's take an example of average aggregate function, it works only on nos. but i found text out there, when I learned again then i find aggregate functions only works on numbers not on text.

### 6. Real-World Use In My Project
I use Count(*) to count total rows to confirm that the data imported properly.
___________________________________________________________________

## Day 2 — Aggregation and Sorting
**Date:** 19-02-2026

### 1. What I Learned Today
Today i learned Group By & Order By Clauses, Also pactice on AVG, Count Functions.
Group By is used to Group certain column for clearer picture.
Order By is used to order the result in ascending & descending order.
Also learned about Round Function which round off to n number of decimals 

### 2. Key Rules / Points
- Use DESC for descending & ASC for ascending durng filtering using ORDER BY.
- Use Round function with aggrigate functions to get a good result.
- First use Group By then use Order By in the Query

### 3. Example Query I Wrote
```sql
SELECT Battery_Type, ROUND(AVG(Internal_Resistance_Ohm), 4)
FROM dbo.ev_battery_data
GROUP BY Battery_Type
ORDER BY ROUND(AVG(Internal_Resistance_Ohm), 4) DESC;
```
Result: NMC	0.0349 
        LFP	0.0261

### 4. What Confused Me
   I confused in ordering result by average of SoH_Percent Column.
### 5. How It Got Cleared
   I'll try to write te query & got 1-2 errors, then got the understanding how to use it. & Result Confirmed all.  
### 6. Real-World Use In My Project
   Round Function used with Internal_Resistance_Ohm Column in this project.

___________________________________________________________________

## Day 3 — HAVING v/s WHERE

**Date:** 20-05-2026

### 1. What I Learned Today
Today I Learned "Where to use Having & Where in SQL Queries & There Sequence"
Both used for filtering the output.

### 2. Key Rules / Points
- Where works before group by to filter column data
- Having works on group set cuz it wait for grouping then filtering data 
- Where used before group by & having used after groupby

### 3. Example Query I Wrote
```sql
USE EV_Projects;
SELECT Car_Model, ROUND(AVG(SoH_Percent),2)
FROM dbo.ev_battery_data
WHERE Fast_Charge_Ratio > 0.5
GROUP BY Car_Model
Having AVG(SoH_Percent) < 95;
```
Result:
Ford Mustang Mach-E	94.71
Hyundai Ioniq 5	94.5
Tesla Model 3	94.52

### 4. What Confused Me
       I Confused here with having sequence
### 5. How It Got Cleared
       When i try to put having below groupby & got result then confusion cleared
### 6. Real-World Use In My Project
       When ever we group our result in query & want to filter that we use having in the project
___________________________________________________________________

## Day 4 — Operators(AND / OR)

**Date:** 21-05-2026

### 1. What I Learned Today
Today I Learned about operators
First I learn about AND operator which give result when both conditions are true
Then learnt about OR Operater which give result when one of the condition is True.
Lastly learned about mixed operation like we use AND, OR & Parentheses in a single query

### 2. Key Rules / Points
- For AND Operator Both conditions Should be True
- For OR Operator one of the condition to be True
- Using Both Operators in a Query, Parentheses makes a real difference in result

### 3. Example Query I Wrote
```sql
SELECT COUNT(Vehicle_ID) AS V_ID
FROM dbo.ev_battery_data
WHERE Car_Model = 'Tesla Model 3' AND (Vehicle_Age_Months > 60 OR Total_Charging_Cycles > 800);
```
Result: 778

### 4. What Confused Me
       Confused in using both operator in a single query
### 5. How It Got Cleared
       Using Parentheses 
### 6. Real-World Use In My Project
       When ever we have more than one condition we use operators in the project     
   
___________________________________________________________________

## Day 5 — CASE WHEN

**Date:** 22-05-2026

### 1. What I Learned Today
Today I learned a very intersting topic which is called CASE WHEN Switch Statement.
This Case When statement is helpful when you have more than one Statement

### 2. Key Rules / Points
- Statement Starts With CASE Then Conditions & Then Ends with END Statement
- We also can use CASE WHEN Switch Statements more than one time.
- WE Use Aggregate Functions after CASE WHEN END

### 3. Example Query I Wrote
```sql
SELECT
CASE 
	WHEN SoH_Percent > 90 THEN 'Healthy'
	WHEN SoH_Percent > 75 THEN 'Warning'
	ELSE 'Critical' 
END
AS Battery_Health_Status,
CASE 
	WHEN Total_Charging_Cycles > 800 THEN 'Heavy'
	WHEN Total_Charging_Cycles > 400 THEN 'Moderate'
	ELSE 'Light' 
END
AS Total_Charging_Cycles,
COUNT(*) AS Total_Vehicles
FROM dbo.ev_battery_data
GROUP BY CASE 
	WHEN SoH_Percent > 90 THEN 'Healthy'
	WHEN SoH_Percent > 75 THEN 'Warning'
	ELSE 'Critical' 
END,
CASE 
	WHEN Total_Charging_Cycles > 800 THEN 'Heavy'
	WHEN Total_Charging_Cycles > 400 THEN 'Moderate'
	ELSE 'Light' 
END;

```
Result:
Healthy	Moderate	3299
Healthy	Heavy	1088
Warning	Moderate	76
Healthy	Light	5003
Critical	Heavy	1
Warning	Heavy	533

### 4. What Confused Me
       I try 2 CASE WHEN in Same Query without understanding the logic, that Confuse me a a lot.
### 5. How It Got Cleared
       First i Understand how to use more than 1 CASE WHEN, Then i Feel Confident & the Results Cleared all the Confussion.
### 6. Real-World Use In My Project
       When using more than one condition to get the desired result like the query i used today.

___________________________________________________________________

## Day 6 — INNER JOIN

**Date:** 23-05-2026

### 1. What I Learned Today
Today I learned INNER JOIN which join two tables in a manner that we got output from both the tables, But there is a condition in INNER JOIN that it shows rows from table 2 only when matched with table 1. 

### 2. Key Rules / Points
- Join 2 Tables
- Shows matching data
- USE ON for defining commom column from both the Table

### 3. Example Query I Wrote
```sql
SELECT  t1.Car_Model,
ROUND(AVG(t1.SoH_Percent), 2) AS Avg_SoH_Percent
FROM dbo.ev_battery_data AS t1
INNER JOIN dbo.car_info AS t2
ON t1.Car_Model = t2.Car_Model
WHERE t2.Launch_Year >= 2020
GROUP BY t1.Car_Model
ORDER BY Avg_SoH_Percent DESC;
```
Result:
		BYD Atto 3	96.92
		Ford Mustang Mach-E	95.07
		Hyundai Ioniq 5	95.04

### 4. What Confused Me
       I Confused when I run Query & a column gives error.
### 5. How It Got Cleared
       Then I realize I forget to include Group By Clause, then I GROUP BY that Column & the error & my confussion cleared.  
### 6. Real-World Use In My Project
       When ever working with two Tables to get the desired Results from them.

___________________________________________________________________

## Day 7 — LEFT, RIGHT & FULL JOIN

**Date:** 25-05-2026

### 1. What I Learned Today
Today i learnt about joins.
First i learn about left join which gives you all rows from left table & matching rows from Right table.
Left join also shows null for values not matching.
Then i learn about Right join which gives you all rows from Right table & matching rows from Left table.
Right join also shows null for values not matching.
Lastly i learn about FULL outer join which gives you all rows from Both Right & Left Table.
Shows null for values not matching.

### 2. Key Rules / Points
- LEFT join shows Null for not matching values from right table. 
- RIGHT join shows Null for not matching values from left table.
- FULL outer Join Shows all values from both table. shows null for not matching values. 

### 3. Example Query I Wrote
```sql
SELECT DISTINCT
t1.Car_Model,
t2.Car_Model,
t2.Manufacturer_Country
FROM dbo.ev_battery_data AS t1
FULL OUTER JOIN dbo.car_info AS t2
ON t1.Car_Model = t2.Car_Model;

```
Result:
NULL	Nissan Leaf	Japan
NULL	Rivian R1T	USA
BYD Atto 3	BYD Atto 3	China
Ford Mustang Mach-E	Ford Mustang Mach-E	USA
Hyundai Ioniq 5	Hyundai Ioniq 5	South Korea
Kia EV6	NULL	NULL
Tesla Model 3	Tesla Model 3	USA
Wuling Air EV	Wuling Air EV	China

### 4. What Confused Me
	   NONE
### 5. How It Got Cleared
	   N/A	
### 6. Real-World Use In My Project
	   When Eevr working with more then one table & want to find missing values we use join.
___________________________________________________________________

## Day 8 — NULL Values (ISNULL / COALESCE) 

**Date:** 26-05-2026

### 1. What I Learned Today
Today i learned how to handle NULL values.
ISNULL works with column having null & a new value on the place of null.
COALESCE works same but it is a ANSI-standard SQL. works fine when you migrate your project from SSMS to another database engine (like PostgreSQL, Snowflake, or BigQuery)

### 2. Key Rules / Points
- When using IS NULL function in select clause must be one word with no space like ISNULL.
- COALESCE is ANSI Standard SQL easy to migrate project to another DB engine.  
- COALESCE look at more that 2 columns & return first non null value & finds from left to right.

### 3. Example Query I Wrote
```sql
SELECT DISTINCT
COALESCE(t1.Car_Model, t2.Car_Model) AS Car_Model,
COALESCE(t2.Manufacturer_Country, 'Unknown') AS Manufacturer_Country
FROM dbo.ev_battery_data AS t1
FULL OUTER JOIN dbo.car_info AS t2
ON t1.Car_Model = t2.Car_Model;
```
Result:
		Nissan Leaf	Japan
		Hyundai Ioniq 5	South Korea
		Wuling Air EV	China
		Rivian R1T	USA
		BYD Atto 3	China
		Tesla Model 3	USA
		Ford Mustang Mach-E	USA
		Kia EV6	Unknown

### 4. What Confused Me
   	I confused using IS NULL in select clause
### 5. How It Got Cleared
   	i forgot using ISNULL without space as a single word, then i remove space & result of query cleared the confussion.
### 6. Real-World Use In My Project
   	We Use ISNULL & COALESCE while handling null values in sql queries in our peoject.
___________________________________________________________________

## Day [X] — [Topic Name]

**Date:** [DD-MM-YYYY]

### 1. What I Learned Today
[Write 1-2 sentences in YOUR words about what this concept does]

### 2. Key Rules / Points
- [Rule 1 in your words]
- [Rule 2 in your words]
- [Rule 3 in your words]

### 3. Example Query I Wrote
```sql
[paste the actual query you ran in SSMS]
```
Result:

4. What Confused Me
5. How It Got Cleared
6. Real-World Use In My Project

# EV Battery Health Analytics — Project Context

## About Me
- Name: Jitender Maan
- GitHub: github.com/Jitender-Maan
- Daily project time: 1-2 hours

## Skill Level (Honest)
- Python: Beginner
- SQL: Beginner
- Power BI: Intermediate, needs depth

## Project Details
- **Title:** Predictive Battery Health Analytics for Electric Vehicles
- **Repo:** https://github.com/Jitender-Maan/EV-Battery-Health-Analytics-
- **Dataset:** EV Battery Degradation & Charge (Kaggle)
- **Rows:** 10,000
- **Columns:** 13
- **Target Variable:** SoH_Percent (regression, not classification)
- **Why regression:** Battery_Status is 99.96% "Healthy" — too imbalanced for classification

## Dataset Columns
- Vehicle_ID, Car_Model, Battery_Type, Battery_Capacity_kWh
- Vehicle_Age_Months, Total_Charging_Cycles
- Avg_Temperature_C, Fast_Charge_Ratio, Avg_Discharge_Rate_C
- Driving_Style, Internal_Resistance_Ohm
- SoH_Percent, Battery_Status

## 4-Phase Project Plan
1. **Phase 1: SQL** (current) — Database design + analytical queries in SSMS
2. **Phase 2: Python EDA** — Cleaning, visualization, feature importance
3. **Phase 3: Power BI** — 3-page dashboard with DAX measures
4. **Phase 4: Documentation** — GitHub + LinkedIn portfolio post

## Working Rules (NON-NEGOTIABLE)
- ✅ One question at a time, wait for my answer
- ✅ Confirm correct answers, then move forward
- ✅ I write my own code and notes (no copy-paste)
- ✅ No Google, no ChatGPT shortcuts
- ✅ Explain concepts BEFORE I apply them
- ✅ Wrong answers = learning opportunities
- ❌ No giving me ready-made solutions
- ❌ No information overload

## Tool Stack
- **Database:** Microsoft SQL Server (SSMS) — work PC
- **Notes:** sql_notes.md on GitHub (Markdown format)
- **Python:** Google Colab (when Phase 2 starts)
- **Dashboard:** Power BI (Phase 3)

## SQL Bootcamp Progress

### ✅ Day 1 — Aggregate Functions (COMPLETE)
- Learned: COUNT, SUM, AVG, MIN, MAX
- Key rule: Aggregates work on numbers only (except COUNT)
- Query practiced: SELECT COUNT(*) FROM ev_battery_data;
- Notes committed to sql_notes.md

### 🎯 Day 2 — GROUP BY (NEXT)
- Topic: How to slice data by category
- Example: Average SoH per Car_Model
- Status: Ready to start

## Pending Setup Tasks
- [ ] Confirm CSV imported successfully into SSMS
- [ ] Verify ev_battery_project database exists
- [ ] Test SELECT TOP 10 query in SSMS

## Today's Date Context
Day 1 was completed on 18-05-2026

Progress Report
Current Phase: Phase 1 (SQL)
Completed:
Day 1: Aggregate Functions (COUNT, AVG, SUM, etc.)
Day 2: GROUP BY, ORDER BY, and ROUND().
Database: EV_Projects
Table: ev_battery_data (10,000 rows verified).
Latest Insight: Identified NMC as the battery type with the highest internal resistance (~0.0349).
Next Topic: Day 3 — The HAVING Clause
Objective: Learning how to filter groups (not just rows).
Problem to solve: "How do I filter the results of an aggregate function?" (e.g., Show me only battery types where the average resistance is greater than X).
Why it matters: In your EV project, you’ll need this to isolate "problematic" car models or battery batches that fall below specific health thresholds.
See you tomorrow, Jitender. Great work today.
## Today's Date Context
Day 2 was completed on 19-05-2026

EV Battery Project — SQL Bootcamp Progress
User: Jitender Maan
Database: EV_Projects | Table: ev_battery_data (10,000 rows verified)
Phase: 1 (SQL in SSMS)

Completed Days:
Day 1: Aggregate Functions (COUNT, AVG, SUM, MIN, MAX)
Day 2: GROUP BY + ORDER BY + ROUND
Day 3: HAVING vs WHERE (filter rows vs filter groups)
Day 4: Logical Operators (AND, OR, Parentheses priority)
Key Insights Discovered:
Wuling Air EV has the highest average SoH (96.99%)
NMC battery type has the highest internal resistance (0.0349)
267 vehicles are in the "stressed" group (high temp + high discharge)
778 Tesla Model 3s are at risk (age > 60 months OR cycles > 800)
Next Topic: Day 5 — CASE WHEN
Creating custom categories (e.g., "Healthy", "Warning", "Critical")
Conditional logic in SELECT statements
Will feed directly into Power BI dashboard (Phase 3)
Working Rules (CRITICAL):
✅ One question at a time, wait for answer
✅ Explain concept BEFORE applying
❌ NEVER give ready-made queries or code
❌ No insights/comparisons unless asked
✅ User writes own code and notes
✅ Notes follow fixed template in sql_notes.md

## Today's Date Context
Day 3 & 4 was completed on 21-05-2026

EV Battery Project — SQL Bootcamp Progress
User: Jitender Maan
Database: EV_Projects | Table: ev_battery_data (10,000 rows verified)
Phase: 1 (SQL in SSMS) | Schedule: 9–11 AM, Mon–Sat

Completed Days:
Day 1: Aggregate Functions (COUNT, AVG, SUM, MIN, MAX)
Day 2: GROUP BY + ORDER BY + ROUND
Day 3: HAVING vs WHERE
Day 4: AND / OR / Parentheses
Day 5: CASE WHEN (Single + Combined categories)
Key Insights Discovered So Far:
Wuling Air EV = highest avg SoH (96.99%)
NMC battery = highest internal resistance (0.0349)
267 vehicles = stressed group (high temp + discharge)
778 Tesla Model 3s = at-risk (age OR cycles)
Battery Health distribution: 9,390 Healthy / 609 Warning / 1 Critical
Usage Level: 5,003 Light / 3,375 Moderate / 1,622 Heavy
Critical battery is in Heavy usage segment → confirms heavy usage = risk
Next Topic: Day 6 — JOINS (INNER JOIN)
Date: 23-05-2026 (Saturday)
Will introduce concept of joining tables
May need to create a second small lookup table for practice
Working Rules (CRITICAL — DO NOT BREAK):
✅ One question at a time, wait for answer
✅ Explain concept BEFORE applying
❌ NEVER give ready-made queries or full code
❌ No insights/comparisons unless asked
✅ User writes own code and notes
✅ Notes follow fixed template in sql_notes.md
✅ Step back immediately if user says "don't help me"

## Today's Date Context
Day 5 was completed on 22-05-2026

EV Battery Health Analytics — New Chat Summary
User: Jitender Maan
Repo: EV-Battery-Health-Analytics-
Current Phase: Phase 1 — SQL
Tool: SSMS
Database: EV_Projects
Main Table: dbo.ev_battery_data
Extra Table Created: dbo.car_info
Rows in main table: 10,000 verified

Project Context
Project Title: Predictive Battery Health Analytics for Electric Vehicles
Dataset: EV Battery Degradation & Charge (Kaggle)
Target Variable: SoH_Percent
Problem Type: Regression
Reason: Battery_Status is too imbalanced for classification
User Skill Level
Python: Beginner
SQL: Beginner
Power BI: Intermediate
Working Rules (IMPORTANT)
Ask one question at a time
Wait for my answer before moving forward
Explain concept before I apply it
I write my own code and notes
Do not give ready-made queries/full solutions
Do not overload
Wrong answers = learning opportunity
If I say “don’t help me,” step back immediately
SQL Bootcamp Progress
Day 1 — Aggregate Functions ✅
Learned:

COUNT, SUM, AVG, MIN, MAX
Day 2 — GROUP BY / ORDER BY / ROUND ✅
Learned:

Grouping by category
Sorting results
Rounding aggregated output
Day 3 — HAVING vs WHERE ✅
Learned:

WHERE filters rows
HAVING filters grouped/aggregated results
Day 4 — AND / OR / Parentheses ✅
Learned:

Multiple conditions
Parentheses change logic and results
Day 5 — CASE WHEN ✅
Learned:

Creating custom categories
Using multiple CASE blocks in one query
Repeating CASE logic in GROUP BY
Day 6 — INNER JOIN ✅
Learned:

Joining 2 tables on matching column
ON clause
Table aliases
Combined JOIN with WHERE + GROUP BY + ORDER BY
Tables Available
1. dbo.ev_battery_data
Columns include:

Vehicle_ID
Car_Model
Battery_Type
Battery_Capacity_kWh
Vehicle_Age_Months
Total_Charging_Cycles
Avg_Temperature_C
Fast_Charge_Ratio
Avg_Discharge_Rate_C
Driving_Style
Internal_Resistance_Ohm
SoH_Percent
Battery_Status
2. dbo.car_info
Created for JOIN practice:

Car_Model
Manufacturer_Country
Launch_Year
Inserted rows for:

Ford Mustang Mach-E
BYD Atto 3
Wuling Air EV
Hyundai Ioniq 5
Tesla Model 3
Key Findings So Far
Wuling Air EV has highest average SoH: 96.99
NMC has highest average internal resistance: 0.0349
267 vehicles matched stressed condition:
high temperature
high discharge rate
778 Tesla Model 3 matched age/cycle risk logic
Battery health categories:
Healthy: 9390
Warning: 609
Critical: 1
Usage levels:
Light: 5003
Moderate: 3375
Heavy: 1622
Critical + Heavy exists: 1
Average SoH by manufacturer country via JOIN:
China highest: 96.95
For models launched in 2020 or later, BYD Atto 3 had highest average SoH
Notes System
User maintains notes in sql_notes.md using this template:

Markdown

## Day [X] — [Topic]
**Date:** DD-MM-YYYY

### 1. What I Learned Today
### 2. Key Rules / Points
### 3. Example Query I Wrote
### 4. What Confused Me
### 5. How It Got Cleared
### 6. Real-World Use In My Project
Day 1 to Day 6 notes are completed.

Current Schedule Context
Working time for project: 9 AM – 11 AM
Working days: Monday to Saturday
Sunday off
Bootcamp schedule started from 18-05-2026
Next Topic
Day 7 — LEFT JOIN / RIGHT JOIN / FULL JOIN
Goal:

Understand what happens when rows do not match
Learn difference between INNER JOIN and other joins
## Today's Date Context
Day 6 was completed on 23-05-2026

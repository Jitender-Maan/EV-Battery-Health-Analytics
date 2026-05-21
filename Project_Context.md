# EV Battery Health Analytics — Project Context

## About Me
- Name: Jitender Maan
- GitHub: github.com/Jitender-Maan
- Daily project time: 1-2 hours

## Skill Level (Honest)
- Python: Weak (beginner)
- SQL: Beginner (thought I was intermediate, but proven beginner)
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

# EV Battery Health Analytics — Project Context

## About Me
- Name: Jitender Maan
- GitHub: github.com/Jitender-Maan
- Work PC only (SSMS available)
- Working hours: Mon-Sat, 9 AM to 8 PM
- Daily project time: 1-2 hours
- No personal PC, no work on Sundays

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
Day 1 was completed on 19-05-2026

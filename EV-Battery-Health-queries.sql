-- =================================================================================
-- Project Name:  Predictive Battery Health Analytics for Electric Vehicles
-- Author:        Jitender Maan
-- Database:      EV_Projects
-- Phase:         Phase 1 — SQL Analysis
-- Date:          30-05-2026
-- Description:   This script contains business intelligence queries to analyze 
--                EV battery degradation, performance, and fleet risk.
-- =================================================================================

-- 1. Ensure the correct database is used
      USE EV_Projects;
      GO


-- =================================================================================
-- Query 1: Battery Chemistry Performance Analysis
-- Description: Compares LFP and NMC battery chemistries to evaluate degradation
--              and internal resistance trends across the fleet.
-- =================================================================================

-- 
SELECT COUNT(Vehicle_ID) AS V_ID,
ROUND(AVG(SoH_Percent), 2)AS Avg_SoH_Percent,
MIN(SoH_Percent) AS Min_SoH_Percent,
MAX(SoH_Percent) AS Max_SoH_Percent,
ROUND(AVG(Internal_Resistance_Ohm), 4) AS Avg_Internal_Resistance_Ohm,
Battery_Type
FROM dbo.ev_battery_data
GROUP BY Battery_Type;

-- =================================================================================
-- Query 2: Country of Origin Health Performance
-- Description: Evaluates average State of Health (SoH) grouped by manufacturer 
--              country, handling missing lookup values with default labels.
-- =================================================================================

-- 
SELECT
ISNULL(t2.Manufacturer_Country, 'UNKNOWN') AS Manufacturer_Country,
COUNT(t1.Vehicle_ID) AS Vehicle_Count,
ROUND(AVG(t1.SoH_Percent), 2) AS Avg_SoH_Percent
FROM dbo.ev_battery_data t1
FULL OUTER JOIN dbo.car_info AS t2
ON t1.Car_Model = t2.Car_Model
GROUP BY Manufacturer_Country
ORDER BY Avg_SoH_Percent DESC;

-- =================================================================================
-- Query 3: Identifying High-Risk Vehicles for Maintenance
-- Description: Identifies priority vehicles for inspection based on age, 
--              degradation (SoH < 90%), and critical status flags.
-- =================================================================================

-- 
SELECT Vehicle_ID, Car_Model, Vehicle_Age_Months, SoH_Percent, Battery_Status
FROM dbo.ev_battery_data
WHERE (SoH_Percent < 90 AND Vehicle_Age_Months > 24) OR (Battery_Status IN ('Critical', 'Warning'))
ORDER BY SoH_Percent ASC;


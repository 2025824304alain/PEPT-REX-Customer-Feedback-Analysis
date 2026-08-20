CREATE DATABASE pept_rex;

Show databases;

CREATE TABLE pept_raw (
    id INT,
    timestamp_value VARCHAR(50),
    locality VARCHAR(100),
    enumerator VARCHAR(100),
    survey_date VARCHAR(30),
    beneficiary_name VARCHAR(150),
    number_of_meters VARCHAR(20),
    meter_numbers TEXT,
    beneficiary_age VARCHAR(50),
    gender VARCHAR(30),
    education_level VARCHAR(100),
    occupation VARCHAR(150),
    household_size VARCHAR(30),
    monthly_income VARCHAR(50),
    electricity_access_before_pept TEXT,
    pept_start_year VARCHAR(20),
    connection_duration VARCHAR(30),
    connection_difficulty VARCHAR(50),
    connection_difficulty_details TEXT,
    connection_satisfaction VARCHAR(20),
    meter_training VARCHAR(50),
    training_sufficient VARCHAR(50),
    income_increase VARCHAR(50),
    income_increase_explanation TEXT,
    income_generating_activity VARCHAR(50),
    activity_type TEXT,
    monthly_energy_expenditure VARCHAR(50),
    expenditure_comparison VARCHAR(100),
    fee_affordable VARCHAR(50),
    payment_difficulty VARCHAR(50),
    payment_difficulty_reason TEXT,
    quality_of_life_improvement VARCHAR(50),
    quality_of_life_details TEXT,
    education_improvement VARCHAR(50),
    education_details TEXT,
    health_improvement VARCHAR(50),
    health_details TEXT,
    gender_inequality_reduction VARCHAR(50),
    safety_improvement VARCHAR(50),
    electrical_appliances TEXT,
    daily_electricity_hours VARCHAR(30),
    reduced_other_energy VARCHAR(50),
    reduced_energy_expenses VARCHAR(50),
    pept_satisfaction VARCHAR(20),
    main_benefits TEXT,
    challenges TEXT,
    suggestions TEXT,
    recommendation_score VARCHAR(20),
    recommendation_reason TEXT,
    reduced_polluting_sources VARCHAR(50),
    environmental_improvement VARCHAR(50),
    future_electricity_projects TEXT,
    extend_electricity_consumption VARCHAR(50),
    planned_appliances TEXT,
    future_obstacles TEXT
);

use pept_rex;
SELECT COUNT(*) AS total_records
FROM pept_raw;

SELECT *
FROM pept_raw
LIMIT 10;


SELECT COUNT(DISTINCT id) AS unique_ids
FROM pept_raw;

SELECT
    id,
    COUNT(*) AS occurrences
FROM pept_raw
GROUP BY id
HAVING COUNT(*) > 1;

SELECT COUNT(*) AS missing_gender
FROM pept_raw
WHERE gender IS NULL
   OR TRIM(gender) = '';
   
   SELECT COUNT(*) AS missing_satisfaction
FROM pept_raw
WHERE pept_satisfaction IS NULL
   OR TRIM(pept_satisfaction) = '';
   
   SELECT COUNT(*) AS missing_locality
FROM pept_raw
WHERE locality IS NULL
   OR TRIM(locality) = '';
   
   select*
   from pept_raw;
   
   SET SQL_SAFE_UPDATES = 1;
   SET SQL_SAFE_UPDATES = 0;


   UPDATE pept_raw
SET payment_difficulty =
    CASE
        WHEN UPPER(TRIM(payment_difficulty)) IN ('OUI', 'YES')
            THEN 'YES'
        WHEN UPPER(TRIM(payment_difficulty)) IN ('NON', 'NO')
            THEN 'NO'
        ELSE NULL
    END;
    
    UPDATE pept_raw
SET fee_affordable =
    CASE
        WHEN UPPER(TRIM(fee_affordable)) = 'OUI'
            THEN 'YES'
        WHEN UPPER(TRIM(fee_affordable)) = 'NON'
            THEN 'NO'
        ELSE NULL
    END;
    
     UPDATE pept_raw
SET connection_difficulty =
    CASE
        WHEN UPPER(TRIM(connection_difficulty)) = 'OUI'
            THEN 'YES'
        WHEN UPPER(TRIM(connection_difficulty)) = 'NON'
            THEN 'NO'
        ELSE NULL
    END;
    
    UPDATE pept_raw
SET meter_training =
    CASE
        WHEN UPPER(TRIM(meter_training)) = 'OUI'
            THEN 'YES'
        WHEN UPPER(TRIM(meter_training)) = 'NON'
            THEN 'NO'
        ELSE NULL
    END; 
    
    
    UPDATE pept_raw
SET training_sufficient =
    CASE
        WHEN UPPER(TRIM(training_sufficient)) = 'OUI'
            THEN 'YES'
        WHEN UPPER(TRIM(training_sufficient)) = 'NON'
            THEN 'NO'
        ELSE NULL
    END; 
    
    
    UPDATE pept_raw
SET income_increase =
    CASE
        WHEN UPPER(TRIM(income_increase)) = 'OUI'
            THEN 'YES'
        WHEN UPPER(TRIM(income_increase)) = 'NON'
            THEN 'NO'
        ELSE NULL
    END; 
    
    
   UPDATE pept_raw
SET income_generating_activity =
    CASE
        WHEN UPPER(TRIM(income_generating_activity)) = 'OUI'
            THEN 'YES'
        WHEN UPPER(TRIM(income_generating_activity)) = 'NON'
            THEN 'NO'
        ELSE NULL
    END;   
    
    Select*
    from pept_raw;
    
     
      UPDATE pept_raw
SET quality_of_life_improvement =
    CASE
        WHEN UPPER(TRIM(quality_of_life_improvement)) = 'OUI'
            THEN 'YES'
        WHEN UPPER(TRIM(quality_of_life_improvement)) = 'NON'
            THEN 'NO'
        ELSE NULL
    END;  
    
    -- 
     UPDATE pept_raw
SET education_improvement =
    CASE
        WHEN UPPER(TRIM(education_improvement)) = 'OUI'
            THEN 'YES'
        WHEN UPPER(TRIM(education_improvement)) = 'NON'
            THEN 'NO'
        ELSE NULL
    END; 
    
      UPDATE pept_raw
SET health_improvement =
    CASE
        WHEN UPPER(TRIM(health_improvement)) = 'OUI'
            THEN 'YES'
        WHEN UPPER(TRIM(health_improvement)) = 'NON'
            THEN 'NO'
        ELSE NULL
    END;  
   
   
     UPDATE pept_raw
SET gender_inequality_reduction =
    CASE
        WHEN UPPER(TRIM(gender_inequality_reduction)) = 'OUI'
            THEN 'YES'
        WHEN UPPER(TRIM(gender_inequality_reduction)) = 'NON'
            THEN 'NO'
        ELSE NULL
    END;  
    
     
     UPDATE pept_raw
SET safety_improvement =
    CASE
        WHEN UPPER(TRIM(safety_improvement)) = 'OUI'
            THEN 'YES'
        WHEN UPPER(TRIM(safety_improvement)) = 'NON'
            THEN 'NO'
        ELSE NULL
    END;  
   
   UPDATE pept_raw
SET reduced_other_energy =
    CASE
        WHEN UPPER(TRIM(reduced_other_energy)) = 'OUI'
            THEN 'YES'
        WHEN UPPER(TRIM(reduced_other_energy)) = 'NON'
            THEN 'NO'
        ELSE NULL
    END;  
    
    
     UPDATE pept_raw
SET reduced_energy_expenses =
    CASE
        WHEN UPPER(TRIM(reduced_energy_expenses)) = 'OUI'
            THEN 'YES'
        WHEN UPPER(TRIM(reduced_energy_expenses)) = 'NON'
            THEN 'NO'
        ELSE NULL
    END; 
    
     UPDATE pept_raw
SET reduced_polluting_sources =
    CASE
        WHEN UPPER(TRIM(reduced_polluting_sources)) = 'OUI'
            THEN 'YES'
        WHEN UPPER(TRIM(reduced_polluting_sources)) = 'NON'
            THEN 'NO'
        ELSE NULL
    END; 
    
     UPDATE pept_raw
SET environmental_improvement =
    CASE
        WHEN UPPER(TRIM(environmental_improvement)) = 'OUI'
            THEN 'YES'
        WHEN UPPER(TRIM(environmental_improvement)) = 'NON'
            THEN 'NO'
        ELSE NULL
    END; 
    
    
    UPDATE pept_raw
SET extend_electricity_consumption =
    CASE
        WHEN UPPER(TRIM(extend_electricity_consumption)) = 'OUI'
            THEN 'YES'
        WHEN UPPER(TRIM(extend_electricity_consumption)) = 'NON'
            THEN 'NO'
        ELSE NULL
    END; 
    
    Select*from pept_raw;
    
    -- START TRANSACTION is very important because it begins a group of SQL operations that you can either save with COMMIT or undo with ROLLBACK. 
    START TRANSACTION;
 -- This If you mean “rollback” / go back to the previous action in MySQL, the command you are looking for is usually ROLLBACK.
    ROLLBACK;
    
  START TRANSACTION;   
UPDATE pept_raw
SET locality = 'Odienne-Sienso'
WHERE TRIM(locality) = 'OdiennÃ©-Sienso';
commit;

START TRANSACTION;   
UPDATE pept_raw
SET enumerator = 'Drabo'
WHERE TRIM(enumerator) = 'drabo';
commit;

START TRANSACTION;   
UPDATE pept_raw
SET enumerator = 'Fofana'
WHERE TRIM(enumerator) = 'fofana bourgoin';
commit;

START TRANSACTION;   
UPDATE pept_raw
SET enumerator = 'TETIALI ZOHONON MICHELLE EPSE ZOBRE '
WHERE TRIM(enumerator) = 'TETIALI ZOHONON EPSE ZOBRE';
commit;

-- TETIALI ZOHONON MICHELLE EPSE ZOBRE  T;IALI ZOHONON EPSE ZOBRE
-- Mossou Isaac

START TRANSACTION;   
UPDATE pept_raw
SET enumerator = 'Mossou Isaac'
WHERE TRIM(enumerator) = 'Mossou';
commit;

-- CREATE THE CLEAN TABLE
CREATE TABLE pept_clean AS
SELECT *
FROM pept_raw;

-- How satisfied are PEPT customers?

SELECT
    pept_satisfaction,
    COUNT(*) AS number_of_customers
FROM pept_clean
GROUP BY pept_satisfaction
ORDER BY pept_satisfaction;

-- CALCULATE SATISFACTION RATE
SELECT
    ROUND(
        SUM(CASE
            WHEN pept_satisfaction >= 4 THEN 1
            ELSE 0
        END)
        * 100.0 / COUNT(pept_satisfaction),
        2
    ) AS satisfaction_rate
FROM pept_clean;

-- ANALYZE THE PAYMENT PROBLEM
SELECT
    payment_difficulty,
    COUNT(*) AS customers
FROM pept_clean
GROUP BY payment_difficulty;

-- FIND OUT WHY
SELECT
    payment_difficulty_reason,
    COUNT(*) AS frequency
FROM pept_clean
WHERE payment_difficulty = 'YES'
GROUP BY payment_difficulty_reason
ORDER BY frequency DESC;


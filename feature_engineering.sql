-- Source: Output of cleaning_and_preprocessing.sql
-- Selecting FROM a cleaned view

SELECT 
  *,  -- bring in all cleaned fields from previous step

  -- Age group
  CASE 
    WHEN age BETWEEN 18 AND 29 THEN '18–29'
    WHEN age BETWEEN 30 AND 44 THEN '30–44'
    WHEN age BETWEEN 45 AND 59 THEN '45–59'
    ELSE '60+'
  END AS age_group,

  -- BMI category
  CASE
    WHEN bmi < 18.5 THEN 'Underweight'
    WHEN bmi BETWEEN 18.5 AND 24.9 THEN 'Normal'
    WHEN bmi BETWEEN 25 AND 29.9 THEN 'Overweight'
    ELSE 'Obese'
  END AS bmi_category,

  -- General health label
  CASE 
    WHEN general_health_rating = 1 THEN 'Excellent'
    WHEN general_health_rating = 2 THEN 'Very Good'
    WHEN general_health_rating = 3 THEN 'Good'
    WHEN general_health_rating = 4 THEN 'Fair'
    WHEN general_health_rating = 5 THEN 'Poor'
    ELSE 'Unknown'
  END AS general_health_label,

  -- Composite risk score (0–6)
  (
    high_bp + high_cholesterol + heart_disease +
    stroke_history + smoker_status + physical_activity
  ) AS risk_score

FROM v_cleaned_health_data;
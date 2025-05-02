SELECT 
Diabetes_012 AS diabetes_status, 
HighBP AS high_bp,
HighChol AS high_cholesterol, #avoids ambiguity
CholCheck AS cholesterol_check, #clearer for dashboards
BMI AS bmi,
Smoker AS smoker_status, #smoker alone could mean count or frequency
Stroke AS stroke_history, #clariffies as history
HeartDiseaseorAttack AS heart_disease, #simplifies
PhysActivity AS physical_activity, #easier to identify
Fruits AS eats_fruit_daily, #binary flag
Veggies AS eats_vegetables_daily, #binary flag
HvyAlcoholConsump AS heavy_alcohol_use, #more intuitive
AnyHealthcare AS has_healthcare, #yes or no flag
NoDocbcCost AS avoided_doctor_due_cost, #clarrifies
GenHlth AS general_health_rating, #ordinal scale 1-5
MentHlth AS mental_health_days, # number of days, not binary
PhysHlth AS physical_health_days, #number of days
DiffWalk AS difficulty_walking, # binary dissability flag
Sex AS sex,
Age AS age,
Education AS education,
Income AS income

FROM diabetes_012_health_indicators_brfss2015;
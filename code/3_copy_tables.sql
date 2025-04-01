--Load dailyActivity_merged.csv data into daily_activity_mar table
COPY daily_activity_mar
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_mar\dailyActivity_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load heartrate_seconds_merged.csv data into heart_rate_seconds_mar table
COPY heart_rate_seconds_mar
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_mar\heartrate_seconds_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load hourlyCalories_merged.csv data into hourly_calories_mar table
COPY hourly_calories_mar
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_mar\hourlyCalories_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load hourlyIntensities_merged.csv data into hourly_intensities_mar table
COPY hourly_intensities_mar
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_mar\hourlyIntensities_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load hourlySteps_merged.csv data into hourly_steps_mar table
COPY hourly_steps_mar
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_mar\hourlySteps_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load minuteCaloriesNarrow_merged.csv data into minute_calories_mar table
COPY minute_calories_mar
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_mar\minuteCaloriesNarrow_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load minuteIntensitiesNarrow_merged.csv data into minute_intensities_mar table
COPY minute_intensities_mar
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_mar\minuteIntensitiesNarrow_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load minuteMETsNarrow_merged.csv data into minute_mets_mar table
COPY minute_mets_mar
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_mar\minuteMETsNarrow_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load minuteSleep_merged.csv data into minute_sleep_mar table
COPY minute_sleep_mar
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_mar\minuteSleep_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load minuteStepsNarrow_merged.csv data into minute_steps_mar table
COPY minute_steps_mar
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_mar\minuteStepsNarrow_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load weightLogInfo_merged.csv data into weight_log_info_mar table
COPY weight_log_info_mar
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_mar\weightLogInfo_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load dailyActivity_merged.csv data into daily_activity_apr table
COPY daily_activity_apr
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_apr\dailyActivity_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load dailyCalories_merged.csv data into daily_calories_apr table
COPY daily_calories_apr
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_apr\dailyCalories_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load dailyIntensities_merged.csv data into daily_intensities_apr table
COPY daily_intensities_apr
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_apr\dailyIntensities_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load dailySteps_merged.csv data into daily_steps_apr table
COPY daily_steps_apr
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_apr\dailySteps_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load heartrate_seconds_merged.csv data into heart_rate_seconds_apr table
COPY heart_rate_seconds_apr
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_apr\heartrate_seconds_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load hourlyCalories_merged.csv data into hourly_calories_apr table
COPY hourly_calories_apr
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_apr\hourlyCalories_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load hourlyIntensities_merged.csv data into hourly_intensities_apr table
COPY hourly_intensities_apr
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_apr\hourlyIntensities_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load hourlySteps_merged.csv data into hourly_steps_apr table
COPY hourly_steps_apr
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_apr\hourlySteps_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load minuteCaloriesNarrow_merged.csv data into minute_calories_apr table
COPY minute_calories_apr
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_apr\minuteCaloriesNarrow_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load minuteIntensitiesNarrow_merged.csv data into minute_intensities_apr table
COPY minute_intensities_apr
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_apr\minuteIntensitiesNarrow_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load minuteMETsNarrow_merged.csv data into minute_mets_apr table
COPY minute_mets_apr
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_apr\minuteMETsNarrow_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load minuteSleep_merged.csv data into minute_sleep_apr table
COPY minute_sleep_apr
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_apr\minuteSleep_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load minuteStepsNarrow_merged.csv data into minute_steps_apr table
COPY minute_steps_apr
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_apr\minuteStepsNarrow_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load sleepDay_merged.csv data into sleep_day_apr table
COPY sleep_day_apr
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_apr\sleepDay_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

--Load weightLogInfo_merged.csv data into weight_log_info_apr table
COPY weight_log_info_apr
FROM 'G:\Project\Bellabeat-1\dataset\fitabase_data_apr\weightLogInfo_merged.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
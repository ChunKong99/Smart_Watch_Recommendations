--Create table for descriptive statistics values for daily_activity table
CREATE TABLE daily_activity_descriptive
(
    "column" VARCHAR,
    unique_values VARCHAR,
    count VARCHAR,
    mean VARCHAR,
    standard_deviation VARCHAR,
    min VARCHAR,
    "25%" VARCHAR,
    "50%" VARCHAR,
    "75%" VARCHAR,
    max VARCHAR
);

--Descriptive statistics of id column
INSERT INTO daily_activity_descriptive
VALUES
(
    'id',
    (SELECT COUNT(DISTINCT id) FROM daily_activity),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(id) FROM daily_activity),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(id) FROM daily_activity)
);

--Descriptive statistics of date column
INSERT INTO daily_activity_descriptive
VALUES
(
    'date',
    (SELECT COUNT(DISTINCT date) FROM daily_activity),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(date) FROM daily_activity),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(date) FROM daily_activity)
);

--Descriptive statistics of total_steps column
INSERT INTO daily_activity_descriptive
VALUES
(
    'total_steps',
    (SELECT COUNT(DISTINCT total_steps) FROM daily_activity),
    (SELECT COUNT(total_steps) FROM daily_activity),
    (SELECT ROUND(AVG(total_steps), 0) FROM daily_activity),
    (SELECT ROUND(STDDEV(total_steps), 0) FROM daily_activity),
    (SELECT MIN(total_steps) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY total_steps), 0) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY total_steps), 0) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY total_steps), 0) FROM daily_activity),
    (SELECT MAX(total_steps) FROM daily_activity)
);

--Descriptive statistics of total_distance column
INSERT INTO daily_activity_descriptive
VALUES
(
    'total_distance',
    (SELECT COUNT(DISTINCT total_distance) FROM daily_activity),
    (SELECT COUNT(total_distance) FROM daily_activity),
    (SELECT ROUND(AVG(total_distance), 2) FROM daily_activity),
    (SELECT ROUND(STDDEV(total_distance), 2) FROM daily_activity),
    (SELECT ROUND(MIN(total_distance), 2) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY total_distance), 2) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY total_distance), 2) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY total_distance), 2) FROM daily_activity),
    (SELECT ROUND(MAX(total_distance), 2) FROM daily_activity)
);

--Descriptive statistics of tracker_distance column
INSERT INTO daily_activity_descriptive
VALUES
(
    'tracker_distance',
    (SELECT COUNT(DISTINCT tracker_distance) FROM daily_activity),
    (SELECT COUNT(tracker_distance) FROM daily_activity),
    (SELECT ROUND(AVG(tracker_distance), 2) FROM daily_activity),
    (SELECT ROUND(STDDEV(tracker_distance), 2) FROM daily_activity),
    (SELECT ROUND(MIN(tracker_distance), 2) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY tracker_distance), 2) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY tracker_distance), 2) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY tracker_distance), 2) FROM daily_activity),
    (SELECT ROUND(MAX(tracker_distance), 2) FROM daily_activity)
);

--Descriptive statistics of logged_activities_distance column
INSERT INTO daily_activity_descriptive
VALUES
(
    'logged_activities_distance',
    (SELECT COUNT(DISTINCT logged_activities_distance) FROM daily_activity),
    (SELECT COUNT(logged_activities_distance) FROM daily_activity),
    (SELECT ROUND(AVG(logged_activities_distance), 2) FROM daily_activity),
    (SELECT ROUND(STDDEV(logged_activities_distance), 2) FROM daily_activity),
    (SELECT MIN(logged_activities_distance) FROM daily_activity),
    (SELECT PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY logged_activities_distance) FROM daily_activity),
    (SELECT PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY logged_activities_distance) FROM daily_activity),
    (SELECT PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY logged_activities_distance) FROM daily_activity),
    (SELECT ROUND(MAX(logged_activities_distance), 2) FROM daily_activity)
);

--Descriptive statistics of very_active_distance column
INSERT INTO daily_activity_descriptive
VALUES
(
    'very_active_distance',
    (SELECT COUNT(DISTINCT very_active_distance) FROM daily_activity),
    (SELECT COUNT(very_active_distance) FROM daily_activity),
    (SELECT ROUND(AVG(very_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(STDDEV(very_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(MIN(very_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY very_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY very_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY very_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(MAX(very_active_distance), 2) FROM daily_activity)
);

--Descriptive statistics of moderately_active_distance column
INSERT INTO daily_activity_descriptive
VALUES
(
    'moderately_active_distance',
    (SELECT COUNT(DISTINCT moderately_active_distance) FROM daily_activity),
    (SELECT COUNT(moderately_active_distance) FROM daily_activity),
    (SELECT ROUND(AVG(moderately_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(STDDEV(moderately_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(MIN(moderately_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY moderately_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY moderately_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY moderately_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(MAX(moderately_active_distance), 2) FROM daily_activity)
);

--Descriptive statistics of light_active_distance column
INSERT INTO daily_activity_descriptive
VALUES
(
    'light_active_distance',
    (SELECT COUNT(DISTINCT light_active_distance) FROM daily_activity),
    (SELECT COUNT(light_active_distance) FROM daily_activity),
    (SELECT ROUND(AVG(light_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(STDDEV(light_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(MIN(light_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY light_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY light_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY light_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(MAX(light_active_distance), 2) FROM daily_activity)
);

--Descriptive statistics of sedentary_active_distance column
INSERT INTO daily_activity_descriptive
VALUES
(
    'sedentary_active_distance',
    (SELECT COUNT(DISTINCT sedentary_active_distance) FROM daily_activity),
    (SELECT COUNT(sedentary_active_distance) FROM daily_activity),
    (SELECT ROUND(AVG(sedentary_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(STDDEV(sedentary_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(MIN(sedentary_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY sedentary_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY sedentary_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY sedentary_active_distance), 2) FROM daily_activity),
    (SELECT ROUND(MAX(sedentary_active_distance), 2) FROM daily_activity)
);

--Descriptive statistics of very_active_minutes column
INSERT INTO daily_activity_descriptive
VALUES
(
    'very_active_minutes',
    (SELECT COUNT(DISTINCT very_active_minutes) FROM daily_activity),
    (SELECT COUNT(very_active_minutes) FROM daily_activity),
    (SELECT ROUND(AVG(very_active_minutes), 0) FROM daily_activity),
    (SELECT STDDEV(very_active_minutes) FROM daily_activity),
    (SELECT MIN(very_active_minutes) FROM daily_activity),
    (SELECT PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY very_active_minutes) FROM daily_activity),
    (SELECT PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY very_active_minutes) FROM daily_activity),
    (SELECT PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY very_active_minutes) FROM daily_activity),
    (SELECT MAX(very_active_minutes) FROM daily_activity)
);

--Descriptive statistics of fairly_active_minutes column
INSERT INTO daily_activity_descriptive
VALUES
(
    'fairly_active_minutes',
    (SELECT COUNT(DISTINCT fairly_active_minutes) FROM daily_activity),
    (SELECT COUNT(fairly_active_minutes) FROM daily_activity),
    (SELECT ROUND(AVG(fairly_active_minutes), 0) FROM daily_activity),
    (SELECT STDDEV(fairly_active_minutes) FROM daily_activity),
    (SELECT MIN(fairly_active_minutes) FROM daily_activity),
    (SELECT PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY fairly_active_minutes) FROM daily_activity),
    (SELECT PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY fairly_active_minutes) FROM daily_activity),
    (SELECT PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY fairly_active_minutes) FROM daily_activity),
    (SELECT MAX(fairly_active_minutes) FROM daily_activity)
);

--Descriptive statistics of lightly_active_minutes column
INSERT INTO daily_activity_descriptive
VALUES
(
    'lightly_active_minutes',
    (SELECT COUNT(DISTINCT lightly_active_minutes) FROM daily_activity),
    (SELECT COUNT(lightly_active_minutes) FROM daily_activity),
    (SELECT ROUND(AVG(lightly_active_minutes), 0) FROM daily_activity),
    (SELECT STDDEV(lightly_active_minutes) FROM daily_activity),
    (SELECT MIN(lightly_active_minutes) FROM daily_activity),
    (SELECT PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY lightly_active_minutes) FROM daily_activity),
    (SELECT PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY lightly_active_minutes) FROM daily_activity),
    (SELECT PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY lightly_active_minutes) FROM daily_activity),
    (SELECT MAX(lightly_active_minutes) FROM daily_activity)
);

--Descriptive statistics of sedentary_minutes column
INSERT INTO daily_activity_descriptive
VALUES
(
    'sedentary_minutes',
    (SELECT COUNT(DISTINCT sedentary_minutes) FROM daily_activity),
    (SELECT COUNT(sedentary_minutes) FROM daily_activity),
    (SELECT ROUND(AVG(sedentary_minutes), 0) FROM daily_activity),
    (SELECT STDDEV(sedentary_minutes) FROM daily_activity),
    (SELECT MIN(sedentary_minutes) FROM daily_activity),
    (SELECT PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY sedentary_minutes) FROM daily_activity),
    (SELECT PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY sedentary_minutes) FROM daily_activity),
    (SELECT PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY sedentary_minutes) FROM daily_activity),
    (SELECT MAX(sedentary_minutes) FROM daily_activity)
);

--Descriptive statistics of calories column
INSERT INTO daily_activity_descriptive
VALUES
(
    'calories',
    (SELECT COUNT(DISTINCT calories) FROM daily_activity),
    (SELECT COUNT(calories) FROM daily_activity),
    (SELECT ROUND(AVG(calories), 0) FROM daily_activity),
    (SELECT STDDEV(calories) FROM daily_activity),
    (SELECT MIN(calories) FROM daily_activity),
    (SELECT PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY calories) FROM daily_activity),
    (SELECT PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY calories) FROM daily_activity),
    (SELECT PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY calories) FROM daily_activity),
    (SELECT MAX(calories) FROM daily_activity)
);


--Create table for descriptive statistics values for heart_rate_seconds table
CREATE TABLE heart_rate_seconds_descriptive
(
    "column" VARCHAR,
    unique_values VARCHAR,
    count VARCHAR,
    mean VARCHAR,
    standard_deviation VARCHAR,
    min VARCHAR,
    "25%" VARCHAR,
    "50%" VARCHAR,
    "75%" VARCHAR,
    max VARCHAR
);

--Descriptive statistics of id column
INSERT INTO heart_rate_seconds_descriptive
VALUES
(
    'id',
    (SELECT COUNT(DISTINCT id) FROM heart_rate_seconds),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(id) FROM heart_rate_seconds),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(id) FROM heart_rate_seconds)
);

--Descriptive statistics of date column
INSERT INTO heart_rate_seconds_descriptive
VALUES
(
    'date',
    (SELECT COUNT(DISTINCT date) FROM heart_rate_seconds),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(date) FROM heart_rate_seconds),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(date) FROM heart_rate_seconds)
);

--Descriptive statistics of time column
INSERT INTO heart_rate_seconds_descriptive
VALUES
(
    'time',
    (SELECT COUNT(DISTINCT time) FROM heart_rate_seconds),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(time) FROM heart_rate_seconds),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(time) FROM heart_rate_seconds)
);

--Descriptive statistics of value column
INSERT INTO heart_rate_seconds_descriptive
VALUES
(
    'value',
    (SELECT COUNT(DISTINCT value) FROM heart_rate_seconds),
    (SELECT COUNT(value) FROM heart_rate_seconds),
    (SELECT ROUND(AVG(value), 0) FROM heart_rate_seconds),
    (SELECT ROUND(STDDEV(value), 0) FROM heart_rate_seconds),
    (SELECT MIN(value) FROM heart_rate_seconds),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY value), 0) FROM heart_rate_seconds),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY value), 0) FROM heart_rate_seconds),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY value), 0) FROM heart_rate_seconds),
    (SELECT MAX(value) FROM heart_rate_seconds)
);


--Create table for descriptive statistics values for hourly_calories table
CREATE TABLE hourly_calories_descriptive
(
    "column" VARCHAR,
    unique_values VARCHAR,
    count VARCHAR,
    mean VARCHAR,
    standard_deviation VARCHAR,
    min VARCHAR,
    "25%" VARCHAR,
    "50%" VARCHAR,
    "75%" VARCHAR,
    max VARCHAR
);

--Descriptive statistics of id column
INSERT INTO hourly_calories_descriptive
VALUES
(
    'id',
    (SELECT COUNT(DISTINCT id) FROM hourly_calories),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(id) FROM hourly_calories),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(id) FROM hourly_calories)
);

--Descriptive statistics of date column
INSERT INTO hourly_calories_descriptive
VALUES
(
    'date',
    (SELECT COUNT(DISTINCT date) FROM hourly_calories),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(date) FROM hourly_calories),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(date) FROM hourly_calories)
);

--Descriptive statistics of time column
INSERT INTO hourly_calories_descriptive
VALUES
(
    'time',
    (SELECT COUNT(DISTINCT time) FROM hourly_calories),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(time) FROM hourly_calories),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(time) FROM hourly_calories)
);

--Descriptive statistics of calories column
INSERT INTO hourly_calories_descriptive
VALUES
(
    'calories',
    (SELECT COUNT(DISTINCT calories) FROM hourly_calories),
    (SELECT COUNT(calories) FROM hourly_calories),
    (SELECT ROUND(AVG(calories), 0) FROM hourly_calories),
    (SELECT ROUND(STDDEV(calories), 0) FROM hourly_calories),
    (SELECT MIN(calories) FROM hourly_calories),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY calories), 0) FROM hourly_calories),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY calories), 0) FROM hourly_calories),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY calories), 0) FROM hourly_calories),
    (SELECT MAX(calories) FROM hourly_calories)
);


--Create table for descriptive statistics values for hourly_intensities table
CREATE TABLE hourly_intensities_descriptive
(
    "column" VARCHAR,
    unique_values VARCHAR,
    count VARCHAR,
    mean VARCHAR,
    standard_deviation VARCHAR,
    min VARCHAR,
    "25%" VARCHAR,
    "50%" VARCHAR,
    "75%" VARCHAR,
    max VARCHAR
);

--Descriptive statistics of id column
INSERT INTO hourly_intensities_descriptive
VALUES
(
    'id',
    (SELECT COUNT(DISTINCT id) FROM hourly_intensities),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(id) FROM hourly_intensities),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(id) FROM hourly_intensities)
);

--Descriptive statistics of date column
INSERT INTO hourly_intensities_descriptive
VALUES
(
    'date',
    (SELECT COUNT(DISTINCT date) FROM hourly_intensities),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(date) FROM hourly_intensities),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(date) FROM hourly_intensities)
);

--Descriptive statistics of time column
INSERT INTO hourly_intensities_descriptive
VALUES
(
    'time',
    (SELECT COUNT(DISTINCT time) FROM hourly_intensities),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(time) FROM hourly_intensities),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(time) FROM hourly_intensities)
);

--Descriptive statistics of total_intensity column
INSERT INTO hourly_intensities_descriptive
VALUES
(
    'total_intensity',
    (SELECT COUNT(DISTINCT total_intensity) FROM hourly_intensities),
    (SELECT COUNT(total_intensity) FROM hourly_intensities),
    (SELECT ROUND(AVG(total_intensity), 0) FROM hourly_intensities),
    (SELECT ROUND(STDDEV(total_intensity), 0) FROM hourly_intensities),
    (SELECT MIN(total_intensity) FROM hourly_intensities),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY total_intensity), 0) FROM hourly_intensities),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY total_intensity), 0) FROM hourly_intensities),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY total_intensity), 0) FROM hourly_intensities),
    (SELECT MAX(total_intensity) FROM hourly_intensities)
);

--Descriptive statistics of average_intensity column
INSERT INTO hourly_intensities_descriptive
VALUES
(
    'average_intensity',
    (SELECT COUNT(DISTINCT average_intensity) FROM hourly_intensities),
    (SELECT COUNT(average_intensity) FROM hourly_intensities),
    (SELECT ROUND(AVG(average_intensity), 4) FROM hourly_intensities),
    (SELECT ROUND(STDDEV(average_intensity), 4) FROM hourly_intensities),
    (SELECT ROUND(MIN(average_intensity), 4) FROM hourly_intensities),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY average_intensity), 4) FROM hourly_intensities),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY average_intensity), 4) FROM hourly_intensities),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY average_intensity), 4) FROM hourly_intensities),
    (SELECT ROUND(MAX(average_intensity), 4) FROM hourly_intensities)
);


--Create table for descriptive statistics values for hourly_steps table
CREATE TABLE hourly_steps_descriptive
(
    "column" VARCHAR,
    unique_values VARCHAR,
    count VARCHAR,
    mean VARCHAR,
    standard_deviation VARCHAR,
    min VARCHAR,
    "25%" VARCHAR,
    "50%" VARCHAR,
    "75%" VARCHAR,
    max VARCHAR
);

--Descriptive statistics of id column
INSERT INTO hourly_steps_descriptive
VALUES
(
    'id',
    (SELECT COUNT(DISTINCT id) FROM hourly_steps),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(id) FROM hourly_steps),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(id) FROM hourly_steps)
);

--Descriptive statistics of date column
INSERT INTO hourly_steps_descriptive
VALUES
(
    'date',
    (SELECT COUNT(DISTINCT date) FROM hourly_steps),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(date) FROM hourly_steps),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(date) FROM hourly_steps)
);

--Descriptive statistics of time column
INSERT INTO hourly_steps_descriptive
VALUES
(
    'time',
    (SELECT COUNT(DISTINCT time) FROM hourly_steps),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(time) FROM hourly_steps),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(time) FROM hourly_steps)
);

--Descriptive statistics of total_steps column
INSERT INTO hourly_steps_descriptive
VALUES
(
    'total_steps',
    (SELECT COUNT(DISTINCT total_steps) FROM hourly_steps WHERE total_steps IS NOT NULL AND total_steps != 0),
    (SELECT COUNT(total_steps) FROM hourly_steps WHERE total_steps IS NOT NULL AND total_steps != 0),
    (SELECT ROUND(AVG(total_steps), 0) FROM hourly_steps WHERE total_steps IS NOT NULL AND total_steps != 0),
    (SELECT ROUND(STDDEV(total_steps), 0) FROM hourly_steps WHERE total_steps IS NOT NULL AND total_steps != 0),
    (SELECT MIN(total_steps) FROM hourly_steps WHERE total_steps IS NOT NULL AND total_steps != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY total_steps), 0) FROM hourly_steps WHERE total_steps IS NOT NULL AND total_steps != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY total_steps), 0) FROM hourly_steps WHERE total_steps IS NOT NULL AND total_steps != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY total_steps), 0) FROM hourly_steps WHERE total_steps IS NOT NULL AND total_steps != 0),
    (SELECT MAX(total_steps) FROM hourly_steps WHERE total_steps IS NOT NULL AND total_steps != 0)
);


--Create table for descriptive statistics values for minute_calories table
CREATE TABLE minute_calories_descriptive
(
    "column" VARCHAR,
    unique_values VARCHAR,
    count VARCHAR,
    mean VARCHAR,
    standard_deviation VARCHAR,
    min VARCHAR,
    "25%" VARCHAR,
    "50%" VARCHAR,
    "75%" VARCHAR,
    max VARCHAR
);

--Descriptive statistics of id column
INSERT INTO minute_calories_descriptive
VALUES
(
    'id',
    (SELECT COUNT(DISTINCT id) FROM minute_calories),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(id) FROM minute_calories),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(id) FROM minute_calories)
);

--Descriptive statistics of date column
INSERT INTO minute_calories_descriptive
VALUES
(
    'date',
    (SELECT COUNT(DISTINCT date) FROM minute_calories),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(date) FROM minute_calories),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(date) FROM minute_calories)
);

--Descriptive statistics of time column
INSERT INTO minute_calories_descriptive
VALUES
(
    'time',
    (SELECT COUNT(DISTINCT time) FROM minute_calories),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(time) FROM minute_calories),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(time) FROM minute_calories)
);

--Descriptive statistics of calories column
INSERT INTO minute_calories_descriptive
VALUES
(
    'calories',
    (SELECT COUNT(DISTINCT calories) FROM minute_calories),
    (SELECT COUNT(calories) FROM minute_calories),
    (SELECT ROUND(AVG(calories), 2) FROM minute_calories),
    (SELECT ROUND(STDDEV(calories), 2) FROM minute_calories),
    (SELECT ROUND(MIN(calories), 2) FROM minute_calories),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY calories), 2) FROM minute_calories),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY calories), 2) FROM minute_calories),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY calories), 2) FROM minute_calories),
    (SELECT ROUND(MAX(calories), 2) FROM minute_calories)
);


--Create table for descriptive statistics values for minute_intensities table
CREATE TABLE minute_intensities_descriptive
(
    "column" VARCHAR,
    unique_values VARCHAR,
    count VARCHAR,
    mean VARCHAR,
    standard_deviation VARCHAR,
    min VARCHAR,
    "25%" VARCHAR,
    "50%" VARCHAR,
    "75%" VARCHAR,
    max VARCHAR
);

--Descriptive statistics of id column
INSERT INTO minute_intensities_descriptive
VALUES
(
    'id',
    (SELECT COUNT(DISTINCT id) FROM minute_intensities),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(id) FROM minute_intensities),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(id) FROM minute_intensities)
);

--Descriptive statistics of date column
INSERT INTO minute_intensities_descriptive
VALUES
(
    'date',
    (SELECT COUNT(DISTINCT date) FROM minute_intensities),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(date) FROM minute_intensities),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(date) FROM minute_intensities)
);

--Descriptive statistics of time column
INSERT INTO minute_intensities_descriptive
VALUES
(
    'time',
    (SELECT COUNT(DISTINCT time) FROM minute_intensities),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(time) FROM minute_intensities),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(time) FROM minute_intensities)
);

--Descriptive statistics of intensity column
INSERT INTO minute_intensities_descriptive
VALUES
(
    'intensity',
    (SELECT COUNT(DISTINCT intensity) FROM minute_intensities WHERE intensity IS NOT NULL AND intensity != 0),
    (SELECT COUNT(intensity) FROM minute_intensities WHERE intensity IS NOT NULL AND intensity != 0),
    'not applicable',
    'not applicable',
    (SELECT MIN(intensity) FROM minute_intensities WHERE intensity IS NOT NULL AND intensity != 0),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(intensity) FROM minute_intensities WHERE intensity IS NOT NULL AND intensity != 0)
);


--Create table for descriptive statistics values for minute_mets table
CREATE TABLE minute_mets_descriptive
(
    "column" VARCHAR,
    unique_values VARCHAR,
    count VARCHAR,
    mean VARCHAR,
    standard_deviation VARCHAR,
    min VARCHAR,
    "25%" VARCHAR,
    "50%" VARCHAR,
    "75%" VARCHAR,
    max VARCHAR
);

--Descriptive statistics of id column
INSERT INTO minute_mets_descriptive
VALUES
(
    'id',
    (SELECT COUNT(DISTINCT id) FROM minute_mets),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(id) FROM minute_mets),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(id) FROM minute_mets)
);

--Descriptive statistics of date column
INSERT INTO minute_mets_descriptive
VALUES
(
    'date',
    (SELECT COUNT(DISTINCT date) FROM minute_mets),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(date) FROM minute_mets),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(date) FROM minute_mets)
);

--Descriptive statistics of time column
INSERT INTO minute_mets_descriptive
VALUES
(
    'time',
    (SELECT COUNT(DISTINCT time) FROM minute_mets),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(time) FROM minute_mets),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(time) FROM minute_mets)
);

--Descriptive statistics of mets column
INSERT INTO minute_mets_descriptive
VALUES
(
    'mets',
    (SELECT COUNT(DISTINCT mets) FROM minute_mets),
    (SELECT COUNT(mets) FROM minute_mets),
    (SELECT ROUND(AVG(mets), 0) FROM minute_mets),
    (SELECT ROUND(STDDEV(mets), 0) FROM minute_mets),
    (SELECT MIN(mets) FROM minute_mets),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY mets), 0) FROM minute_mets),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY mets), 0) FROM minute_mets),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY mets), 0) FROM minute_mets),
    (SELECT MAX(mets) FROM minute_mets)
);


--Create table for descriptive statistics values for minute_sleep table
CREATE TABLE minute_sleep_descriptive
(
    "column" VARCHAR,
    unique_values VARCHAR,
    count VARCHAR,
    mean VARCHAR,
    standard_deviation VARCHAR,
    min VARCHAR,
    "25%" VARCHAR,
    "50%" VARCHAR,
    "75%" VARCHAR,
    max VARCHAR
);

--Descriptive statistics of id column
INSERT INTO minute_sleep_descriptive
VALUES
(
    'id',
    (SELECT COUNT(DISTINCT id) FROM minute_sleep),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(id) FROM minute_sleep),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(id) FROM minute_sleep)
);

--Descriptive statistics of date column
INSERT INTO minute_sleep_descriptive
VALUES
(
    'date',
    (SELECT COUNT(DISTINCT date) FROM minute_sleep),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(date) FROM minute_sleep),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(date) FROM minute_sleep)
);

--Descriptive statistics of time column
INSERT INTO minute_sleep_descriptive
VALUES
(
    'time',
    (SELECT COUNT(DISTINCT time) FROM minute_sleep),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(time) FROM minute_sleep),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(time) FROM minute_sleep)
);

--Descriptive statistics of value column
INSERT INTO minute_sleep_descriptive
VALUES
(
    'value',
    (SELECT COUNT(DISTINCT value) FROM minute_sleep),
    (SELECT COUNT(value) FROM minute_sleep),
    (SELECT ROUND(AVG(value), 2) FROM minute_sleep),
    (SELECT ROUND(STDDEV(value), 2) FROM minute_sleep),
    (SELECT MIN(value) FROM minute_sleep),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY value), 2) FROM minute_sleep),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY value), 2) FROM minute_sleep),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY value), 2) FROM minute_sleep),
    (SELECT MAX(value) FROM minute_sleep)
);

--Descriptive statistics of log_id column
INSERT INTO minute_sleep_descriptive
VALUES
(
    'log_id',
    (SELECT COUNT(DISTINCT log_id) FROM minute_sleep),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(log_id) FROM minute_sleep),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(log_id) FROM minute_sleep)
);


--Create table for descriptive statistics values for minute_steps table
CREATE TABLE minute_steps_descriptive
(
    "column" VARCHAR,
    unique_values VARCHAR,
    count VARCHAR,
    mean VARCHAR,
    standard_deviation VARCHAR,
    min VARCHAR,
    "25%" VARCHAR,
    "50%" VARCHAR,
    "75%" VARCHAR,
    max VARCHAR
);

--Descriptive statistics of id column
INSERT INTO minute_steps_descriptive
VALUES
(
    'id',
    (SELECT COUNT(DISTINCT id) FROM minute_steps),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(id) FROM minute_steps),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(id) FROM minute_steps)
);

--Descriptive statistics of date column
INSERT INTO minute_steps_descriptive
VALUES
(
    'date',
    (SELECT COUNT(DISTINCT date) FROM minute_steps),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(date) FROM minute_steps),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(date) FROM minute_steps)
);

--Descriptive statistics of time column
INSERT INTO minute_steps_descriptive
VALUES
(
    'time',
    (SELECT COUNT(DISTINCT time) FROM minute_steps),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(time) FROM minute_steps),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(time) FROM minute_steps)
);

--Descriptive statistics of steps column
INSERT INTO minute_steps_descriptive
VALUES
(
    'steps',
    (SELECT COUNT(DISTINCT steps) FROM minute_steps WHERE steps IS NOT NULL AND steps != 0),
    (SELECT COUNT(steps) FROM minute_steps WHERE steps IS NOT NULL AND steps != 0),
    (SELECT ROUND(AVG(steps), 0) FROM minute_steps WHERE steps IS NOT NULL AND steps != 0),
    (SELECT ROUND(STDDEV(steps), 0) FROM minute_steps WHERE steps IS NOT NULL AND steps != 0),
    (SELECT MIN(steps) FROM minute_steps WHERE steps IS NOT NULL AND steps != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY steps), 0) FROM minute_steps WHERE steps IS NOT NULL AND steps != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY steps), 0) FROM minute_steps WHERE steps IS NOT NULL AND steps != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY steps), 0) FROM minute_steps WHERE steps IS NOT NULL AND steps != 0),
    (SELECT MAX(steps) FROM minute_steps WHERE steps IS NOT NULL AND steps != 0)
);


--Create table for descriptive statistics values for weight_log_info table
CREATE TABLE weight_log_info_descriptive
(
    "column" VARCHAR,
    unique_values VARCHAR,
    count VARCHAR,
    mean VARCHAR,
    standard_deviation VARCHAR,
    min VARCHAR,
    "25%" VARCHAR,
    "50%" VARCHAR,
    "75%" VARCHAR,
    max VARCHAR
);

--Descriptive statistics of id column
INSERT INTO weight_log_info_descriptive
VALUES
(
    'id',
    (SELECT COUNT(DISTINCT id) FROM weight_log_info),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(id) FROM weight_log_info),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(id) FROM weight_log_info)
);

--Descriptive statistics of date column
INSERT INTO weight_log_info_descriptive
VALUES
(
    'date',
    (SELECT COUNT(DISTINCT date) FROM weight_log_info),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(date) FROM weight_log_info),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(date) FROM weight_log_info)
);

--Descriptive statistics of time column
INSERT INTO weight_log_info_descriptive
VALUES
(
    'time',
    (SELECT COUNT(DISTINCT time) FROM weight_log_info),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(time) FROM weight_log_info),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(time) FROM weight_log_info)
);

--Descriptive statistics of weight column
INSERT INTO weight_log_info_descriptive
VALUES
(
    'weight',
    (SELECT COUNT(DISTINCT weight) FROM weight_log_info),
    (SELECT COUNT(weight) FROM weight_log_info),
    (SELECT ROUND(AVG(weight), 0) FROM weight_log_info),
    (SELECT ROUND(STDDEV(weight), 0) FROM weight_log_info),
    (SELECT ROUND(MIN(weight), 0) FROM weight_log_info),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY weight), 0) FROM weight_log_info),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY weight), 0) FROM weight_log_info),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY weight), 0) FROM weight_log_info),
    (SELECT ROUND(MAX(weight), 0) FROM weight_log_info)
);

--Descriptive statistics of fat column
INSERT INTO weight_log_info_descriptive
VALUES
(
    'fat',
    (SELECT COUNT(DISTINCT fat) FROM weight_log_info WHERE fat IS NOT NULL AND fat != 0),
    (SELECT COUNT(fat) FROM weight_log_info WHERE fat IS NOT NULL AND fat != 0),
    (SELECT ROUND(AVG(fat), 0) FROM weight_log_info WHERE fat IS NOT NULL AND fat != 0),
    (SELECT ROUND(STDDEV(fat), 0) FROM weight_log_info WHERE fat IS NOT NULL AND fat != 0),
    (SELECT MIN(fat) FROM weight_log_info WHERE fat IS NOT NULL AND fat != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY fat), 0) FROM weight_log_info WHERE fat IS NOT NULL AND fat != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY fat), 0) FROM weight_log_info WHERE fat IS NOT NULL AND fat != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY fat), 0) FROM weight_log_info WHERE fat IS NOT NULL AND fat != 0),
    (SELECT MAX(fat) FROM weight_log_info WHERE fat IS NOT NULL AND fat != 0)
);

--Descriptive statistics of bmi column
INSERT INTO weight_log_info_descriptive
VALUES
(
    'bmi',
    (SELECT COUNT(DISTINCT bmi) FROM weight_log_info),
    (SELECT COUNT(bmi) FROM weight_log_info),
    (SELECT ROUND(AVG(bmi), 0) FROM weight_log_info),
    (SELECT ROUND(STDDEV(bmi), 0) FROM weight_log_info),
    (SELECT MIN(bmi) FROM weight_log_info),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY bmi), 0) FROM weight_log_info),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY bmi), 0) FROM weight_log_info),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY bmi), 0) FROM weight_log_info),
    (SELECT MAX(bmi) FROM weight_log_info)
);

--Descriptive statistics of is_manual_report column
INSERT INTO weight_log_info_descriptive
VALUES
(
    'is_manual_report',
    (SELECT COUNT(DISTINCT is_manual_report) FROM weight_log_info),
    (SELECT COUNT(is_manual_report) FROM weight_log_info),
    'not applicable',
    'not applicable',
    'not applicable',
    'not applicable',
    'not applicable',
    'not applicable',
    'not applicable'
);

--Descriptive statistics of log_id column
INSERT INTO weight_log_info_descriptive
VALUES
(
    'log_id',
    (SELECT COUNT(DISTINCT log_id) FROM weight_log_info),
    (SELECT COUNT(log_id) FROM weight_log_info),
    'not applicable',
    'not applicable',
    (SELECT MIN(log_id) FROM weight_log_info),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(log_id) FROM weight_log_info)
);


--Create table for descriptive statistics values for daily_calories table
CREATE TABLE daily_calories_descriptive
(
    "column" VARCHAR,
    unique_values VARCHAR,
    count VARCHAR,
    mean VARCHAR,
    standard_deviation VARCHAR,
    min VARCHAR,
    "25%" VARCHAR,
    "50%" VARCHAR,
    "75%" VARCHAR,
    max VARCHAR
);

--Descriptive statistics of id column
INSERT INTO daily_calories_descriptive
VALUES
(
    'id',
    (SELECT COUNT(DISTINCT id) FROM daily_calories),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(id) FROM daily_calories),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(id) FROM daily_calories)
);

--Descriptive statistics of date column
INSERT INTO daily_calories_descriptive
VALUES
(
    'date',
    (SELECT COUNT(DISTINCT date) FROM daily_calories),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(date) FROM daily_calories),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(date) FROM daily_calories)
);

--Descriptive statistics of calories column
INSERT INTO daily_calories_descriptive
VALUES
(
    'calories',
    (SELECT COUNT(DISTINCT calories) FROM daily_calories WHERE calories IS NOT NULL AND calories != 0),
    (SELECT COUNT(calories) FROM daily_calories WHERE calories IS NOT NULL AND calories != 0),
    (SELECT ROUND(AVG(calories), 0) FROM daily_calories WHERE calories IS NOT NULL AND calories != 0),
    (SELECT ROUND(STDDEV(calories), 0) FROM daily_calories WHERE calories IS NOT NULL AND calories != 0),
    (SELECT MIN(calories) FROM daily_calories WHERE calories IS NOT NULL AND calories != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY calories), 0) FROM daily_calories WHERE calories IS NOT NULL AND calories != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY calories), 0) FROM daily_calories WHERE calories IS NOT NULL AND calories != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY calories), 0) FROM daily_calories WHERE calories IS NOT NULL AND calories != 0),
    (SELECT MAX(calories) FROM daily_calories WHERE calories IS NOT NULL AND calories != 0)
);


--Create table for descriptive statistics values for daily_intensities table
CREATE TABLE daily_intensities_descriptive
(
    "column" VARCHAR,
    unique_values VARCHAR,
    count VARCHAR,
    mean VARCHAR,
    standard_deviation VARCHAR,
    min VARCHAR,
    "25%" VARCHAR,
    "50%" VARCHAR,
    "75%" VARCHAR,
    max VARCHAR
);

--Descriptive statistics of id column
INSERT INTO daily_intensities_descriptive
VALUES
(
    'id',
    (SELECT COUNT(DISTINCT id) FROM daily_intensities),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(id) FROM daily_intensities),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(id) FROM daily_intensities)
);

--Descriptive statistics of date column
INSERT INTO daily_intensities_descriptive
VALUES
(
    'date',
    (SELECT COUNT(DISTINCT date) FROM daily_intensities),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(date) FROM daily_intensities),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(date) FROM daily_intensities)
);

--Descriptive statistics of sedentary_minutes column
INSERT INTO daily_intensities_descriptive
VALUES
(
    'sedentary_minutes',
    (SELECT COUNT(DISTINCT sedentary_minutes) FROM daily_intensities),
    (SELECT COUNT(sedentary_minutes) FROM daily_intensities),
    (SELECT ROUND(AVG(sedentary_minutes), 0) FROM daily_intensities),
    (SELECT ROUND(STDDEV(sedentary_minutes), 0) FROM daily_intensities),
    (SELECT MIN(sedentary_minutes) FROM daily_intensities),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY sedentary_minutes), 0) FROM daily_intensities),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY sedentary_minutes), 0) FROM daily_intensities),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY sedentary_minutes), 0) FROM daily_intensities),
    (SELECT MAX(sedentary_minutes) FROM daily_intensities)
);


--Descriptive statistics of lightly_active_minutes column
INSERT INTO daily_intensities_descriptive
VALUES
(
    'lightly_active_minutes',
    (SELECT COUNT(DISTINCT lightly_active_minutes) FROM daily_intensities WHERE lightly_active_minutes IS NOT NULL AND lightly_active_minutes != 0),
    (SELECT COUNT(lightly_active_minutes) FROM daily_intensities WHERE lightly_active_minutes IS NOT NULL AND lightly_active_minutes != 0),
    (SELECT ROUND(AVG(lightly_active_minutes), 0) FROM daily_intensities WHERE lightly_active_minutes IS NOT NULL AND lightly_active_minutes != 0),
    (SELECT ROUND(STDDEV(lightly_active_minutes), 0) FROM daily_intensities WHERE lightly_active_minutes IS NOT NULL AND lightly_active_minutes != 0),
    (SELECT MIN(lightly_active_minutes) FROM daily_intensities WHERE lightly_active_minutes IS NOT NULL AND lightly_active_minutes != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY lightly_active_minutes), 0) FROM daily_intensities WHERE lightly_active_minutes IS NOT NULL AND lightly_active_minutes != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY lightly_active_minutes), 0) FROM daily_intensities WHERE lightly_active_minutes IS NOT NULL AND lightly_active_minutes != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY lightly_active_minutes), 0) FROM daily_intensities WHERE lightly_active_minutes IS NOT NULL AND lightly_active_minutes != 0),
    (SELECT MAX(lightly_active_minutes) FROM daily_intensities WHERE lightly_active_minutes IS NOT NULL AND lightly_active_minutes != 0)
);

--Descriptive statistics of fairly_active_minutes column
INSERT INTO daily_intensities_descriptive
VALUES
(
    'fairly_active_minutes',
    (SELECT COUNT(DISTINCT fairly_active_minutes) FROM daily_intensities WHERE fairly_active_minutes IS NOT NULL AND fairly_active_minutes != 0),
    (SELECT COUNT(fairly_active_minutes) FROM daily_intensities WHERE fairly_active_minutes IS NOT NULL AND fairly_active_minutes != 0),
    (SELECT ROUND(AVG(fairly_active_minutes), 0) FROM daily_intensities WHERE fairly_active_minutes IS NOT NULL AND fairly_active_minutes != 0),
    (SELECT ROUND(STDDEV(fairly_active_minutes), 0) FROM daily_intensities WHERE fairly_active_minutes IS NOT NULL AND fairly_active_minutes != 0),
    (SELECT MIN(fairly_active_minutes) FROM daily_intensities WHERE fairly_active_minutes IS NOT NULL AND fairly_active_minutes != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY fairly_active_minutes), 0) FROM daily_intensities WHERE fairly_active_minutes IS NOT NULL AND fairly_active_minutes != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY fairly_active_minutes), 0) FROM daily_intensities WHERE fairly_active_minutes IS NOT NULL AND fairly_active_minutes != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY fairly_active_minutes), 0) FROM daily_intensities WHERE fairly_active_minutes IS NOT NULL AND fairly_active_minutes != 0),
    (SELECT MAX(fairly_active_minutes) FROM daily_intensities WHERE fairly_active_minutes IS NOT NULL AND fairly_active_minutes != 0)
);

--Descriptive statistics of very_active_minutes column
INSERT INTO daily_intensities_descriptive
VALUES
(
    'very_active_minutes',
    (SELECT COUNT(DISTINCT very_active_minutes) FROM daily_intensities WHERE very_active_minutes IS NOT NULL AND very_active_minutes != 0),
    (SELECT COUNT(very_active_minutes) FROM daily_intensities WHERE very_active_minutes IS NOT NULL AND very_active_minutes != 0),
    (SELECT ROUND(AVG(very_active_minutes), 0) FROM daily_intensities WHERE very_active_minutes IS NOT NULL AND very_active_minutes != 0),
    (SELECT ROUND(STDDEV(very_active_minutes), 0) FROM daily_intensities WHERE very_active_minutes IS NOT NULL AND very_active_minutes != 0),
    (SELECT MIN(very_active_minutes) FROM daily_intensities WHERE very_active_minutes IS NOT NULL AND very_active_minutes != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY very_active_minutes), 0) FROM daily_intensities WHERE very_active_minutes IS NOT NULL AND very_active_minutes != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY very_active_minutes), 0) FROM daily_intensities WHERE very_active_minutes IS NOT NULL AND very_active_minutes != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY very_active_minutes), 0) FROM daily_intensities WHERE very_active_minutes IS NOT NULL AND very_active_minutes != 0),
    (SELECT MAX(very_active_minutes) FROM daily_intensities WHERE very_active_minutes IS NOT NULL AND very_active_minutes != 0)
);

--Descriptive statistics of sedentary_active_distance column
INSERT INTO daily_intensities_descriptive
VALUES
(
    'sedentary_active_distance',
    (SELECT COUNT(DISTINCT sedentary_active_distance) FROM daily_intensities WHERE sedentary_active_distance IS NOT NULL AND sedentary_active_distance != 0),
    (SELECT COUNT(sedentary_active_distance) FROM daily_intensities WHERE sedentary_active_distance IS NOT NULL AND sedentary_active_distance != 0),
    (SELECT ROUND(AVG(sedentary_active_distance), 2) FROM daily_intensities WHERE sedentary_active_distance IS NOT NULL AND sedentary_active_distance != 0),
    (SELECT ROUND(STDDEV(sedentary_active_distance), 2) FROM daily_intensities WHERE sedentary_active_distance IS NOT NULL AND sedentary_active_distance != 0),
    (SELECT ROUND(MIN(sedentary_active_distance), 2) FROM daily_intensities WHERE sedentary_active_distance IS NOT NULL AND sedentary_active_distance != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY sedentary_active_distance), 2) FROM daily_intensities WHERE sedentary_active_distance IS NOT NULL AND sedentary_active_distance != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY sedentary_active_distance), 2) FROM daily_intensities WHERE sedentary_active_distance IS NOT NULL AND sedentary_active_distance != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY sedentary_active_distance), 2) FROM daily_intensities WHERE sedentary_active_distance IS NOT NULL AND sedentary_active_distance != 0),
    (SELECT ROUND(MAX(sedentary_active_distance), 2) FROM daily_intensities WHERE sedentary_active_distance IS NOT NULL AND sedentary_active_distance != 0)
);

--Descriptive statistics of light_active_distance column
INSERT INTO daily_intensities_descriptive
VALUES
(
    'light_active_distance',
    (SELECT COUNT(DISTINCT light_active_distance) FROM daily_intensities WHERE light_active_distance IS NOT NULL AND light_active_distance != 0),
    (SELECT COUNT(light_active_distance) FROM daily_intensities WHERE light_active_distance IS NOT NULL AND light_active_distance != 0),
    (SELECT ROUND(AVG(light_active_distance), 2) FROM daily_intensities WHERE light_active_distance IS NOT NULL AND light_active_distance != 0),
    (SELECT ROUND(STDDEV(light_active_distance), 2) FROM daily_intensities WHERE light_active_distance IS NOT NULL AND light_active_distance != 0),
    (SELECT ROUND(MIN(light_active_distance), 2) FROM daily_intensities WHERE light_active_distance IS NOT NULL AND light_active_distance != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY light_active_distance), 2) FROM daily_intensities WHERE light_active_distance IS NOT NULL AND light_active_distance != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY light_active_distance), 2) FROM daily_intensities WHERE light_active_distance IS NOT NULL AND light_active_distance != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY light_active_distance), 2) FROM daily_intensities WHERE light_active_distance IS NOT NULL AND light_active_distance != 0),
    (SELECT ROUND(MAX(light_active_distance), 2) FROM daily_intensities WHERE light_active_distance IS NOT NULL AND light_active_distance != 0)
);

--Descriptive statistics of moderately_active_distance column
INSERT INTO daily_intensities_descriptive
VALUES
(
    'moderately_active_distance',
    (SELECT COUNT(DISTINCT moderately_active_distance) FROM daily_intensities WHERE moderately_active_distance IS NOT NULL AND moderately_active_distance != 0),
    (SELECT COUNT(moderately_active_distance) FROM daily_intensities WHERE moderately_active_distance IS NOT NULL AND moderately_active_distance != 0),
    (SELECT ROUND(AVG(moderately_active_distance), 2) FROM daily_intensities WHERE moderately_active_distance IS NOT NULL AND moderately_active_distance != 0),
    (SELECT ROUND(STDDEV(moderately_active_distance), 2) FROM daily_intensities WHERE moderately_active_distance IS NOT NULL AND moderately_active_distance != 0),
    (SELECT ROUND(MIN(moderately_active_distance), 2) FROM daily_intensities WHERE moderately_active_distance IS NOT NULL AND moderately_active_distance != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY moderately_active_distance), 2) FROM daily_intensities WHERE moderately_active_distance IS NOT NULL AND moderately_active_distance != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY moderately_active_distance), 2) FROM daily_intensities WHERE moderately_active_distance IS NOT NULL AND moderately_active_distance != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY moderately_active_distance), 2) FROM daily_intensities WHERE moderately_active_distance IS NOT NULL AND moderately_active_distance != 0),
    (SELECT ROUND(MAX(moderately_active_distance), 2) FROM daily_intensities WHERE moderately_active_distance IS NOT NULL AND moderately_active_distance != 0)
);

--Descriptive statistics of very_active_distance column
INSERT INTO daily_intensities_descriptive
VALUES
(
    'very_active_distance',
    (SELECT COUNT(DISTINCT very_active_distance) FROM daily_intensities WHERE very_active_distance IS NOT NULL AND very_active_distance != 0),
    (SELECT COUNT(very_active_distance) FROM daily_intensities WHERE very_active_distance IS NOT NULL AND very_active_distance != 0),
    (SELECT ROUND(AVG(very_active_distance), 2) FROM daily_intensities WHERE very_active_distance IS NOT NULL AND very_active_distance != 0),
    (SELECT ROUND(STDDEV(very_active_distance), 2) FROM daily_intensities WHERE very_active_distance IS NOT NULL AND very_active_distance != 0),
    (SELECT ROUND(MIN(very_active_distance), 2) FROM daily_intensities WHERE very_active_distance IS NOT NULL AND very_active_distance != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY very_active_distance), 2) FROM daily_intensities WHERE very_active_distance IS NOT NULL AND very_active_distance != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY very_active_distance), 2) FROM daily_intensities WHERE very_active_distance IS NOT NULL AND very_active_distance != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY very_active_distance), 2) FROM daily_intensities WHERE very_active_distance IS NOT NULL AND very_active_distance != 0),
    (SELECT ROUND(MAX(very_active_distance), 2) FROM daily_intensities WHERE very_active_distance IS NOT NULL AND very_active_distance != 0)
);


--Create table for descriptive statistics values for daily_steps table
CREATE TABLE daily_steps_descriptive
(
    "column" VARCHAR,
    unique_values VARCHAR,
    count VARCHAR,
    mean VARCHAR,
    standard_deviation VARCHAR,
    min VARCHAR,
    "25%" VARCHAR,
    "50%" VARCHAR,
    "75%" VARCHAR,
    max VARCHAR
);

--Descriptive statistics of id column
INSERT INTO daily_steps_descriptive
VALUES
(
    'id',
    (SELECT COUNT(DISTINCT id) FROM daily_steps),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(id) FROM daily_steps),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(id) FROM daily_steps)
);

--Descriptive statistics of date column
INSERT INTO daily_steps_descriptive
VALUES
(
    'date',
    (SELECT COUNT(DISTINCT date) FROM daily_steps),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(date) FROM daily_steps),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(date) FROM daily_steps)
);

--Descriptive statistics of total_steps column
INSERT INTO daily_steps_descriptive
VALUES
(
    'total_steps',
    (SELECT COUNT(DISTINCT total_steps) FROM daily_steps WHERE total_steps IS NOT NULL AND total_steps != 0),
    (SELECT COUNT(total_steps) FROM daily_steps WHERE total_steps IS NOT NULL AND total_steps != 0),
    (SELECT ROUND(AVG(total_steps), 0) FROM daily_steps WHERE total_steps IS NOT NULL AND total_steps != 0),
    (SELECT ROUND(STDDEV(total_steps), 0) FROM daily_steps WHERE total_steps IS NOT NULL AND total_steps != 0),
    (SELECT MIN(total_steps) FROM daily_steps WHERE total_steps IS NOT NULL AND total_steps != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY total_steps), 0) FROM daily_steps WHERE total_steps IS NOT NULL AND total_steps != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY total_steps), 0) FROM daily_steps WHERE total_steps IS NOT NULL AND total_steps != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY total_steps), 0) FROM daily_steps WHERE total_steps IS NOT NULL AND total_steps != 0),
    (SELECT MAX(total_steps) FROM daily_steps WHERE total_steps IS NOT NULL AND total_steps != 0)
);


--Create table for descriptive statistics values for sleep_day table
CREATE TABLE sleep_day_descriptive
(
    "column" VARCHAR,
    unique_values VARCHAR,
    count VARCHAR,
    mean VARCHAR,
    standard_deviation VARCHAR,
    min VARCHAR,
    "25%" VARCHAR,
    "50%" VARCHAR,
    "75%" VARCHAR,
    max VARCHAR
);

--Descriptive statistics of id column
INSERT INTO sleep_day_descriptive
VALUES
(
    'id',
    (SELECT COUNT(DISTINCT id) FROM sleep_day),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(id) FROM sleep_day),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(id) FROM sleep_day)
);

--Descriptive statistics of date column
INSERT INTO sleep_day_descriptive
VALUES
(
    'date',
    (SELECT COUNT(DISTINCT date) FROM sleep_day),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(date) FROM sleep_day),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(date) FROM sleep_day)
);

--Descriptive statistics of time column
INSERT INTO sleep_day_descriptive
VALUES
(
    'time',
    (SELECT COUNT(DISTINCT time) FROM sleep_day),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MIN(time) FROM sleep_day),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(time) FROM sleep_day)
);

--Descriptive statistics of total_sleep_records column
INSERT INTO sleep_day_descriptive
VALUES
(
    'total_sleep_records',
    (SELECT COUNT(DISTINCT total_sleep_records) FROM sleep_day),
    (SELECT COUNT(total_sleep_records) FROM sleep_day),
    (SELECT ROUND(AVG(total_sleep_records), 0) FROM sleep_day),
    'not applicable',
    (SELECT MIN(total_sleep_records) FROM sleep_day),
    'not applicable',
    'not applicable',
    'not applicable',
    (SELECT MAX(total_sleep_records) FROM sleep_day)
);

--Descriptive statistics of total_minutes_asleep column
INSERT INTO sleep_day_descriptive
VALUES
(
    'total_minutes_asleep',
    (SELECT COUNT(DISTINCT total_minutes_asleep) FROM sleep_day WHERE total_minutes_asleep IS NOT NULL AND total_minutes_asleep != 0),
    (SELECT COUNT(total_minutes_asleep) FROM sleep_day WHERE total_minutes_asleep IS NOT NULL AND total_minutes_asleep != 0),
    (SELECT ROUND(AVG(total_minutes_asleep), 0) FROM sleep_day WHERE total_minutes_asleep IS NOT NULL AND total_minutes_asleep != 0),
    (SELECT ROUND(STDDEV(total_minutes_asleep), 0) FROM sleep_day WHERE total_minutes_asleep IS NOT NULL AND total_minutes_asleep != 0),
    (SELECT MIN(total_minutes_asleep) FROM sleep_day WHERE total_minutes_asleep IS NOT NULL AND total_minutes_asleep != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY total_minutes_asleep), 0) FROM sleep_day WHERE total_minutes_asleep IS NOT NULL AND total_minutes_asleep != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY total_minutes_asleep), 0) FROM sleep_day WHERE total_minutes_asleep IS NOT NULL AND total_minutes_asleep != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY total_minutes_asleep), 0) FROM sleep_day WHERE total_minutes_asleep IS NOT NULL AND total_minutes_asleep != 0),
    (SELECT MAX(total_minutes_asleep) FROM sleep_day WHERE total_minutes_asleep IS NOT NULL AND total_minutes_asleep != 0)
);

--Descriptive statistics of total_time_in_bed column
INSERT INTO sleep_day_descriptive
VALUES
(
    'total_time_in_bed',
    (SELECT COUNT(DISTINCT total_time_in_bed) FROM sleep_day WHERE total_time_in_bed IS NOT NULL AND total_time_in_bed != 0),
    (SELECT COUNT(total_time_in_bed) FROM sleep_day WHERE total_time_in_bed IS NOT NULL AND total_time_in_bed != 0),
    (SELECT ROUND(AVG(total_time_in_bed), 0) FROM sleep_day WHERE total_time_in_bed IS NOT NULL AND total_time_in_bed != 0),
    (SELECT ROUND(STDDEV(total_time_in_bed), 0) FROM sleep_day WHERE total_time_in_bed IS NOT NULL AND total_time_in_bed != 0),
    (SELECT MIN(total_time_in_bed) FROM sleep_day WHERE total_time_in_bed IS NOT NULL AND total_time_in_bed != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY total_time_in_bed), 0) FROM sleep_day WHERE total_time_in_bed IS NOT NULL AND total_time_in_bed != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY total_time_in_bed), 0) FROM sleep_day WHERE total_time_in_bed IS NOT NULL AND total_time_in_bed != 0),
    (SELECT ROUND(PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY total_time_in_bed), 0) FROM sleep_day WHERE total_time_in_bed IS NOT NULL AND total_time_in_bed != 0),
    (SELECT MAX(total_time_in_bed) FROM sleep_day WHERE total_time_in_bed IS NOT NULL AND total_time_in_bed != 0)
);
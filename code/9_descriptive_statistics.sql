--Create table for descriptive statistics values for daily_activity table
CREATE TABLE daily_activity_descriptive
(
    column VARCHAR,
    count VARCHAR,
    mean VARCHAR,
    standard_deviation VARCHAR,
    min VARCHAR,
    "25%" VARCHAR,
    "50%" VARCHAR,
    "75%" VARCHAR,
    max VARCHAR
);

--Insert descriptive statistics into daily_activity table
INSERT INTO daily_activity_descriptive
(
    column,
    count,
    mean,
    standard_deviation,
    min,
    "25%",
    "50%",
    "75%",
    max
)
VALUES
(
    (SELECT COUNT(DISTINCT ID)
    FROM daily_activity),
    
)

SELECT
    COUNT(DISTINCT ID),
    COUNT(DISTINCT ActivityDate),
    COUNT(DISTINCT TotalSteps),
    COUNT(DISTINCT TotalDistance),
    COUNT(DISTINCT TrackerDistance),
    COUNT(DISTINCT LoggedActivitiesDistance),
    COUNT(DISTINCT VeryActiveDistance),
    COUNT(DISTINCT ModeratelyActiveDistance),
    COUNT(DISTINCT LightActiveDistance),
    COUNT(DISTINCT SedentaryActiveDistance),
    COUNT(DISTINCT VeryActiveMinutes),
    COUNT(DISTINCT FairlyActiveMinutes),
    COUNT(DISTINCT LightlyActiveMinutes),
    COUNT(DISTINCT SedentaryMinutes),
    COUNT(DISTINCT Calories)
FROM ___
GROUP BY 

--Descriptive statistics on all columns for table


--Descriptive statistics on all columns for hourly_calories table


--Descriptive statistics on all columns for hourly_intensities table


--Descriptive statistics on all columns for hourly_steps table


--Descriptive statistics on all columns for minute_calories table


--Descriptive statistics on all columns for minute_intensities table


--Descriptive statistics on all columns for minute_mets table


--Descriptive statistics on all columns for minute_sleep table


--Descriptive statistics on all columns for minute_steps table


--Descriptive statistics on all columns for weight_log_info table


--Descriptive statistics on all columns for daily_calories_apr table


--Descriptive statistics on all columns for daily_intensities_apr table


--Descriptive statistics on all columns for daily_steps_apr table


--Descriptive statistics on all columns for sleep_day_apr table

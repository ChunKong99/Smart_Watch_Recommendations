--Combine rows of daily_activity_mar and daily_activity_apr into daily_activity table
SELECT *
INTO daily_activity
FROM
(
    SELECT *
    FROM daily_activity_mar

    UNION

    SELECT *
    FROM daily_activity_apr
) AS daily_activity;


--Combine rows of heart_rate_seconds_mar and heart_rate_seconds_apr into heart_rate_seconds table
SELECT *
INTO heart_rate_seconds
FROM
(
    SELECT *
    FROM heart_rate_seconds_mar

    UNION

    SELECT *
    FROM heart_rate_seconds_apr
) AS heart_rate_seconds;


--Combine rows of hourly_calories_mar and hourly_calories_apr into hourly_calories table
SELECT *
INTO hourly_calories
FROM
(
    SELECT *
    FROM hourly_calories_mar

    UNION

    SELECT *
    FROM hourly_calories_apr
) AS hourly_calories;


--Combine rows of hourly_intensities_mar and hourly_intensities_apr into hourly_intensities table
SELECT *
INTO hourly_intensities
FROM
(
    SELECT *
    FROM hourly_intensities_mar

    UNION

    SELECT *
    FROM hourly_intensities_apr
) AS hourly_intensities;


--Combine rows of hourly_steps_mar and hourly_steps_apr into hourly_steps table
SELECT *
INTO hourly_steps
FROM
(
    SELECT *
    FROM hourly_steps_mar

    UNION

    SELECT *
    FROM hourly_steps_apr
) AS hourly_steps;


--Combine rows of minute_calories_mar and minute_calories_apr into minute_calories table
SELECT *
INTO minute_calories
FROM
(
    SELECT *
    FROM minute_calories_mar

    UNION

    SELECT *
    FROM minute_calories_apr
) AS minute_calories;


--Combine rows of minute_intensities_mar and minute_intensities_apr into minute_intensities table
SELECT *
INTO minute_intensities
FROM
(
    SELECT *
    FROM minute_intensities_mar

    UNION

    SELECT *
    FROM minute_intensities_apr
) AS minute_intensities;


--Combine rows of minute_mets_mar and minute_mets_apr into minute_mets table
SELECT *
INTO minute_mets
FROM
(
    SELECT *
    FROM minute_mets_mar

    UNION

    SELECT *
    FROM minute_mets_apr
) AS minute_mets;


--Combine rows of minute_sleep_mar and minute_sleep_apr into minute_sleep table
SELECT *
INTO minute_sleep
FROM
(
    SELECT *
    FROM minute_sleep_mar

    UNION

    SELECT *
    FROM minute_sleep_apr
) AS minute_sleep;


--Combine rows of minute_steps_mar and minute_steps_apr into minute_steps table
SELECT *
INTO minute_steps
FROM
(
    SELECT *
    FROM minute_steps_mar

    UNION

    SELECT *
    FROM minute_steps_apr
) AS minute_steps;


--Combine rows of weight_log_info_mar and weight_log_info_apr into weight_log_info table
SELECT *
INTO weight_log_info
FROM
(
    SELECT *
    FROM weight_log_info_mar

    UNION

    SELECT *
    FROM weight_log_info_apr
) AS weight_log_info;
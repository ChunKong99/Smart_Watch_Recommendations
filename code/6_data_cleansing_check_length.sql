--Check length of column named id in daily_activity_mar table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(totalsteps::text)) > 1 THEN 'id_in_daily_activity_mar'
        ELSE NULL END AS irregular_value_daily_activity_mar
FROM daily_activity_mar;

--Check length of column named id in heart_rate_seconds_mar table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_heart_rate_seconds_mar'
        ELSE NULL END AS irregular_value_heart_rate_seconds_mar
FROM heart_rate_seconds_mar;

--Check length of column named id in hourly_calories_mar table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_hourly_calories_mar'
        ELSE NULL END AS irregular_value_hourly_calories_mar
FROM hourly_calories_mar;


--Check length of column named id in hourly_intensities_mar table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_hourly_intensities_mar'
        ELSE NULL END AS irregular_value_hourly_intensities_mar
FROM hourly_intensities_mar;


--Check length of column named id in hourly_steps_mar table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_hourly_steps_mar'
        ELSE NULL END AS irregular_value_hourly_steps_mar
FROM hourly_steps_mar;


--Check length of column named id in minute_calories_mar table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_minute_calories_mar'
        ELSE NULL END AS irregular_value_minute_calories_mar
FROM minute_calories_mar;


--Check length of column named id in minute_intensities_mar table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_minute_intensities_mar'
        ELSE NULL END AS irregular_value_minute_intensities_mar
FROM minute_intensities_mar;


--Check length of column named id in minute_mets_mar table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_minute_mets_mar'
        ELSE NULL END AS irregular_value_minute_mets_mar
FROM minute_mets_mar;


--Check length of columns named id, logid in minute_sleep_mar table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_minute_sleep_mar'
        ELSE NULL END AS irregular_value_minute_sleep_mar_1,
    CASE WHEN COUNT(DISTINCT LENGTH(log_id::text)) > 1 THEN 'log_id_in_minute_sleep_mar'
        ELSE NULL END AS irregular_value_minute_sleep_mar_2
FROM minute_sleep_mar;


--Check length of column named id in minute_steps_mar table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_minute_steps_mar'
        ELSE NULL END AS irregular_value_minute_steps_mar
FROM minute_steps_mar;


--Check length of columns named id, log_id in weight_log_info_mar table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_weight_log_info_mar'
        ELSE NULL END AS irregular_value_weight_log_info_mar_1,
    CASE WHEN COUNT(DISTINCT LENGTH(log_id::text)) > 1 THEN 'log_id_in_weight_log_info_mar'
        ELSE NULL END AS irregular_value_weight_log_info_mar_2
FROM weight_log_info_mar;


--Check length of columns named id in daily_activity_apr table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_daily_activity_apr'
        ELSE NULL END AS irregular_value_daily_activity_apr
FROM daily_activity_apr;


--Check length of columns named id, date, time, logid in daily_calories_apr table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_daily_calories_apr'
        ELSE NULL END AS irregular_value_daily_calories_apr
FROM daily_calories_apr;


--Check length of column named id in daily_intensities_apr table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_daily_intensities_apr'
        ELSE NULL END AS irregular_value_daily_intensities_apr
FROM daily_intensities_apr;

--Check length of column named id in daily_steps_apr table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_daily_steps_apr'
        ELSE NULL END AS irregular_value_daily_steps_apr
FROM daily_steps_apr;


--Check length of column named id in heart_rate_seconds_apr table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_heart_rate_seconds_apr'
        ELSE NULL END AS irregular_value_heart_rate_seconds_apr
FROM heart_rate_seconds_apr;


--Check length of columns named id, date, time, logid in hourly_calories_apr table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_hourly_calories_apr'
        ELSE NULL END AS irregular_value_hourly_calories_apr
FROM hourly_calories_apr;


--Check length of column named id in hourly_intensities_apr table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_hourly_intensities_apr'
        ELSE NULL END AS irregular_value_hourly_intensities_apr
FROM hourly_intensities_apr;


--Check length of column named id in hourly_steps_apr table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_hourly_steps_apr'
        ELSE NULL END AS irregular_value_hourly_steps_apr
FROM hourly_steps_apr;


--Check length of column named id in minute_calories_apr table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_minute_calories_apr'
        ELSE NULL END AS irregular_value_minute_calories_apr
FROM minute_calories_apr;


--Check length of column named id in minute_intensities_apr table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_minute_intensities_apr'
        ELSE NULL END AS irregular_value_minute_intensities_apr
FROM minute_intensities_apr;


--Check length of column named id in minute_mets_apr table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_minute_mets_apr'
        ELSE NULL END AS irregular_value_minute_mets_apr
FROM minute_mets_apr;


--Check length of columns named id, log_id in minute_sleep_apr table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_minute_sleep_apr'
        ELSE NULL END AS irregular_value_minute_sleep_apr_1,
    CASE WHEN COUNT(DISTINCT LENGTH(log_id::text)) > 1 THEN 'log_id_in_minute_sleep_apr'
        ELSE NULL END AS irregular_value_minute_sleep_apr_2
FROM minute_sleep_apr;


--Check length of column named id in minute_steps_apr table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_minute_steps_apr'
        ELSE NULL END AS irregular_value_minute_steps_apr
FROM minute_steps_apr;


--Check length of column named id in sleep_day_apr table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_sleep_day_apr'
        ELSE NULL END AS irregular_value_sleep_day_apr
FROM sleep_day_apr;


--Check length of columns named id, log_id in weight_log_info_apr table
SELECT
    CASE WHEN COUNT(DISTINCT LENGTH(id::text)) > 1 THEN 'id_in_weight_log_info_apr'
        ELSE NULL END AS irregular_value_weight_log_info_apr_1,
    CASE WHEN COUNT(DISTINCT LENGTH(log_id::text)) > 1 THEN 'log_id_in_weight_log_info_apr'
        ELSE NULL END AS irregular_value_weight_log_info_apr_2
FROM weight_log_info_apr;
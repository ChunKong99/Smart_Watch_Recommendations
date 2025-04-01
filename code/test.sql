DROP TABLE daily_activity_mar
, daily_activity_apr
, daily_calories_apr
, daily_intensities_apr
, daily_steps_apr
, heart_rate_seconds_apr
, heart_rate_seconds_mar
, hourly_calories_apr
, hourly_calories_mar
, hourly_intensities_apr
, hourly_intensities_mar
, hourly_steps_apr
, hourly_steps_mar
, minute_calories_apr
, minute_calories_mar
, minute_intensities_apr
, minute_intensities_mar
, minute_mets_apr
, minute_mets_mar
, minute_sleep_apr
, minute_sleep_mar
, minute_steps_apr
, minute_steps_mar
, sleep_day_apr
, weight_log_info_apr
, weight_log_info_mar

SELECT *
FROM daily_activity_mar
LIMIT 5

DROP TABLE heart_rate_seconds_mar

--Rename column in ____
ALTER TABLE ____ RENAME COLUMN cleaned_date to date;
ALTER TABLE ____ RENAME COLUMN cleaned_time to time;

confirm whether the time format output is 24h
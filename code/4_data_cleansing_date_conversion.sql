--Add new column and convert date format from FMMM/FMDD/YYYY to YYYY/MM/DD in daily_activity_mar
ALTER TABLE daily_activity_mar ADD COLUMN cleaned_date DATE AFTER id;

UPDATE daily_activity_mar
SET cleaned_date = (EXTRACT(YEAR FROM TO_DATE(activitydate, 'FMMM/FMDD/YYYY')) || '-' || EXTRACT(MONTH FROM TO_DATE(activitydate, 'FMMM/FMDD/YYYY')) || '-' || EXTRACT(DAY FROM TO_DATE(activitydate, 'FMMM/FMDD/YYYY')))::date;

--Remove unnecessary column from daily_activity_mar
ALTER TABLE daily_activity_mar DROP COLUMN activitydate;

--Rename columns in daily_activity_mar
ALTER TABLE daily_activity_mar RENAME COLUMN cleaned_date to date;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in heart_rate_seconds_mar
ALTER TABLE heart_rate_seconds_mar ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE heart_rate_seconds_mar ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE heart_rate_seconds_mar
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(time, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(time, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(time, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE heart_rate_seconds_mar
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(time, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(time, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(time, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in heart_rate_seconds_mar
ALTER TABLE heart_rate_seconds_mar DROP COLUMN time;

--Rename columns in heart_rate_seconds_mar
ALTER TABLE heart_rate_seconds_mar RENAME COLUMN cleaned_date to date;
ALTER TABLE heart_rate_seconds_mar RENAME COLUMN cleaned_time to time;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in hourly_calories_mar
ALTER TABLE hourly_calories_mar ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE hourly_calories_mar ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE hourly_calories_mar
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE hourly_calories_mar
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in hourly_calories_mar
ALTER TABLE hourly_calories_mar DROP COLUMN activityhour;

--Rename columns in hourly_calories_mar
ALTER TABLE hourly_calories_mar RENAME COLUMN cleaned_date to date;
ALTER TABLE hourly_calories_mar RENAME COLUMN cleaned_time to time;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in hourly_intensities_mar
ALTER TABLE hourly_intensities_mar ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE hourly_intensities_mar ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE hourly_intensities_mar
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE hourly_intensities_mar
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in hourly_intensities_mar
ALTER TABLE hourly_intensities_mar DROP COLUMN activityhour;

--Rename columns in hourly_intensities_mar
ALTER TABLE hourly_intensities_mar RENAME COLUMN cleaned_date to date;
ALTER TABLE hourly_intensities_mar RENAME COLUMN cleaned_time to time;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in hourly_steps_mar
ALTER TABLE hourly_steps_mar ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE hourly_steps_mar ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE hourly_steps_mar
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE hourly_steps_mar
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in hourly_steps_mar
ALTER TABLE hourly_steps_mar DROP COLUMN activityhour;

--Rename columns in hourly_steps_mar
ALTER TABLE hourly_steps_mar RENAME COLUMN cleaned_date to date;
ALTER TABLE hourly_steps_mar RENAME COLUMN cleaned_time to time;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in minute_calories_mar
ALTER TABLE minute_calories_mar ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE minute_calories_mar ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE minute_calories_mar
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE minute_calories_mar
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in minute_calories_mar
ALTER TABLE minute_calories_mar DROP COLUMN activityminute;

--Rename columns in minute_calories_mar
ALTER TABLE minute_calories_mar RENAME COLUMN cleaned_date to date;
ALTER TABLE minute_calories_mar RENAME COLUMN cleaned_time to time;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in minute_intensities_mar
ALTER TABLE minute_intensities_mar ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE minute_intensities_mar ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE minute_intensities_mar
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE minute_intensities_mar
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in minute_intensities_mar
ALTER TABLE minute_intensities_mar DROP COLUMN activityminute;

--Rename columns in minute_intensities_mar
ALTER TABLE minute_intensities_mar RENAME COLUMN cleaned_date to date;
ALTER TABLE minute_intensities_mar RENAME COLUMN cleaned_time to time;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in minute_mets_mar
ALTER TABLE minute_mets_mar ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE minute_mets_mar ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE minute_mets_mar
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE minute_mets_mar
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in minute_mets_mar
ALTER TABLE minute_mets_mar DROP COLUMN activityminute;

--Rename columns in minute_mets_mar
ALTER TABLE minute_mets_mar RENAME COLUMN cleaned_date to date;
ALTER TABLE minute_mets_mar RENAME COLUMN cleaned_time to time;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in minute_sleep_mar
ALTER TABLE minute_sleep_mar ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE minute_sleep_mar ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE minute_sleep_mar
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE minute_sleep_mar
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in minute_sleep_mar
ALTER TABLE minute_sleep_mar DROP COLUMN date;

--Rename columns in minute_sleep_mar
ALTER TABLE minute_sleep_mar RENAME COLUMN cleaned_date to date;
ALTER TABLE minute_sleep_mar RENAME COLUMN cleaned_time to time;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in minute_steps_mar
ALTER TABLE minute_steps_mar ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE minute_steps_mar ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE minute_steps_mar
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE minute_steps_mar
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in minute_steps_mar
ALTER TABLE minute_steps_mar DROP COLUMN activityminute;

--Rename columns in minute_steps_mar
ALTER TABLE minute_steps_mar RENAME COLUMN cleaned_date to date;
ALTER TABLE minute_steps_mar RENAME COLUMN cleaned_time to time;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in weight_log_info_mar
ALTER TABLE weight_log_info_mar ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE weight_log_info_mar ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE weight_log_info_mar
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE weight_log_info_mar
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in weight_log_info_mar
ALTER TABLE weight_log_info_mar DROP COLUMN date;
ALTER TABLE weight_log_info_mar DROP COLUMN weightpounds;

--Rename columns in weight_log_info_mar
ALTER TABLE weight_log_info_mar RENAME COLUMN cleaned_date to date;
ALTER TABLE weight_log_info_mar RENAME COLUMN cleaned_time to time;


--Add new column and convert date format from FMMM/FMDD/YYYY to YYYY/MM/DD in daily_activity_apr
ALTER TABLE daily_activity_apr ADD COLUMN cleaned_date DATE AFTER id;

UPDATE daily_activity_apr
SET cleaned_date = (EXTRACT(YEAR FROM TO_DATE(activitydate, 'FMMM/FMDD/YYYY')) || '-' || EXTRACT(MONTH FROM TO_DATE(activitydate, 'FMMM/FMDD/YYYY')) || '-' || EXTRACT(DAY FROM TO_DATE(activitydate, 'FMMM/FMDD/YYYY')))::date;

--Remove unnecessary column from daily_activity_apr
ALTER TABLE daily_activity_apr DROP COLUMN activitydate;

--Rename columns in daily_activity_apr
ALTER TABLE daily_activity_apr RENAME COLUMN cleaned_date to date;


--Add new column and convert date format from FMMM/FMDD/YYYY to YYYY/MM/DD in daily_calories_apr
ALTER TABLE daily_calories_apr ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE daily_calories_apr ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE daily_calories_apr
SET cleaned_date = (EXTRACT(YEAR FROM TO_DATE(activityday, 'FMMM/FMDD/YYYY')) || '-' || EXTRACT(MONTH FROM TO_DATE(activityday, 'FMMM/FMDD/YYYY')) || '-' || EXTRACT(DAY FROM TO_DATE(activityday, 'FMMM/FMDD/YYYY')))::date;

--Remove unnecessary column in daily_calories_apr
ALTER TABLE daily_calories_apr DROP COLUMN activityday;

--Rename columns in daily_calories_apr
ALTER TABLE daily_calories_apr RENAME COLUMN cleaned_date to date;


--Add new column and convert date format from FMMM/FMDD/YYYY to YYYY/MM/DD in daily_intensities_apr
ALTER TABLE daily_intensities_apr ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE daily_intensities_apr ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE daily_intensities_apr
SET cleaned_date = (EXTRACT(YEAR FROM TO_DATE(activityday, 'FMMM/FMDD/YYYY')) || '-' || EXTRACT(MONTH FROM TO_DATE(activityday, 'FMMM/FMDD/YYYY')) || '-' || EXTRACT(DAY FROM TO_DATE(activityday, 'FMMM/FMDD/YYYY')))::date;

--Remove unnecessary column in daily_intensities_apr
ALTER TABLE daily_intensities_apr DROP COLUMN activityday;

--Rename columns in daily_intensities_apr
ALTER TABLE daily_intensities_apr RENAME COLUMN cleaned_date to date;


--Add new column and convert date format from FMMM/FMDD/YYYY to YYYY/MM/DD in daily_steps_apr
ALTER TABLE daily_steps_apr ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE daily_steps_apr ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE daily_steps_apr
SET cleaned_date = (EXTRACT(YEAR FROM TO_DATE(activityday, 'FMMM/FMDD/YYYY')) || '-' || EXTRACT(MONTH FROM TO_DATE(activityday, 'FMMM/FMDD/YYYY')) || '-' || EXTRACT(DAY FROM TO_DATE(activityday, 'FMMM/FMDD/YYYY')))::date;

--Remove unnecessary column in daily_steps_apr
ALTER TABLE daily_steps_apr DROP COLUMN activityday;

--Rename columns in daily_steps_apr
ALTER TABLE daily_steps_apr RENAME COLUMN cleaned_date to date;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in heart_rate_seconds_apr
ALTER TABLE heart_rate_seconds_apr ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE heart_rate_seconds_apr ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE heart_rate_seconds_apr
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(time, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(time, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(time, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE heart_rate_seconds_apr
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(time, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(time, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(time, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in heart_rate_seconds_apr
ALTER TABLE heart_rate_seconds_apr DROP COLUMN time;

--Rename columns in heart_rate_seconds_apr
ALTER TABLE heart_rate_seconds_apr RENAME COLUMN cleaned_date to date;
ALTER TABLE heart_rate_seconds_apr RENAME COLUMN cleaned_time to time;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in hourly_calories_apr
ALTER TABLE hourly_calories_apr ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE hourly_calories_apr ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE hourly_calories_apr
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE hourly_calories_apr
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AMI')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in hourly_calories_apr
ALTER TABLE hourly_calories_apr DROP COLUMN activityhour;

--Rename columns in hourly_calories_apr
ALTER TABLE hourly_calories_apr RENAME COLUMN cleaned_date to date;
ALTER TABLE hourly_calories_apr RENAME COLUMN cleaned_time to time;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in hourly_intensities_apr
ALTER TABLE hourly_intensities_apr ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE hourly_intensities_apr ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE hourly_intensities_apr
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE hourly_intensities_apr
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in hourly_intensities_apr
ALTER TABLE hourly_intensities_apr DROP COLUMN activityhour;

--Rename columns in hourly_intensities_apr
ALTER TABLE hourly_intensities_apr RENAME COLUMN cleaned_date to date;
ALTER TABLE hourly_intensities_apr RENAME COLUMN cleaned_time to time;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in hourly_steps_apr
ALTER TABLE hourly_steps_apr ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE hourly_steps_apr ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE hourly_steps_apr
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE hourly_steps_apr
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(activityhour, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in hourly_steps_apr
ALTER TABLE hourly_steps_apr DROP COLUMN activityhour;

--Rename columns in hourly_steps_apr
ALTER TABLE hourly_steps_apr RENAME COLUMN cleaned_date to date;
ALTER TABLE hourly_steps_apr RENAME COLUMN cleaned_time to time;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in minute_calories_apr
ALTER TABLE minute_calories_apr ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE minute_calories_apr ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE minute_calories_apr
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE minute_calories_apr
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in minute_calories_apr
ALTER TABLE minute_calories_apr DROP COLUMN activityminute;

--Rename columns in minute_calories_apr
ALTER TABLE minute_calories_apr RENAME COLUMN cleaned_date to date;
ALTER TABLE minute_calories_apr RENAME COLUMN cleaned_time to time;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in minute_intensities_apr
ALTER TABLE minute_intensities_apr ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE minute_intensities_apr ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE minute_intensities_apr
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE minute_intensities_apr
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in minute_intensities_apr
ALTER TABLE minute_intensities_apr DROP COLUMN activityminute;

--Rename columns in minute_intensities_apr
ALTER TABLE minute_intensities_apr RENAME COLUMN cleaned_date to date;
ALTER TABLE minute_intensities_apr RENAME COLUMN cleaned_time to time;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in minute_mets_apr
ALTER TABLE minute_mets_apr ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE minute_mets_apr ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE minute_mets_apr
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE minute_mets_apr
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in minute_mets_apr
ALTER TABLE minute_mets_apr DROP COLUMN activityminute;

--Rename columns in minute_mets_apr
ALTER TABLE minute_mets_apr RENAME COLUMN cleaned_date to date;
ALTER TABLE minute_mets_apr RENAME COLUMN cleaned_time to time;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in minute_sleep_apr
ALTER TABLE minute_sleep_apr ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE minute_sleep_apr ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE minute_sleep_apr
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE minute_sleep_apr
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in minute_sleep_apr
ALTER TABLE minute_sleep_apr DROP COLUMN date;

--Rename columns in minute_sleep_apr
ALTER TABLE minute_sleep_apr RENAME COLUMN cleaned_date to date;
ALTER TABLE minute_sleep_apr RENAME COLUMN cleaned_time to time;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in minute_steps_apr
ALTER TABLE minute_steps_apr ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE minute_steps_apr ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE minute_steps_apr
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE minute_steps_apr
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(activityminute, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in minute_steps_apr
ALTER TABLE minute_steps_apr DROP COLUMN activityminute;

--Rename columns in minute_steps_apr
ALTER TABLE minute_steps_apr RENAME COLUMN cleaned_date to date;
ALTER TABLE minute_steps_apr RENAME COLUMN cleaned_time to time;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in sleep_day_apr
ALTER TABLE sleep_day_apr ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE sleep_day_apr ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE sleep_day_apr
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(sleepday, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(sleepday, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(sleepday, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE sleep_day_apr
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(sleepday, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(sleepday, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(sleepday, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in sleep_day_apr
ALTER TABLE sleep_day_apr DROP COLUMN sleepday;

--Rename columns in sleep_day_apr
ALTER TABLE sleep_day_apr RENAME COLUMN cleaned_date to date;
ALTER TABLE sleep_day_apr RENAME COLUMN cleaned_time to time;


--Add new column and convert date and time format from FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM to YYYY/MM/DD and HH:MM:SS in weight_log_info_apr
ALTER TABLE weight_log_info_apr ADD COLUMN cleaned_date DATE AFTER id;
ALTER TABLE weight_log_info_apr ADD COLUMN cleaned_time DATE AFTER cleaned_date;

UPDATE weight_log_info_apr
SET cleaned_date = (EXTRACT(YEAR FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(MONTH FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || '-' || EXTRACT(DAY FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::date;

UPDATE weight_log_info_apr
SET cleaned_time = (EXTRACT(HOUR FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(MINUTE FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')) || ':' || EXTRACT(SECONDS FROM TO_TIMESTAMP(date, 'FMMM/FMDD/YYYY FMHH12:FMMI:FMSS AM')))::time;

--Remove unnecessary column in weight_log_info_apr
ALTER TABLE weight_log_info_apr DROP COLUMN date;
ALTER TABLE weight_log_info_apr DROP COLUMN weightpounds;

--Rename columns in weight_log_info_apr
ALTER TABLE weight_log_info_apr RENAME COLUMN cleaned_date to date;
ALTER TABLE weight_log_info_apr RENAME COLUMN cleaned_time to time;
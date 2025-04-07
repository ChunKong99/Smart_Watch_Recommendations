--Rename columns of daily_activity_mar
ALTER TABLE daily_activity_mar RENAME COLUMN totalsteps TO total_steps;
ALTER TABLE daily_activity_mar RENAME COLUMN totaldistance TO total_distance;
ALTER TABLE daily_activity_mar RENAME COLUMN trackerdistance TO tracker_distance;
ALTER TABLE daily_activity_mar RENAME COLUMN loggedactivitiesdistance TO logged_activities_distance;
ALTER TABLE daily_activity_mar RENAME COLUMN veryactivedistance TO very_active_distance;
ALTER TABLE daily_activity_mar RENAME COLUMN moderatelyactivedistance TO moderately_active_distance;
ALTER TABLE daily_activity_mar RENAME COLUMN lightactivedistance TO light_active_distance;
ALTER TABLE daily_activity_mar RENAME COLUMN sedentaryactivedistance TO sedentary_active_distance;
ALTER TABLE daily_activity_mar RENAME COLUMN veryactiveminutes TO very_active_minutes;
ALTER TABLE daily_activity_mar RENAME COLUMN fairlyactiveminutes TO fairly_active_minutes;
ALTER TABLE daily_activity_mar RENAME COLUMN lightlyactiveminutes TO lightly_active_minutes;
ALTER TABLE daily_activity_mar RENAME COLUMN sedentaryminutes TO sedentary_minutes;

--Rename columns of hourly_intensities_mar
ALTER TABLE hourly_intensities_mar RENAME COLUMN totalintensity TO total_intensity;
ALTER TABLE hourly_intensities_mar RENAME COLUMN averageintensity TO average_intensity;

--Rename columns of hourly_steps_mar
ALTER TABLE hourly_steps_mar RENAME COLUMN steptotal TO total_steps;

--Rename columns of minute_sleep_mar
ALTER TABLE minute_sleep_mar RENAME COLUMN logid TO log_id;

--Rename columns of weight_log_info_mar
ALTER TABLE weight_log_info_mar RENAME COLUMN weightkg TO weight;
ALTER TABLE weight_log_info_mar RENAME COLUMN ismanualreport TO is_manual_report;
ALTER TABLE weight_log_info_mar RENAME COLUMN logid TO log_id;

--Rename columns of daily_activity_apr
ALTER TABLE daily_activity_apr RENAME COLUMN totalsteps TO total_steps;
ALTER TABLE daily_activity_apr RENAME COLUMN totaldistance TO total_distance;
ALTER TABLE daily_activity_apr RENAME COLUMN trackerdistance TO tracker_distance;
ALTER TABLE daily_activity_apr RENAME COLUMN loggedactivitiesdistance TO logged_activities_distance;
ALTER TABLE daily_activity_apr RENAME COLUMN veryactivedistance TO very_active_distance;
ALTER TABLE daily_activity_apr RENAME COLUMN moderatelyactivedistance TO moderately_active_distance;
ALTER TABLE daily_activity_apr RENAME COLUMN lightactivedistance TO light_active_distance;
ALTER TABLE daily_activity_apr RENAME COLUMN sedentaryactivedistance TO sedentary_active_distance;
ALTER TABLE daily_activity_apr RENAME COLUMN veryactiveminutes TO very_active_minutes;
ALTER TABLE daily_activity_apr RENAME COLUMN fairlyactiveminutes TO fairly_active_minutes;
ALTER TABLE daily_activity_apr RENAME COLUMN lightlyactiveminutes TO lightly_active_minutes;
ALTER TABLE daily_activity_apr RENAME COLUMN sedentaryminutes TO sedentary_minutes;

--Rename columns of daily_intensities
ALTER TABLE daily_intensities RENAME COLUMN sedentaryminutes TO sedentary_minutes;
ALTER TABLE daily_intensities RENAME COLUMN lightlyactiveminutes TO lightly_active_minutes;
ALTER TABLE daily_intensities RENAME COLUMN fairlyactiveminutes TO fairly_active_minutes;
ALTER TABLE daily_intensities RENAME COLUMN veryactiveminutes TO very_active_minutes;
ALTER TABLE daily_intensities RENAME COLUMN sedentaryactivedistance TO sedentary_active_distance;
ALTER TABLE daily_intensities RENAME COLUMN lightactivedistance TO light_active_distance;
ALTER TABLE daily_intensities RENAME COLUMN moderatelyactivedistance TO moderately_active_distance;
ALTER TABLE daily_intensities RENAME COLUMN veryactivedistance TO very_active_distance;

--Rename columns of daily_steps
ALTER TABLE daily_steps RENAME COLUMN steptotal TO total_steps;

--Rename columns of hourly_intensities_apr
ALTER TABLE hourly_intensities_apr RENAME COLUMN totalintensity TO total_intensity;
ALTER TABLE hourly_intensities_apr RENAME COLUMN averageintensity TO average_intensity;

--Rename columns of hourly_steps_apr
ALTER TABLE hourly_steps_apr RENAME COLUMN steptotal TO total_steps;

--Rename columns of minute_sleep_apr
ALTER TABLE minute_sleep_apr RENAME COLUMN logid TO log_id;

--Rename columns of sleep_day
ALTER TABLE sleep_day RENAME COLUMN totalsleeprecords TO total_sleep_records;
ALTER TABLE sleep_day RENAME COLUMN totalminutesasleep TO total_minutes_asleep;
ALTER TABLE sleep_day RENAME COLUMN totaltimeinbed TO total_time_in_bed;

--Rename columns of weight_log_info_apr
ALTER TABLE weight_log_info_apr RENAME COLUMN weightkg TO weight;
ALTER TABLE weight_log_info_apr RENAME COLUMN ismanualreport TO is_manual_report;
ALTER TABLE weight_log_info_apr RENAME COLUMN logid TO log_id;
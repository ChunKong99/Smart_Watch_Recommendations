--Detect and remove rows when id is null in daily_activity table
DELETE FROM daily_activity
WHERE id IS NULL;

--Remove nulls from heart_rate_seconds table
DELETE FROM heart_rate_seconds
WHERE id IS NULL;

--Remove nulls from hourly_calories table
DELETE FROM hourly_calories
WHERE id IS NULL;

--Remove nulls from hourly_intensities table
DELETE FROM hourly_intensities
WHERE id IS NULL;

--Remove nulls from hourly_steps table
DELETE FROM hourly_steps
WHERE id IS NULL;

--Remove nulls from minute_calories table
DELETE FROM minute_calories
WHERE id IS NULL;

--Remove nulls from minute_intensities table
DELETE FROM minute_intensities
WHERE id IS NULL;

--Remove nulls from minute_mets table
DELETE FROM minute_mets
WHERE id IS NULL;

--Remove nulls from minute_sleep table
DELETE FROM minute_sleep
WHERE id IS NULL;

--Remove nulls from minute_steps table
DELETE FROM minute_steps
WHERE id IS NULL;

--Remove nulls from weight_log_info table
DELETE FROM weight_log_info
WHERE id IS NULL;

--Remove nulls from daily_calories table
DELETE FROM daily_calories
WHERE id IS NULL;

--Remove nulls from daily_intensities table
DELETE FROM daily_intensities
WHERE id IS NULL;

--Remove nulls from daily_steps table
DELETE FROM daily_steps
WHERE id IS NULL;

--Remove nulls from sleep_day table
DELETE FROM sleep_day
WHERE id IS NULL;
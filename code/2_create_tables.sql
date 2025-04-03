-- Create daily_activity_mar table
CREATE TABLE daily_activity_mar
(
    Id BIGINT,
    ActivityDate VARCHAR,
    TotalSteps INT,
    TotalDistance DECIMAL,
    TrackerDistance DECIMAL,
    LoggedActivitiesDistance DECIMAL,
    VeryActiveDistance DECIMAL,
    ModeratelyActiveDistance DECIMAL,
    LightActiveDistance DECIMAL,
    SedentaryActiveDistance DECIMAL,
    VeryActiveMinutes INT,
    FairlyActiveMinutes INT,
    LightlyActiveMinutes INT,
    SedentaryMinutes INT,
    Calories INT
);

-- Create heart_rate_seconds_mar table
CREATE TABLE heart_rate_seconds_mar
(
    Id BIGINT,
    Time VARCHAR,
    Value INT
);

-- Create hourly_calories_mar table
CREATE TABLE hourly_calories_mar
(
    Id BIGINT,
    ActivityHour VARCHAR,
    Calories INT
);

-- Create hourly_intensities_mar table
CREATE TABLE hourly_intensities_mar
(
    Id BIGINT,
    ActivityHour VARCHAR,
    TotalIntensity INT,
    AverageIntensity DECIMAL
);

-- Create hourly_steps_mar table
CREATE TABLE hourly_steps_mar
(
    Id BIGINT,
    ActivityHour VARCHAR,
    StepTotal INT
);

-- Create minute_calories_mar table
CREATE TABLE minute_calories_mar
(
    Id BIGINT,
    ActivityMinute VARCHAR,
    Calories DECIMAL
);

-- Create minute_intensities_mar table
CREATE TABLE minute_intensities_mar
(
    Id BIGINT,
    ActivityMinute VARCHAR,
    Intensity INT
);

-- Create minute_mets_mar table
CREATE TABLE minute_mets_mar
(
    Id BIGINT,
    ActivityMinute VARCHAR,
    METs INT
);

-- Create minute_sleep_mar table
CREATE TABLE minute_sleep_mar
(
    Id BIGINT,
    date VARCHAR,
    value INT,
    logId BIGINT
);

-- Create minute_steps_mar table
CREATE TABLE minute_steps_mar
(
    Id BIGINT,
    ActivityMinute VARCHAR,
    Steps INT
);

-- Create weight_log_info_mar table
CREATE TABLE weight_log_info_mar
(
    Id BIGINT,
    Date VARCHAR,
    WeightKg DECIMAL,
    WeightPounds DECIMAL,
    Fat INT,
    BMI DECIMAL,
    IsManualReport BOOLEAN,
    LogId BIGINT
);

-- Create daily_activity_apr table
CREATE TABLE daily_activity_apr
(
    Id BIGINT,
    ActivityDate VARCHAR,
    TotalSteps INT,
    TotalDistance DECIMAL,
    TrackerDistance DECIMAL,
    LoggedActivitiesDistance DECIMAL,
    VeryActiveDistance DECIMAL,
    ModeratelyActiveDistance DECIMAL,
    LightActiveDistance DECIMAL,
    SedentaryActiveDistance DECIMAL,
    VeryActiveMinutes INT,
    FairlyActiveMinutes INT,
    LightlyActiveMinutes INT,
    SedentaryMinutes INT,
    Calories INT
);

-- Create daily_calories table
CREATE TABLE daily_calories
(
    Id BIGINT,
    ActivityDay VARCHAR,
    Calories INT
);

-- Create daily_intensities table
CREATE TABLE daily_intensities
(
    Id BIGINT,
    ActivityDay VARCHAR,
    SedentaryMinutes INT,
    LightlyActiveMinutes INT,
    FairlyActiveMinutes INT,
    VeryActiveMinutes INT,
    SedentaryActiveDistance DECIMAL,
    LightActiveDistance DECIMAL,
    ModeratelyActiveDistance DECIMAL,
    VeryActiveDistance DECIMAL
);

-- Create daily_steps table
CREATE TABLE daily_steps
(
    Id BIGINT,
    ActivityDay VARCHAR,
    StepTotal INT
);

-- Create heart_rate_seconds_apr table
CREATE TABLE heart_rate_seconds_apr
(
    Id BIGINT,
    Time VARCHAR,
    Value INT
);

-- Create hourly_calories_apr table
CREATE TABLE hourly_calories_apr
(
    Id BIGINT,
    ActivityHour VARCHAR,
    Calories INT
);

-- Create hourly_intensities_apr table
CREATE TABLE hourly_intensities_apr
(
    Id BIGINT,
    ActivityHour VARCHAR,
    TotalIntensity INT,
    AverageIntensity DECIMAL
);

-- Create hourly_steps_apr table
CREATE TABLE hourly_steps_apr
(
    Id BIGINT,
    ActivityHour VARCHAR,
    StepTotal INT
);

-- Create minute_calories_apr table
CREATE TABLE minute_calories_apr
(
    Id BIGINT,
    ActivityMinute VARCHAR,
    Calories DECIMAL
);

-- Create minute_intensities_apr table
CREATE TABLE minute_intensities_apr
(
    Id BIGINT,
    ActivityMinute VARCHAR,
    Intensity INT
);

-- Create minute_mets_apr table
CREATE TABLE minute_mets_apr
(
    Id BIGINT,
    ActivityMinute VARCHAR,
    METs INT
);

-- Create minute_sleep_apr table
CREATE TABLE minute_sleep_apr
(
    Id BIGINT,
    date VARCHAR,
    value INT,
    logId BIGINT
);

-- Create minute_steps_apr table
CREATE TABLE minute_steps_apr
(
    Id BIGINT,
    ActivityMinute VARCHAR,
    Steps INT
);

-- Create sleep_day table
CREATE TABLE sleep_day
(
    Id BIGINT,
    SleepDay VARCHAR,
    TotalSleepRecords INT,
    TotalMinutesAsleep INT,
    TotalTimeInBed INT
);

-- Create weight_log_info_apr table
CREATE TABLE weight_log_info_apr
(
    Id BIGINT,
    Date VARCHAR,
    WeightKg DECIMAL,
    WeightPounds DECIMAL,
    Fat INT,
    BMI DECIMAL,
    IsManualReport BOOLEAN,
    LogId BIGINT
);
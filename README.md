# Reference Code
1)  SQL code are within "code" folder
2)  Tableau dashboard is in .twb file within "visualisation" folder
3)  Comprehensive report with technical processes including data cleaning, transformations, and EDA are available in 


# Identify Objectives
### Objectives:
1) Product development recommendations from smart device usage data
2) Marketing recommendations from smart device usage data

### Breaking objectives down into smaller pieces
1)  Product development recommendations:
-   What are the top usage categories (e.g. for sleep pattern detection or fitness related activities)?
-   What are the metrics that strongly correlate to benefits (e.g. calory burning)?

2)  Marketing recommendations:
-   What are the age group of users (e.g. derived assumption based on heart rate)?
-   What are the usage trend?
-   What are the hours where usage is highest?

### Stakeholders
1)	Urška Sršen, Co-founder of Bellabeat, Chief Creative Officer
2)	Sando Mur, Co-founder of Bellabeat and key member of the Bellabeat executive team

# Process
1)  Total of 10.4mil rows in 26 tables in the dataset, hence, SQL is chosen to do data cleaning and analysis
2)  High granularity or high precision data are not useful and will not be included in analysis
3)  Technologies used:
-   **SQL**: for data cleaning and querying (SQL code are within "code" folder)
-   **PostgreSQL**: database
-   **Tableau**: tool for graphical analysis and visualisations
-   **Visual Studio Code**: code editor to execute SQL queries
-   **Git & Github**: version control and hosting my files for public access
3)  Load 26 csv files into PostgreSQL

# Analyse
### Exploratory Data Analysis
Each query aims at investigating specific aspects of the relationship between metrics and other variables that provides guidance towards choosing the appropriate marketing channel(s).
1)  Keeping in mind business objectives of product development and marketing recommendations;
-   Top features used
-   Distribution of usage throughout a week to provide insight for marketing
-   Find trend of top usage through time
-   Which intensity of exercise are these users more interested in?
-   What is the most popular duration of exercise?

![statistical analysis](images/statistical_analysis.png)
-   Analysis on number of values or occurences for various categorical attributes
    -   Plotting distinct counts of features vs date (day)
![top features used](images/top_features_used.png)
    -   Calory and steps measurements are the top usage categories, followed by sleep measurement and weight measurement.
    -   Product development recommendation; emphasize on developing more features related to calories and steps measurements. These features are being used most.
    -   Marketing recommendation; do not emphasize on weight measurement feature as less than half of the users use this feature on a daily basis.
-   Plotting categories of intensities vs date (day)
 ![breakdown of intensity categories](images/breakdown_of_intensity_categories.png)
    -   Users spend most time being sedentary.
    -   When active, users prefer to be lightly active as compared to fairly active or very active and by wide margin.
    -   Product development recommendation; development of new features should be directed towards lightly active activities instead of fairly active and very active.
    -   Marketing recommendation; do not emphasize on fairly active and lightly active activities when considering marketing campaigns as these are not what users are spending time on.
-   Further analysis on distributions
    -   Plotting total_steps vs day of week
 ![total steps by day of week](images/total_steps_by_day_of_week.png)
        -   Users are most active on Tuesdays, followed by Wednesdays and Thursdays.
        -   Users are least active on Sundays, followed by Mondays and Fridays.
        -   Product development recommendation; consider providing customised features for routines that suit work out plans on Tuesdays, Wednesdays, and Thursdays.
        -   Marketing recommendation; since users are least active with their devices and workout on Sundays, Mondays, and Fridays, consider launching campaigns on these days to show them new features and services.
    -   Plotting number of steps vs hour of day
 ![number of steps by hour](images/number_of_steps_by_hour.png)
        -   Users are on the move or are working out during the hours of 7pm, followed by 6pm and 12pm.
        -   Users are least active during the window of 2am - 5am.
-   Product development recommendation; users are on the move or are working out during the period of 6pm - 8pm, so new features which offers value when moving or working out during these hours are great. Note that movements during 12pm is due lunch hour.
 -      Marketing recommendation;  since users are most active with their devices during the hours of 7pm, 6pm, and 12pm, consider launching campaigns during other hours to show them new features and services.

5)  Contextual Analysis
Correlation analysis
Using Tableau, Pearson Correlation Coefficient and p-value are as follows:
![correlation analysis](images/correlation_analysis.png)
-   Qualitative analysis
Plotting total_steps vs calories
![calories vs total_steps](images/calories_vs_total_steps.png)
Amount of calories burnt directly correlates to amount of total steps taken.
-   Time-based analysis
Plotting total_steps vs date (day)
<img src="images/total_steps_through_time.png" width="600">
The trend is up through time and this shows that users are either increasing their total steps through time or are increasing their use of the device for the feature of steps measurement.

6)  Dashboard
![dashboard](images/dashboard.png)

# Recommendations
1)  Product development recommendations:
-   Emphasize on developing more features related to calories and steps measurements. These features are being used most.
-   Development of new features should be directed towards lightly active activities instead of fairly active and very active.
-   Consider providing customised features for routines that suit work out plans on Tuesdays, Wednesdays, and Thursdays.
-   Users are on the move or are working out during the period of 6pm - 8pm, so new features which offers value when moving or working out during these hours are great. Note that movements during 12pm is due lunch hour.
-   Look into user feedback on logging of distance during activities (logged_activities_distance) and measurement of sedentary distance (sedentary_active_distance) to determine the direction of product development for these features.

2)  Marketing recommendations:
-   Do not emphasize on weight measurement feature as less than half of the users use this feature on a daily basis.
-   Do not emphasize on fairly active and lightly active activities when considering marketing campaigns as these are not what users are spending time on.
-   Since users are least active with their devices and workout on Sundays, Mondays, and Fridays, consider launching campaigns on these days to show them new features and services.
-   Since users are most active with their devices during the hours of 7pm, 6pm, and 12pm, consider launching campaigns during other hours to show them new features and services.
-   Do not emphasize logging of distance during activities (logged_activities_distance) and measurement of sedentary distance (sedentary_active_distance) as users do not use these features.

3)  Closing thoughts
-   More insights into reasons of why users tend to use distance-related features less can be found by firstly obtaining feedback from customers.
-   Data from other smart devices and companies will help confirm conclusions and recommendations made.
-   Additional dataset can reinforce these recommendations as limitation of this dataset produces margin of error of 12.2% when confidence level is 85%.

--contact Chun Kong at +60 111-2992771 or i_am_gary_lai@yahoo.com for more data analysis work--

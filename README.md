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
1)	Product Development Manager
2)	Marketing Manager

# Process
1)  Technologies used:
-   **SQL**: for data cleaning and querying (SQL code are within "code" folder)
-   **PostgreSQL**: database
-   **Tableau**: tool for graphical analysis and visualisations
-   **Visual Studio Code**: code editor to execute SQL queries
-   **Git & Github**: version control and hosting my files for public access
2)  Load 26 csv files into PostgreSQL

# Recommendations
1)  Product development recommendations:
-   Emphasize on developing more features related to calories and steps measurements as these features are being used most.
![top features used](images/top_features_used.png)
-   Development of new features should be directed towards lightly active activities instead of fairly active and very active.
![breakdown of intensity categories](images/breakdown_of_intensity_categories.png)
-   Consider providing customised features for routines that suit work out plans on Tuesdays, Wednesdays, and Thursdays.
![total steps by day of week](images/total_steps_by_day_of_week.png)
-   Users are on the move or are working out during the period of 6pm - 8pm, so new features which offers value when moving or working out during these hours are great. Note that movements during 12pm is due lunch hour.
![number of steps by hour](images/number_of_steps_by_hour.png)
-   Look into user feedback on logging of distance during activities (logged_activities_distance) and measurement of sedentary distance (sedentary_active_distance) to determine the direction of product development for these features.

2)  Marketing recommendations:
-   Do not emphasize on weight measurement feature as less than half of the users use this feature on a daily basis.
![top features used](images/top_features_used.png)
-   Do not emphasize on fairly active and lightly active activities when considering marketing campaigns as these are not what users are spending time on.
![breakdown of intensity categories](images/breakdown_of_intensity_categories.png)
-   Since users are least active with their devices and workout on Sundays, Mondays, and Fridays, consider launching campaigns on these days to show them new features and services.
![total steps by day of week](images/total_steps_by_day_of_week.png)
-   Since users are most active with their devices during the hours of 7pm, 6pm, and 12pm, consider launching campaigns during other hours to show them new features and services.
![number of steps by hour](images/number_of_steps_by_hour.png)
-   Do not emphasize logging of distance during activities (logged_activities_distance) and measurement of sedentary distance (sedentary_active_distance) as users do not use these features.

3)  Closing thoughts
-   Feedback from customers can provide more insights into reasons of why distance-related features are less used.

--contact Chun Kong at +60 111-2992771 or i_am_gary_lai@yahoo.com for more data analysis work--

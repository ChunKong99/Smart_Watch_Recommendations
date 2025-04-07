## Objectives
1)	Identify the questions or objectives:
a) Product recommendations based on trends found in publicly available smart device usage data
b) Marketing recommendations based on trends found in publicly available smart device usage data

2)  Breaking objectives down into smaller pieces
a)  Product recommendations:
 i) Who are the top users (e.g. high bmi)?
 ii)  What are the top usage categories (e.g. amount of usage per month)?
 iii) What are the metrics that strongly correlate to benefits (e.g. calory burning)?
b)  Marketing recommendations:
 i) What are the age group of users (e.g. based on heart rate)?
 ii) What are the usage trends of each age group?
 iii) What are the hours where usage is highest?

3)	Identify the stakeholders
a)	Urška Sršen, Co-founder of Bellabeat, Chief Creative Officer
b)	Sando Mur, Co-founder of Bellabeat and key member of the Bellabeat executive team

4)  Identify assumptions of using dataset from usage of 30 users
a)	assuming total population of 100mil total users and 85% confidence level, margin of error is 13.1%
b)  assuming measurements are accurate
c)  assuming no major technology makes smart watch usage obsolete

# Preparations
1)	Identify publicly available data: FitBit Fitness Tracker Data
2)	Identify location of data: www.kaggle.com/datasets/arashnic/fitbit or [Dataset folder](bellabeat/dataset)
3)	Integrity, bias, and credibility
a) Licensed under CCO: Public Domain license
b) Dataset is stored by user "Mobius" and made publicly accessible. Data integrity is acceptable based on business objectives
c)	At 143mil total users, this publicly available dataset from 30 total users provides 85% confidence level, margin of error of 14%, which has to be factored in when deriving conclusions

## Process Phase
1) Total of 10.4mil rows in 26 tables in the dataset, hence, SQL is chosen to do data cleaning and analysis
2) Technologies used:
a) **SQL**: for data cleansing, querying, and analysis, providing critical insights
b) **PostgreSQL**: the database management system
c) **Tableau**: tool for exploratory data analysis (EDA) and to produce visualizations
d) **Visual Studio Code**: code editor to execute SQL queries
e) **Git & Github**: version control and hosting my files for public access

3)	Data cleansing
a) Data is determined to be ready for data cleansing after loading 26 csv files into PostgreSQL
b) Data cleansing performed:
 i) Date and time values are converted from FMMM/FMDD/YYYY FMHH:FMMM:FMSS AM/PM format to 2 seperate columns containing date; YYYY/MM/DD and time; 24HH:MM:SS

## Analyze Phase
Each query aims at investigating specific aspects of the relationship between metrics and other variables that provides guidance towards choosing the appropriate marketing channel(s).
1)	Determine metrics to be used to measure the data to achieve the objectives
a)  Total time of usage
b)  Top usage of 75th percentile of users
c)  Total amount of calories burnt
d)  Distribution of usage throughout a week

2)	State the hypothesis
a)	Total time of usage correlates to amount of benefit received, which is calories burnt
b)	Total time usage correlates to the reverse of age, which determines ability to perform physical activities

4)	Trends or relationships within the data
a)  


## Conclusions
1) Product recommendations:
a) **
b) **
c) **

4)	Determine correct data visualization
**Xx** elements are introduced to the stakeholders, hence, Tableau is chosen for data viz

## Act Phase
1)	Provide final conclusions
2)	Provide recommendations on how to act based on conclusions
3)	Explain reasons
4)	Determine if more data can provide more insights
5)	Closing thoughts

Expected deliverables and expected timeline
a)	A clear summary of the business task
b)	A description of all data sources used
c)	Documentation of any cleaning or manipulation of data
d)	A summary of the analysis
e)	Supporting visualizations and key findings
f)	Top high-level content recommendations based on the analysis

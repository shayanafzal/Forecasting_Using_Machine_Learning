# Overview

[Presentation](https://docs.google.com/presentation/d/1LgEP1iabjOZd_n9z482B2Ra9EhcuanqxWKVCodDJ5jM/edit#slide=id.gebf57a60df_0_0)

[Dashboard Blueprint](https://docs.google.com/presentation/d/1nNB0tEEfZtC7Wzha4ysZ-Lvb9UOqLQpGOTRMRIGp7wk/edit#slide=id.gecfb9a4986_0_85)

## Introduction
This analysis is being done for business in the snack bar category. For confidentiality reasons the business would be referred to as ‘Snack Brands’ from here onwards. Snack Brands is involved in the manufacturing of chocolate bars. 

## Problem & Proposed Solution.
Snack Brands manufactures chocolate bars for which the procurement time is 8 weeks. Hence, we need to accurately forecast the sales 8 weeks into the future in order to procure the right amount of ingredients and manufacture the snack bars that we can sell after they 8 weeks procurement process. 
To further add value, the model will be used to predict sales 6 month into the future. This will allow Snack Brands to order the ingredients early and obtain better rates.

# Description of Communication Protocols

The following communication tools will be used when working on this project

1. A private group on Slack will be used as a primary communications protocol. 
2. Recurring Zoom calls have been setup to collaborate and communicate
3. Phone will be used to communicate in case there is an argent need.


# Data

## Raw Data Set

The raw data used for this analysis can be accessed [here](https://github.com/shayanafzal/DataMiners/blob/a17ea5362ba60a61753ce50b6ce491bb05168e33/Sales_Data_Raw.csv).

## Cleaning the Data Set
The original data set that has been obtained contains data in a number of columns, not all of which are relevant. From the original data set we will only be keeping the columns listed below. A description of the category has also been provided below:

* Year
* Month 
* InvDate - Dales Invoice Number
* InvNumbers – Invoice Numbe
* Market – The sales are broken down into three different regions	
	* CAN - Canada
	* US – United States
	* NTL – International
* InvCustomer – This the customer code
* CompanyName – This is the customer name
* ItemClass – Items are classified into two categories
	* ORG – manufactured using organic ingredients
	* CONV – manufactured using conventional ingredients
* SubCategory – The products are devided into the following subcategories
	* CHOC – Chocolate
	* F&N - Fruits and Nuts
	* GRAN - Granola 
	* LSUG – Low Sugar
	* PROT – Protein
* Flavours – This is product subcategory
* Product ID
* Product Description
* UOM – Unit of Measurement, that can either be pack or a carton as indicated in the column.
* Pack -
* Real_QTY - this indicates the total number of snack bars on the sales order regardless of wheather they were sold as a case or a caron
* CAD_value – Sales price on the order


# Coding 

The coding can be accessed [here](https://github.com/shayanafzal/DataMiners/blob/main/Sales%20Forecasting%20using%20ML%20-%20Prophet%20and%20Arima.ipynb).

## Database

### Creation of a database

A mockup database "DataMiners" was created in PG Admin as seen in the below image. The table "sales_data" was created manually using the SQL query saved in the file "Sales_Data_Schema". Since this is a mockup database to be created using a single dataset file, ERD was not prepared. Our project is to predict future sales based on the historical data from July 2013 - June 2021.

![Image](https://github.com/shayanafzal/DataMiners/blob/main/Resources/Segment%201/DataMiners_DB.png)

### Files used for creating database

The final version of analysis will utilize pandas to deleting the unwanted columns. For segment 1 deliverable the unwanted columns have been deleted manually in excel. The final file containing only the columns necessary for this analysis can be accessed [here](https://github.com/shayanafzal/DataMiners/blob/main/Sales_Data%20-%20Only%20the%20columns%20we%20need.csv).

## Machine Learning Components

The following machine learning the models are being explored for this analysis. 

### Prophet

Prophet is a procedure that can be used to forecast time series data. This database works best with time series data that have seasonal affect and for dataset that contains several years of historical data. The raw data set being used for this analysis contains data from year 2013 to 2021, hence they stood out as a good choice. 

### Arima
Arima is another model that has been chosen to create a sales forecast. The results obtained will be analyzed to determine if this is a good model to use for the available data set. 

### Current Analysis
The 'seaborn' statistical data visualization library has been used to plot the data in order to identify trends. This gives an a high-level overview of the data that we are working with. This helps when analyzing the forecast results that will be obtained using 'Prophet' and 'Arima'

### Further Analysis
The aforementioned models are being used to forecast the sales. The results given by these methods would be further analyzed and the raw data may be further narrowed down to exclude sales data from the years 2020 and 2021. The current analysis shows that the sales were extremely low in the years 2020 and 2021 due to the affect of the Covid-19 Pandemic. Hence, it may better to exclude this data from the model. Further analysis will be done to see how the data from the pandemic time period affects the forecast.







# Technologies Used
## Data Cleaning and Analysis
Our project will use Pandas and Python for data cleaning, manipulation, integration and analysis. 

## Database Storage
After cleaning and analyzing our data, we will use PostgreSQL server. We will then use a Postgres query to join the data and further connect it to our Machine Learning Model.

## Machine Learning
We will be using the method of linear regression and Prophet for our Machine Learning Model. Also using the seaborn library and Arima

## Dashboard
We will use Javascript & HTML for the dashboard to view and analyze the difference in our snack bar results.








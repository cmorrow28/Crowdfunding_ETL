# Crowdfunding_ETL
By Cayley Morrow, Zonia Quiroga, and Michael Lee

-----------------------------------------------------------------------------

This project involves building an ETL pipeline using Python, Pandas, and Python dictionary methods to extract and transform the data. After transforming the data, CSV files are created and used to create an ERD and table schema. The CSV file is then uploaded into a Postgres database. 

-----------------------------------------------------------------------------
## FIles within the project folders:


Database                     | 
---------------------------- | 
AllTableImportsToDB.PNG      | 
CampaignTable-Data.PNG       | 
CategoryTable-Data.PNG       | 
ContactsTable-Data.PNG       | 
CreatedDatabase.PNG          | 
CrowdFunding-ERD.PNG         | 
PgAdmin-CrowdFunding-ERD.PNG |
SubcategoryTable-Data.PNG    |


Resources         |
----------------- |
campaign.csv      |
category.csv      |
contacts.csv      |
contacts.xlsx     |
crowdfunding.xlsx |
subcategory.csv   |


------------------------------------------------------------------------------

## The project is divided into the following subsections:

1. Create the Category and Subcategory DataFrames
2. Create the Campaign DataFrame
3. Create the Contacts DataFrame
4. Create the Crowdfunding Database

------------------------------------------------------------------------------

### Creating the Category and Subcategory DataFrame
#### Category DataFrame

Extract and transform the excel data from `crowdfunding.xlsx` to create a Category DataFrame containing:
- category_id: sequential entries as "cat _n_"
- category: contains the category titles

**_The Category DataFrame is then saved as 'category.csv' in the `Resources` Folder_**

#### Subcategory DataFrame
Extract and transform the excel data from 'crowdfunding.xlsx' to create a Subcategory DataFrame containing:
- subcategory_id: sequential entries as "subcat _n_"
- subcategory: contains the subcategory titles

**_The Subcategory DataFrame is then saved as `subcategory.csv` in the `Resources` Folder_**

------------------------------------------------------------------------------

### Creating the Campaign DataFrame

Extract and transform the excel data from `crowdfunding.xlsx` using Pandas DataFrame methods to create a Campaign DataFrame that has the following columns:
- "cf_id" column
- "contact_id" column
- "company_name" column
- "blurb" column, renamed to "description"
- "goal" column, converted to the float data type
- "pledged" column, converted to the float data type
- "outcome" column
- "backers_count" column
- "country" column
- "currency" column
- "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
- "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
- "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
- "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame

**_The Campaign DataFrame is then saved as `campaign.csv` in the `Resources` Folder_**

------------------------------------------------------------------------------

### Creating the Contact DataFrame

Extract and transform the excel data from `crowdfunding.xlsx` using Pandas DataFrame methods to create a Contact DataFrame that has the following columns:

- "contact_id" column
- "first_name" column
- "last_name" column
- "email" column

This is done by iterating through each the DataFrame and converting each row to a Dictionary, then by iterating through each dictionary the following is done:
- the dictionary values are extracted from the keys using a Python list comprehension
- the values for each row are added to a list

A new DataFrame (contact) is created containing the extracted data

**_The Contact DataFrame is then saved as `contact.csv` in the `Resources` Folder_**

-----------------------------------------------------------------------------

### Creating the Crowdfunding Database

- An ERD is sketched to create a table schema for each CSV file as `crowdfunding_db_schema.sql`
- A Postgres database is created named `crowdfunding_db`
  - Each table is created by running a `SELECT` statement
  - The corresponding CSV file is imported into the SQL table
  - Each table is verified that the correct data was imported
 

_**The SQL database has been demonstrated by the files in the `Database` Folder**_

------------------------------------------------------------------------------

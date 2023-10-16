# Crowdfunding_ETL
By Cayley Morrow, Zonia Quiroga, and Michael Lee

-----------------------------------------------------------------------------

This project involves building an ETL pipeline using Python, Pandas, and Python dictionary methods to extract and transform the data. After transforming the data, CSV files are created and used to create an ERD and table schema. The CSV file is then uploaded into a Postgres database. 

-----------------------------------------------------------------------------

## The project is divided into the following subsections:

1. Create the Category and Subcategory DataFrames
2. Create the Campaign DataFrame
3. Create the Contacts DataFrame
4. Create the Crowdfunding Database

------------------------------------------------------------------------------

### Creating the Category and Subcategory DataFrame
#### Category DataFrame

Extract and transform the excel data from 'crowdfunding.xlsx' to create a Category DataFrame containing:
- category_id: sequential entries as "cat _n_"
- category: contains the category titles

The Category DataFrame is then saved as 'category.csv' in the Resources Folder

#### Subcategory DataFrame
Extract and transform the excel data from 'crowdfunding.xlsx' to create a Subcategory DataFrame containing:
- subcategory_id: sequential entries as "subcat _n_"
- subcategory: contains the subcategory titles

The Subcategory DataFrame is then saved as 'subcategory.csv' in the Resources Folder

------------------------------------------------------------------------------

### Creating the Campaign DataFrame

Extract and transform the excel data from 'crowdfunding.xlsx' using Pandas DataFrame methods to create a Campaign DataFrame that has the following columns:
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

The Campaign DataFrame is then saved as 'campaign.csv' in the Resources Folder

------------------------------------------------------------------------------

### Creating the Contact DataFrame

Extract and transform the excel data from 'crowdfunding.xlsx' using Pandas DataFrame methods to create a Contact DataFrame that has the following columns:

- "contact_id" column
- "first_name" column
- "last_name" column
- "email" column

This is done by iterating through each the DataFrame and converting each row to a Dictionary, then by iterating through each dictionary the following is done:
- the dictionary values are extracted from the keys using a Python list comprehension
- the values for each row are added to a list

A new DataFrame (contact) is created containing the extracted data

The Contact DataFrame is then saved as 'contact.csv' in the Resources Folder

-----------------------------------------------------------------------------

### Creating the Crowdfunding Database


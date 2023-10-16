# Crowdfunding_ETL

This project involves building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After transforming the data, CSV files are created and used to create an ERD and table schema. The CSV file is then uploaded into a Postgres database. 

-----------------------------------------------------------------------------

## The project is divided into the following subsections:

1. Create the Category and Subcategory DataFrames
2. Create the Campaign DataFrame
3. Create the Contacts DataFrame
4. Create the Crowdfunding Database

------------------------------------------------------------------------------

### Creating the Category and Subcategory DataFrame
#### Category DataFrame
Extract and transform the excel data from 'crowdfunding.xlsx' to create a category DataFrame containing:
- category_id: sequential entries as "cat _n_"
- category: contains the category titles

The category DataFrame is then saved as 'category.csv'

#### Subcategory DataFrame
Extract and transform the excel data from 'crowdfunding.xlsx' to create a subcategory DataFrame containing:
- subcategory_id: sequential entries as "subcat _n_"
- subcategory: contains the subcategory titles

The subcategory DataFrame is then saved as 'subcategory.csv'

------------------------------------------------------------------------------

### Creating the Campaign DataFrame
Extract and transform the excel data from 'crowdfunding.xlsx' using Python dictionary methods to create a campaign DataFrame that has the following columns:
- The "cf_id" column
- The "contact_id" column
- The "company_name" column
- The "blurb" column, renamed to "description"
- The "goal" column, converted to the float data type
- The "pledged" column, converted to the float data type
- The "outcome" column
- The "backers_count" column
- The "country" column
- The "currency" column
- The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
- The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
- The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
- The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame

The campaign DataFrame is then saved as 'campaign.csv'

------------------------------------------------------------------------------

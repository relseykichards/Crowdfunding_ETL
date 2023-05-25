# Crowdfunding_ETL
Project 2 - Extract, Transform, Load

This project has been completed by Kelsey Richards and Chase Reynolds. 

In this repository, you will find the 'ELT_Mini_Project_KRichards_CReynolds.ipynb' file containing the Python code to extract and transform the raw Excel files into useable DataFrames (see Resouces folder). To complete these tasks, we broke up the requirements into DataFrame deliverables: Categories, Subcategories, Campaigns, and Contacts - which later became our tables in a SQL database. 

We were able to transform each of the raw files into Pandas DataFrames with logical column names and organization that would be easily understandable by another analyst to pick up and use. By using Pandas and NumPy libraries, the DataFrames are then prepared to be loaded into the SQL database (we used PostgreSQL).

After understanding the properties of each DataFrame, we were able to use QuickDBD.com to sketch out an ERD to visualize how each DataFrame could be loaded into the database and their relationship with one another. We used primary and foreign keys to connect each DataFrame into one SQL database, which can be seen in the schema in this repo (see: crowdfunding_db_schema.sql).

The final result is the completed csv files in the proper format and schema used to create tables in PostgreSQL.

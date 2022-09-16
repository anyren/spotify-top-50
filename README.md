![Top50](https://github.com/anyren/spotify-top-50/blob/main/Images/billboards_gif.gif)

 # Spotify Top 50 2020-2021
#### Project 2 for the University of Minnesota Data Analysis Boot Camp
-----
## Overview

We wanted to make it easy to analyze popular songs from Spotify. We found data for the top 50 tracks for the years 2020 and 2021 and did some cleaning and transformation to load them into a postgreSQL database where they can be analyzed further. This process could be repeated for future years to build on the dataset.

## Collaborators
* Adrian Wood
* Amanda Nyren
* Joey Eikens

## Data
[Spotify Top 50 Tracks for 2020](https://www.kaggle.com/datasets/atillacolak/top-50-spotify-tracks-2020) - put together by Kaggle user ATILLA COLAK  
[Spotify Top 50 Tracks for 2021](https://www.kaggle.com/datasets/equinxx/spotify-top-50-songs-in-2021) - put together by Kaggle user HANNA YUKHYMENKO

CSV files for both these data sets are in the `data` directory.

## Instructions for Use

This code was written using Python 3.8 and requires the following packages:
* pandas
* sqlalchemy
* psycopg2

Steps to load data:
1. Create a postgreSQL database named `spotify_top50`
1. Run `schema.sql` from the project root to set up the required tables. Refer to the ERD below.
![schema diagram](schema.png)
1. Create a `config.py` file in the project root and assign the password for your database user to the variable. `db_password`. 
1. Run the code in the Jupyter Notebook to perform the ETL steps

**NOTE**: you may need to update the database configuration as outlined in the "Load" section of the jupyter notebook to match your local settings.


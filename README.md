# Spotify Top 50 2020-2021
#### Project 2 for the University of Minnesota Data Analysis Boot Camp
-----
## Overview

## Collaborators
* Adrian Wood
* Amanda Nyren
* Joey Eikens

## Data
[Spotify Top 50 Tracks for 2020](https://www.kaggle.com/datasets/atillacolak/top-50-spotify-tracks-2020) - put together by Kaggle user ATILLA COLAK  
[Spotify Top 50 Tracks for 2021](https://www.kaggle.com/datasets/equinxx/spotify-top-50-songs-in-2021) - put together by Kaggle user HANNA YUKHYMENKO

CSV files for both these data sets is in the `data` directory.

## Instructions for Use

This code was written using Python 3.8 and requires the following packages:
* pandas
* sqlalchemy

Steps to run:
1. Clone the repo
1. Create a postgreSQL database named `spotify_top50`
1. Run `schema.sql` from the project root to set up the required tables.
1. Create a `config.py` file in the project root and assign the password for your database user to the variable. `db_password`. 
1. In the Jupyter Notebook, review the database configuration under the "Load" section and update if necessary
1. Run the code in the Jupyter Notebook to perform the ETL steps

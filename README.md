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

## Instructions for Use

### Transforming Data
1. Download the 2020 and 2021 datasets from kaggle.com: 
    * https://www.kaggle.com/datasets/atillacolak/top-50-spotify-tracks-2020
    * https://www.kaggle.com/datasets/equinxx/spotify-top-50-songs-in-2021
2. Use Pandas to create a separate dataframe from each data set. 
3. In each dataframe, create a new column with the dataset year. Use the format YYYY.
3. Rename the columns in each dataframe per Table 1.

**Table 1.**
Dataframe | Original Column Name | New Column Name
---|---|---
2020 | id | rank
2020 | artist_name | artist
2021 | Unnamed: 0 | rank

4. Add 1 to each entry in the 2020 dataframe rank column so that the lowest rank is 1.
5. Alter the 2020 and 2020 dataframes to include only the following columns
    * year
    * rank
    * artist
    * track_name
    * danceability
    * energy
    * key
    * loudness
    * speechiness
    * acousticness
    * instrumentalness
    * liveness
    * valence
    * tempo
    * duration_ms
6. Combine both dataframes. The shape of the resulting dataframe should be 100 row X 15 columns.
7. The combined dataframe will be refered to as combined_df in subsequent steps.

#### Creating the artist dataframe
1.  Create a dataframe containing the columns outlined in Table 2.

**Table 2.**
Column Name | Column Description
---|---
artist_name | Filter combined_df by unique values in the artist column. Rename the column to artist_name, and set inplace=True.
artist_id | This column should contain the count of rows starting at 1 and incrementing by 1 for each row. 

#### Creating the tracks dataframe

1. Create a new dataframe named "tracks" from the following columns in combined_df:
    * track_name
    * artist
    * danceability
    * energy
    * key
    * loudness
    * speechiness
    * acousticness
    * instrumentalness
    * liveness
    * valence
    * tempo
    * duration_ms

2. Create a column named
    JPE note - what is the function of "tracks.rename(columns={0:'track_name'}, inplace=True)"


3. Drop duplicates from the tracks dataframe.
4. Sort the tracks dataframe by values in the track_name column.
5. Insert a column named track_id where the values contain the count of rows starting at 1 and incrementing by 1 for each row.

#### Creating the charts dataframe
1. Create a new dataframe named "chart" from the following columns in combined_df:
    * year
    * rank
    * artist
    * track_name

### Creating SQL Database

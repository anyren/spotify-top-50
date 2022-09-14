-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/k0X7lT
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "artist" (
    "artist_id" int   NOT NULL,
    "artist" varchar(255)   NOT NULL,
    CONSTRAINT "pk_artist" PRIMARY KEY (
        "artist_id"
     )
);

CREATE TABLE "track" (
    "track_id" int   NOT NULL,
    "artist_id" int   NOT NULL,
    "track_name" varchar(255)   NOT NULL,
    "artist" int   NOT NULL,
    "danceability" int   NOT NULL,
    "energy" float   NOT NULL,
    "key" int   NOT NULL,
    "loudness" float   NOT NULL,
    "speechiness" float   NOT NULL,
    "acousticness" float   NOT NULL,
    "instrumentalness" float   NOT NULL,
    "liveness" float   NOT NULL,
    "valence" float   NOT NULL,
    "tempo" float   NOT NULL,
    "duration_ms" int   NOT NULL,
    CONSTRAINT "pk_track" PRIMARY KEY (
        "track_id"
     )
);

CREATE TABLE "chart" (
    "year" int   NOT NULL,
    "rank" int   NOT NULL,
    "artist_id" int   NOT NULL,
    "track_id" int   NOT NULL,
    CONSTRAINT "pk_chart" PRIMARY KEY (
        "year","rank"
     )
);

ALTER TABLE "chart" ADD CONSTRAINT "fk_chart_artist_id" FOREIGN KEY("artist_id")
REFERENCES "artist" ("artist_id");

ALTER TABLE "chart" ADD CONSTRAINT "fk_chart_track_id" FOREIGN KEY("track_id")
REFERENCES "track" ("track_id");


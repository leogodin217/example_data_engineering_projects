drop table if exists stg_name_basics;
create table if not exists stg_name_basics (
    nconst varchar,
    primaryName varchar,
    birthYear varchar,
    deathYear varchar,
    primaryProfession varchar,
    knownForTitle varchar
);
-- Some names have a quote in them, so we make backspace the quote character
-- Thanks Danny_ds https://stackoverflow.com/questions/44108286/unterminated-csv-quoted-field-in-postgres
\copy stg_name_basics from 'data/name.basics.tsv' DELIMITER E'\t' QUOTE E'\b' CSV HEADER; 

drop table if exists stg_title_akas;
create table if not exists stg_title_akas (
    titleId varchar,
    ordering varchar,
    title varchar,
    region varchar,
    language varchar,
    types varchar,
    attributes varchar,
    isOriginalTitle varchar
);
\copy stg_title_akas from 'data/title.akas.tsv' DELIMITER E'\t' QUOTE E'\b' CSV HEADER; 

drop table if exists stg_title_basics;
create table if not exists stg_title_basics (
    tconst varchar,
    titleType varchar,
    primaryTitle varchar,
    originalTitle varchar,
    isAdult varchar,
    startYear varchar,
    endYear varchar,
    runtimeMinutes varchar,
    genres varchar
);
\copy stg_title_basics from 'data/title.basics.tsv' DELIMITER E'\t' QUOTE E'\b' CSV HEADER; 

drop table if exists stg_title_crew;
create table if not exists stg_title_crew (
    tconst varchar,
    directors varchar,
    writers varchar
);
\copy stg_title_crew from 'data/title.crew.tsv' DELIMITER E'\t' QUOTE E'\b' CSV HEADER;

drop table if exists stg_title_episodes;
create table if not exists stg_title_episodes (
    tconst varchar,
    parentTconst varchar,
    seasonNumber varchar,
    episodeNumber varchar
);
\copy stg_title_episodes from 'data/title.episode.tsv' DELIMITER E'\t' QUOTE E'\b' CSV HEADER;

drop table if exists stg_title_principals;
create table if not exists stg_title_principals (
    tconst varchar,
    ordering varchar,
    nconst varchar,
    category varchar,
    job varchar,
    characters varchar
);
\copy stg_title_principals from 'data/title.principals.tsv' DELIMITER E'\t' QUOTE E'\b' CSV HEADER;

drop table if exists stg_title_ratings;
create table if not exists stg_title_ratings (
    tconst varchar,
    averageRating varchar,
    numVotes varchar
);
\copy stg_title_ratings from 'data/title.ratings.tsv' DELIMITER E'\t' QUOTE E'\b' CSV HEADER;
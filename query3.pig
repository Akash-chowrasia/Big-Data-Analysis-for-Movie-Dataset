-- Query Statement:

-- List the movie names and rating of all movies in which movie name contains the
-- word “boys” or the word “wild” ?

a = load "/movies.csv" using PigStorage(",") as (SNO,NAME,RYEAR,RATING,RUNTIME);
r = filter a by NAME matches ".*boys.*" or ".*wild.*";
s = foreach r generate NAME,RATING;
dump s;

-- OUTPUT:


-- Query Statement : List the movie names and rating of all movies having a rating greater than 4.3 ?


a = load „/movies.csv‟ using PigStorage(„,‟) as (SNO,NAME,RYEAR,RATING,RUNTIME);
b = filter a by RATING>4.3;
c = foreach b generate NAME,RATING;
dump c;

-- OUTPUT:

-- (Freaks and Geeks: The Complete Series,4.4)
-- (Samurai Champloo,4.4)
-- (Long Way Round,4.4)
-- (Breaking Bad: Season 1,4.5)
-- (Gifted Hands: The Ben Carson Story,4.4)
-- (Breaking Bad: Season 2,4.5)
-- (Sherlock: Series 1,4.5)
-- (Fullmetal Alchemist: Brotherhood: Part 3,4.4)
-- (Arrow,4.4)
-- (Arrow: Season 1,4.4)
-- (Call the Midwife,4.4)
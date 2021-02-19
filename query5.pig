-- Query Statement:

-- Count the number of movies released in the year 1989 ?

a = load „/movies.csv‟ using PigStorage(„,‟) as (SNO,NAME,RYEAR,RATING,RUNTIME);
b = filter a by reldate==1989;
c = group b all;
d = foreach c generate COUNT(b);
dump d;

-- OUTPUT:
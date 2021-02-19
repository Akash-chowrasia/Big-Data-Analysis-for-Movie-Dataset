-- Query Statement:

-- Create a relation which limits the number of movies to 1000 and having a
-- rating of more than 3 ?

a = load "/movies.csv" using PigStorage(",") as (SNO,NAME,RYEAR,RATING,RUNTIME);
b = filter a by RATING>3.0;
c = limit b 1000;
dump c;


-- OUTPUT:

-- (1,The Nightmare Before Christmas,1993,3.9,4568)
-- (2,The Mummy,1932,3.5,4388)
-- (3,Orphans of the Storm,1921,3.2,9062)
-- (6,One Magic Christmas,1985,3.8,5333)
-- (7,Muriel's Wedding,1994,3.5,6333)

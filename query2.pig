-- Query statement:

-- List the movie names and re1ease year of all movies released before 1990 and do
-- not have a null in the rating.

a = load "/movies.csv" using PigStorage(",") as (SNO,NAME,RYEAR,RATING,RUNTIME);
b = filter a by RYEAR<1990 and RATING>0;
c= foreach b generate NAME,RYEAR;
dump c;

-- OUTPUT:

-- (The Mummy,1932)
-- (Orphans of the Storm,1921)
-- (Night Tide,1963)
-- (One Magic Christmas,1985)
-- (The Boys from Brazil,1978)
-- (Big Doll House,1971)
-- (The Breakfast Club,1985)
-- (The Bride of Frankenstein,1935)
-- (Bustin' Loose,1981)
-- (The Beguiled,1971)
-- (Born on the Fourth of July,1989)
-- (Broadcast News,1987)
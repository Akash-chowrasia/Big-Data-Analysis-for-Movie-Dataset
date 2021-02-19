-- Query Statement:

-- List all movie names and release year for the movie names beginning with ‟A”
-- and rating is null and release year is not between 1980 and 1995 ?

a = load "/movies.csv" using PigStorage(",") as (SNO,NAME,RYEAR,RATING,RUNTIME);
e = filter a by NAME matches "A.*" and RATING is null and (RYEAR<1980 or RYEAR>1995);
f = foraeach e generate NAME,RYEAR;
dump f;

-- OUTPUT:

-- (Auschwitz: Inside the Nazi State: Episode 2: Orders and Initiatives,2005)
-- (Auschwitz: Inside the Nazi State: Episode 3: Factories of Death,2005)
-- (Auschwitz: Inside the Nazi State: Episode 1: Surprising Beginnings,2005)
-- (Auschwitz: Inside the Nazi State: Episode 6: Liberation and Revenge,2005)
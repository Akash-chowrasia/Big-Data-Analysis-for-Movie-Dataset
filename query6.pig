-- Query Statement:

-- Rank the movies in a continuous manner. Ranking should be based on the release
-- year in Ascending number ?

a = load „/movies.csv‟ using PigStorage(„,‟) as (SNO,NAME,RYEAR,RATING,RUNTIME);
b = rank a by RYEAR DENSE;
dump b;

-- OUTPUT:

-- (2,610,Cabiria,1914,2.9,7684)
-- (2,20055,Charlie Chaplin Collection: Shorts: His New Job A Jitney Elopement,1914,,3405)
-- (2,20061,Charlie Chaplin Collection: Shorts: Work In The Park Good For Nothing,1914,,3357)
-- (2,20062,Charlie Chaplin Collection: Shorts: A Woman Rival Mashers,1914,,3060)
-- (2,20066,Charlie Chaplin Collection: Shorts: The Count The Cure,1914,,2862)
-- (2,20067,Charlie Chaplin Collection: Shorts,1914,3.8,)
-- (2,29801,Charlie Chaplin Collection,1914,3.8,)
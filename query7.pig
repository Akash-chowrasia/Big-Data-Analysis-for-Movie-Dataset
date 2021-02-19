-- Query Statement:

-- Split this dataset into three relations, one containing movie data with rating
-- <3.5, another with movie data containing rating>=3.5 but less than 4.0 and
-- remaining in the third relation ?



a = load "/movies.csv" using PigStorage(",") as (SNO,NAME,RYEAR,RATING,RUNTIME);
SPLIT a INTO x if RATING<3.5,y if (RATING>=3.5 and RATING<4.0),z if RATING>=4.0;

-- OUTPUT:

dump x;

-- (4,The Object of Beauty,1991,2.8,6150)
-- (5,Night Tide,1963,2.8,5126)
-- (13,The Birth of a Nation,1915,2.9,12118)
-- (15,Big Doll House,1971,2.9,5696)

dump y;

-- (1,The Nightmare Before Christmas,1993,3.9,4568)
-- (2,The Mummy,1932,3.5,4388)
-- (6,One Magic Christmas,1985,3.8,5333)
-- (7,Muriel's Wedding,1994,3.5,6323)
-- (9,Nosferatu: Original Version,1929,3.5,5651)

dump z;

-- (12,Big Night,1996,3.6,6561)
-- (14,The Boys from Brazil,1978,3.6,7417)
-- (17,The Bride of Frankenstein,1935,3.7,4485)
-- (18,Beautiful Girls,1996,3.5,6755)
-- (19,Bustin' Loose,1981,3.7,5598)


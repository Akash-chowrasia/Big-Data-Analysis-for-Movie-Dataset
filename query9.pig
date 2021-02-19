-- Query Statement:

-- Generate a 1% sample of this dataset and display and store it ?

a = load "/movies.csv" using PigStorage(",") as (SNO,NAME,RYEAR,RATING,RUNTIME);
b = sample a 0.01;
dump b;
store b into "/file";

-- OUTPUT:

-- (200,Tales from the Hood,1995,3.4,5850)
-- (205,Things to Do in Denver When You're Dead,1995,3.4,6932)
-- (254,How to Be a Player,1997,3.7,5632)
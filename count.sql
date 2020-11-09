-- Total Population of the world
SELECT SUM(population)
FROM world;

-- List all the continents - just once each.
SELECT DISTINCT(continent) FROM world

-- Africa's total GDP 
SELECT SUM(gdp) FROM world
    where continent = 'Africa';


-- How many countries have an area of at least 1000000
SELECT COUNT(name)
FROM world
WHERE area >= 1000000;


-- What is the total population of ('Estonia', 'Latvia', 'Lithuania')
SELECT SUM(population) FROM world
where name in ('Estonia', 'Latvia', 'Lithuania')


-- For each continent show the continent and number of countries.
SELECT continent, COUNT(name) FROM world
GROUP BY continent

-- List the continents that have a total population of at least 100 million.

SELECT continent , COUNT(name)
FROM world
WHERE population > 10000000
GROUP BY continent

-- List the continents that have a total population of at least 100 million.
SELECT continent
FROM world
HAVING SUM(population) > 100000000
GROUP BY continent

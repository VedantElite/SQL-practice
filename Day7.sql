/* 1. Find cities with the shortest and longest names, with alphabetical tie-breaking */
(SELECT CITY, LENGTH(CITY) 
 FROM STATION 
 ORDER BY LENGTH(CITY) ASC, CITY ASC 
 LIMIT 1)
UNION ALL
(SELECT CITY, LENGTH(CITY) 
 FROM STATION 
 ORDER BY LENGTH(CITY) DESC, CITY ASC 
 LIMIT 1);

/* 2. Find unique city names that end with vowels (a, e, i, o, u) */
SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY REGEXP '[aeiou]$';

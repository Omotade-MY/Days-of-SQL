-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

Select distinct CITY from STATION where CITY like '%[a,e,i,o,u]'

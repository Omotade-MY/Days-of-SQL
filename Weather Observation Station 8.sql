--Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

Select distinct CITY from STATION where city like '[a,e,i,o,u]%[a,e,i,o,u]'

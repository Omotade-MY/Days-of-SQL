--Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

select SUM(POPULATION) from CITY where (COUNTRYCODE='JPN')

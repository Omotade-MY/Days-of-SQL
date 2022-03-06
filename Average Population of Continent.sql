/* Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns. */

select COUNTRY.CONTINENT, ROUND(AVG(CITY.POPULATION),0,1) as avg_pop
    from (COUNTRY INNER JOIN CITY 
          on country.code = city.countrycode)
    GROUP BY
        COUNTRY.CONTINENT

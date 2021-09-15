-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
declare
@diff int,
@totcity int,
@distcity int
set @totcity = (SELECT COUNT (CITY) FROM STATION);
set @distcity = (Select  count (distinct CITY) from STATION);
set @diff = @totcity - @distcity;
print @diff;

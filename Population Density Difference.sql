-- Query the difference between the maximum and minimum populations in CITY.


declare
@maxpop int,
@minpop int,
@diff int
set @maxpop = (select MAX(POPULATION) FROM CITY)
set @minpop = (select MIN(POPULATION) FROM CITY)
set @diff = @maxpop - @minpop
print @diff

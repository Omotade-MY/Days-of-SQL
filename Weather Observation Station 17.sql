-- Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than . Round your answer to  decimal places.

declare @minlat float
set @minlat = (select min(lat_n) from station where lat_n>38.7780)
select cast(round(long_w,4,0) as decimal(12,4)) from station where lat_n = @minlat

--Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345 . Round your answer to  decimal places.

declare
@maxlat float
set @maxlat = (select max(lat_n) from station where (lat_n<137.2345))
select cast(round(long_w,4,0) as decimal(18,4)) from station where(lat_n = @maxlat)

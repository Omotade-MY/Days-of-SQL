--Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to 4 decimal places

select cast(round(min(lat_n),4,0) as decimal(12,4)) from station where (lat_n > 38.7780)

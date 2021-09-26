/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* 
* * 
* * * 
* * * * 
* * * * *

Write a query to print the pattern P(20).
*/

declare @counter int
set @counter = 0
while @counter < 20
    begin
        set @counter +=  1
        print replicate("* ", @counter)
    end
        

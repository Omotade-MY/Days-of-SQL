/* We define an employee's total earnings to be their monthly  worked salary x months, and the maximum total earnings to be the maximum total earnings for any employee in 
the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. 
Then print these values as  space-separated integers. */

declare
@maxearn int,
@nummaxearn int
set @maxearn = (select max([months]*[salary]) from Employee)
set @nummaxearn = (select count(employee_id) from Employee where ([months]*[salary] = @maxearn))
print cast(@maxearn as varchar) + ' '+ cast(@nummaxearn as varchar)

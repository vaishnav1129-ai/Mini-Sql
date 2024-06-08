use cars;
-- Read all the days for the car table
select * from car;
-- To count total number of values in the table--
select count(*)  from car;
-- How many cars will be ther in 2023
select count(*) from car where year = 2023;
-- Print the name of the car and the maximum selling price  and max power
select name , selling_price from car where selling_price = (select max(selling_price) from car);
select name , max_power from car where max_power = (select max(max_power) from car);
-- Print the car name where the fuel is diesel and owner is second 
select name from car where fuel = 'Petrol'  and  owner = 'Second Owner';
-- Print all the cars by year
select year, count(*)  from car group by year;
-- Sum of the selling price in the year of 2023
select sum(selling_price) from car where year = 2023;
-- How many diesel cars avaible in 2022
select name, count(*) as rt from car where fuel ='Diesel' and year = 2022 group by name;
-- Print all the fule by the year
select year, count(*) from car where fuel='Diesel' group by year;
select year, count(*) from car where fuel='Petrol' group by year;
select year, count(*) from car where fuel='CNG' group by year;



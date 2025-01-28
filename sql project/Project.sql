-- Requirements are mentioned below.
-- 1) Read Cars Data

	create database car;
	use car;
	select * from car_data;


-- 2) Total Cars: To get a count of total records.
	
    select count(Name) from car_data;
		

-- 3) The Client asked me to show, how many cars will be available in 2023?

	select count(Name) from car_data where year = 2023;
  
-- 4) The Client asked me to show, how many cars is available in 2020,2021,2022?

	select Count(Name) from car_data where year in (2020,2021,2022) group by year; 


-- 5) Client asked me to print the totals of all cars by year. I don’t see all the details.

	select  count(Name) from car_data group by year;

-- 6) Client asked to car dealer agent, how many diesel cars will there be in 2020?

	select count(fuel) as "Diesel car " , year from car_data where fuel = "Diesel" AND year = 2020;

-- 7) How many petrol cars will be there in 2020?

	select count(fuel) , year from car_data where  fuel = "petrol" AND year = 2020;

--    8) Give a print of all the fuels cars (petrol, diesel, and CNG) come by all years?

	select count(fuel), year from car_data group by year;
    
-- 9) Were more than 100 cars in a given year, which year had more than 100 cars?
	
	select year , count(Name) from car_data group by year having  count(Name) > 100;
    

-- 10) Count All cars details between 2015 and 2023 need a complete list?
	
    select count(*) from car_data where year between 2015 AND 2023;

-- 11) All cars details between 2015 to 2023, need complete list?

	
    select * from car_data where year between 2015 AND 2023;

	
	


create database car;
use car;
select * from car_data;

-- 	
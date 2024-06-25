use ass;
show tables;
select * from swiggy;

# How many restaurant has rating more than 4.5

select count( distinct restaurant_name) as higg_rated from swiggy where rating > 4.6;

# To count the total number of veg foods

select count(veg_or_nonveg) as tot_veg_food from swiggy where veg_or_nonveg = 'veg';

#To show the higest number of restaurant form a city 

select city,count(distinct restaurant_name) 
as restaurant_count from swiggy
group by city
order by restaurant_count desc 
limit 2;

# How many restaurant has pizza in the name 

select count(distinct restaurant_name) from swiggy where restaurant_name like "% Pizza% ";

# show the city name that starts with a

SELECT * FROM swiggy
WHERE city LIKE 'a%';

# To count the total no of indian cuisine form ahmedabad city

select count(cuisine) from swiggy where cuisine='Indian' and city='Ahmedabad';

# most common ordered cuisine form swiggy 

select cuisine , count(*) as scount from swiggy  group by cuisine order by scount 
desc limit 2;

# avg rating form a city 

select city, avg(rating) as average_rating
from swiggy group by city;

#   high price 

select restaurant_name, max(price) as average_rating
from swiggy group by restaurant_name order by average_rating desc limit 1;

# Top 3 restaurant_name and city where the most food ordered  

select restaurant_name, city , count(restaurant_name) as top from swiggy group by restaurant_name , city order by top desc limit 3;

# To print the highest cost of the food in each restaurant

select restaurant_name , max(price) as hig_price from swiggy   group by restaurant_name  order by hig_price desc;

# FIND THE RESTAURANTS THAT HAVE AN AVERAGE COST WHICH IS HIGHER THAN THE TOTAL AVERAGE COST OF ALL RESTAURANTS TOGETHER.

select distinct restaurant_name, cost_per_person cost from swiggy where cost_per_person > (select avg(cost_per_person) from swiggy);  

# RETRIEVE THE DETAILS OF RESTAURANTS THAT HAVE THE SAME NAME BUT ARE LOCATED IN DIFFERENT CITIES.

select distinct t1.restaurant_name, t1.city , t2.city from swiggy t1 join swiggy t2 
where t1.restaurant_name = t2.restaurant_name and t1.city <> t2.city;

# RETRIEVE THE DETAILS OF RESTAURANTS THAT HAVE THE SAME NAME BUT ARE DIFFERENT Cuisine.

select distinct t1.restaurant_name, t1.cuisine as co1, t2.cuisine as co2 from swiggy t1 join swiggy t2 where t1.restaurant_name = t2.restaurant_name
and t1.cuisine <> t2.cuisine;
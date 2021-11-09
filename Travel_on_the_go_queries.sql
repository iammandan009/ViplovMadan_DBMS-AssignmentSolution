-- 3)How many females and how many male passengers travelled for a minimum distance of 600 KM s?
select 
gender, count(*) as Total_Number 
from passenger
where distance>= 600
group by gender;
-- 4)Find the minimum ticket price for Sleeper Bus.
Select 
min(price) as Minimum_Price 
from price
where bus_type="Sleeper";

-- 5)Select passenger names whose names start with character 'S'
select
passenger_name 
from passenger
where passenger_name like 'S%';
-- 6)Calculate price charged for each passenger displaying Passenger name, Boarding City, Destination City, Bus_Type, Price in the output
select
passenger_name as PassengerName, Boarding_city as BoardingCity, destination_city as DestinationCity, passenger.bus_type as BusType, price.price
from passenger
join price 
on passenger.bus_type=price.bus_type
and passenger.distance= price.distance;

-- 7)What is the passenger name and his/her ticket price who travelled in Sitting bus for a distance of 1000 KM s

select passenger.passenger_name, price.price
from passenger
join price
on passenger.bus_type=price.bus_type
and passenger.distance= price.distance
and passenger.bus_type='Sitting'
and passenger.distance=1000;

-- 8)What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji?
select price, price.bus_type
from price
join passenger
on passenger.distance= price.distance
and passenger.passenger_name='Pallavi';

-- 9)List the distances from the "Passenger" table which are unique (non-repeated distances) in descending order.

select distinct Distance
from passenger
order by distance desc;

-- 10)Display the passenger name and percentage of distance travelled by that passenger from the total distance travelled by all passengers without using user variables
select passenger_name, (distance/(select sum(distance) from passenger))*100 as percentOfDistanceTravelled
from passenger;

-- 11)Display the distance, price in three categories in table Price
-- a) Expensive if the cost is more than 1000
-- b) Average Cost if the cost is less than 1000 and greater than 500
-- c) Cheap otherwise

Select distance, price,
case
when price>1000 then "Expensive Cost"
when price>500 and price<=1000 then "Average Cost"
else "Cheap"
End
from price;








 



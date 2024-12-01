create database Air_Cargo

use Air_Cargo

-- 2.	Write a query to create route_details table using suitable data types for the fields, such as route_id, flight_num, origin_airport, destination_airport, aircraft_id, and distance_miles. Implement the check constraint for the flight number and unique constraint for the route_id fields. Also, make sure that the distance miles field is greater than 0 --

select route_id, flight_num, origin_airport, destination_airport, aircraft_id, distance_miles from routes


-- 3.	Write a query to display all the passengers (customers) who have travelled in routes 01 to 25. Take data  from the passengers_on_flights table --

select customer_id as C, route_id as r from passengers_on_flights
left join customer_id as C
on C.
where `route_id` between 1 to 25
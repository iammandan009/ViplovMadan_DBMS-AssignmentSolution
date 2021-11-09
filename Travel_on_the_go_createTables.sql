create database if not exists `travel_on_the_go` ;


create table if not exists `passenger`
(
`passenger_name` varchar(50),
`category` varchar(20),
`gender` varchar(5),
`boarding_city` varchar(50),
`destination_city` varchar(50),
`distance` int not null,
`bus_type` varchar(50)
);


create table if not exists `price`
(
`bus_type` varchar(50),
`distance` int not null,
`price` int
)
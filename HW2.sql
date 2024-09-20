Create table City (
		City_Name varchar(128),
  		Country_Name varchar(128),
  		isCapital char(3) not null,
  		Population INT not null,
  		Primary Key(City_Name, Country_Name)
)

create table Country (
  Country_Name varchar(128) primary key,
  Continent varchar(128) not null
  )

insert into Country
values('US', 'North America'), 
('Canada', 'North America'), 
('England', 'Europe'), 
('Germany', 'Europe'), 
('France', 'Europe'), 
('Mali', 'Africa')

  insert into City 
Values('New York City, NY', 'US', 'no', 8000000), 
('Washington, DC', 'US', 'yes', 600000), 
('Philadelphia, PA', 'US', 'no', 1500000), 
('Ottawa', 'Canada', 'yes', 800000), 
('Toronto', 'Canada', 'no', 2500000), 
('Berlin', 'Germany', 'yes', 3500000), 
('Hamburg', 'Germany', 'no', 2000000), 
('Bonn', 'Germany', 'no', 300000), 
('Paris', 'France', 'yes', 2000000), 
('Lyon', 'France', 'no', 700000), 
('Bamako', 'Mali', 'yes', 2000000), 
('Timbuktu', 'Mali', 'no', 50000), 
('Mopti', 'Mali', 'no', 100000)

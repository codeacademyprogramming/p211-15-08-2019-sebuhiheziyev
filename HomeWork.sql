--create database homeWork

--create table Car(
-- Id int primary key identity,
-- CarYear date not null,
-- MatorHecmi int not null,
-- Yuruyus int not null
--)

--create table SuretQutusu(
-- Id int primary key identity,
-- Name nvarchar(50) unique not null
--)

create table Marka(
 Id int primary key identity,
 Name nvarchar(50) unique not null
)

create table Model(
 Id int primary key identity,
 Name nvarchar(50) unique not null,
 SuretQuId int references Marka(Id)
)


insert into Car
values('12-20-1998',5,23000,3)
      
--alter table Car
--add Marka int references Marka(Id)

alter table Car
add Color nvarchar(50)

select 
  YEAR(Car.CarYear) as [Year],
  car.MatorHecmi,
  car.Yuruyus,
  MatorType.Name as 'Mator Type',
  SuretQutusu.Name as 'Suret Qutusu',
  Model.Name as 'Model',
  Car.Marka as 'Marka Id',
  Marka.Name,
  car.Color

from Car
join MatorType on Car.MatorTypeId = MatorType.Id
join SuretQutusu on Car.SuretQuId = SuretQutusu.Id
join Model on Car.ModelId = Model.Id
join Marka on car.Marka = Marka.Id

select * from Car
select * from MatorType
select * from SuretQutusu
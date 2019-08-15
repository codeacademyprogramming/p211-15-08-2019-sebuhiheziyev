--select * from Students
--order by Id

--insert into Students 
--values(1, 'Aqil', NULL, NULL, NULL, 'as', 'c', '___')

--create table Employees(
--	Id INT primary key identity,
--	Firstname nvarchar(30) NOT NULL,
--	Lastname nvarchar(30),
--	FatherName nvarchar(30),
--	Gender char(1) check(Gender in ('m', 'f', 'o')),
--	Email nvarchar(100) NOT NULL UNIQUE check(charindex('@', Email) != 0),
--	Birthdate date not null check(GETDATE() >= Birthdate)
--)

--insert into Employees 
--values('Samir', 'Dadash-zade', 'Qismeteli', 'm', 'samir.d@code.az', '1991-11-20', 4)

--alter table Students
--add City nvarchar(50)

--alter table Employees
--drop column City



--create table Cities(
--	Id int primary key identity,
--	Name nvarchar(50) not null
--)

--alter table Students
--add CityId int

--select * 
--from Employees
--join Cities on Employees.CityId = Cities.Id

--select * from Employees
--select * from Cities

--alter table Employees
--add CityId int references Cities(Id)

--create table Countries(
--	Id int primary key identity,
--	Name nvarchar(50) not null unique
--)

--alter table Cities
--add CountryId int references Countries(Id)

--create table Vacations(
--	Id int primary key identity,
--	EmployeeId int references Employees(Id),
--	StartDate date,
--	EndDate date,
--	constraint chk_start_end_date CHECK(EndDate > StartDate)
--)

select 
	Vacations.StartDate,
	Vacations.EndDate,
	CONCAT(
			emp.Firstname, ' ', 
			isnull(emp.Lastname, ''), 
			' ', 
			isnull(emp.FatherName, '')
	) 'Full name',
	emp.Gender,
	ct.Name 'City',
	ctr.Name 'Country'
from Vacations
join Employees emp on Vacations.EmployeeId = emp.Id
join Cities ct on emp.CityId = ct.Id
join Countries ctr on ct.CountryId = ctr.Id


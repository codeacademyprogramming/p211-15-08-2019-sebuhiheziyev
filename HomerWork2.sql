--create table Books
--(
-- Id int primary key identity,
-- KitabinAdi nvarchar(50) not null,
-- Muellifi nvarchar(50) not null,
-- Capili date not null check(GETDATE() >= Capili),
-- Say int not null
--)

--create table Oxucu
--(
-- Id int primary key identity,
-- Ad nvarchar(50) not null,
-- SoyAd nvarchar(50),
-- Nomre int unique not null,
-- Fakulte nvarchar(50) not null,
-- TelebeBileti int unique not null
--)



select * from Oxucu
select * from Books

select  
Oxucu.Ad, Oxucu.SoyAd, Oxucu.Nomre,Oxucu.Fakulte,Oxucu.TelebeBileti,
Books.KitabinAdi,Books.Muellifi,Books.Capili,Books.Say
from Oxucu
join Books on Oxucu.KitabId = Books.Id

alter table Oxucu
add KitabId int references Books(Id)

--insert into Books
--values ('Ellabas ve 40 quldur','Nizami Xasmemmedov','2011-02-23',3)

insert into Oxucu
values ('Ramiz','Ismayilov',994559875643,'Gemi Qayirma',112975)

use COURSES

CREATE TABLE TEACHERS(
[Id] int primary key identity(1,1),
[Name] nvarchar(50) not null,
[Surname] nvarchar(50),
[Email] nvarchar(100) unique ,
[Age] int check(Age>21),
[Salary] decimal check(Salary>350))

insert into TEACHERS([Name],[Surname],[Email],[Age],[Salary])
values('Azer','Babayev','azer@gmail.com',28,1500),
      ('Mamed','Cabbarov','mamed@mail.ru',65,2500),
	  ('Cemile','Abbasova','cemile@list.ru',32,800),
	  ('Cavid','Beshirov','cavid@mail.ru',29,2800),
	  ('Kamile','Memmedova','kama@gmail.com',40,3500)

select * from TEACHERS
--//TASK 1-in 1-ci serti//
select * from TEACHERS
where Age > (SELECT Avg(Age) from TEACHERS)

--//TASK 1-in 2-ci serti//
select * from TEACHERS
WHERE Salary Between 1000 and 3000

--//TASK 1-in 3-ci serti//
select Name , Surname from TEACHERS
where  Email LIKE '%mail.ru';


--//TASK 1-in 4-ci serti//
select * from TEACHERS
where  [Name] LIKE 'C%';





-- Departments
insert into Departments(Financing, Name) values
(10000, 'D1'),
(2000, 'D2'),
(3000, 'D3'),
(5000, 'D4'),
(26000, 'D5'),
(16000, 'D6'),
(2000, 'Software Development'),
(2000, 'Name of Department');

select * from Departments order by Financing desc;

select Financing from Departments
where Financing < 11000 or Financing > 25000;

select Name from Departments
order by Name asc;

-- Groups
insert into Groups(Name, Rating, Year) values
('G1', 1, 1),
('G2', 2, 2),
('G3', 3, 3),
('G4', 4, 4),
('G5', 3, 3),
('G6', 4, 5);

select * from Groups
where Name = 'G1';

select Name from Groups
where Rating between 2 and 4;

-- Teachers
insert into Teachers(EmploymentDate, Name, Surname, Salary, Premium, Position, IsAssistant, IsProfessor) values
('2005-09-01', 'John', 'Smith',3000.00,  150.00, 'Helper', 1, 0),
('2010-03-15', 'Emily', 'Johnson',3200.00,  200.00, 'Helper', 1, 0),
('1998-06-23', 'Michael', 'Williams', 4500.00, 0.00, 'Helper',1, 0),
('2020-01-10', 'Olivia', 'Brown', 4000.00,500.00,  'Leader',0, 1),
('2017-11-05', 'David', 'Davis', 3700.00, 100.00, 'Leader',0, 1);

select Surname from Teachers;
select Salary + Premium from Teachers;

select Surname from Teachers
where Salary > 1050;

select Surname from Teachers
where IsProfessor = 0;

select Premium from Teachers
where Premium between 160 and 550;

select Surname, Premium from Teachers
where IsAssistant = 1;

select Surname, Position from Teachers
where EmploymentDate < '2000-01-01';

select Surname from Teachers
where IsAssistant = 1 and Salary + Premium < 1200;

select Surname from Teachers
where Salary < 550 and Premium < 200;

-- Faculties
insert into Faculties(Name) values
('Computer Science'),
('Art'),
('Graphics Designer');

select 'The id ' + cast(Id as varchar) + ' points to faculty: ' + Name as FacultyInfo
from Faculties;

select * from Faculties
where Name <> 'Computer Science';
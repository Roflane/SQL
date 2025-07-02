-- Wards
insert into Wards (Building, Floor, Name) values
(13, 2, 'A'),
(21, 2,'B'),
(33, 3, 'C'),
(23, 3, 'Z');

select * from Wards;

select distinct Floor from Wards;

select Name from Wards
where Building = 4 and Building = 5 and Floor = 1;



-- Doctors
insert into Doctors (Name, Phone, Premium, Salary, Surname) values
(N'John', '1234567890', 1000.00, 5000.00, N'Smith'),

(N'Emily', '2345678901', 500.00, 4200.50, N'Clark'),

(N'Michael', '3456789012', 300.00, 3900.00, N'Johnson'),

(N'Sophia', '4567890123', 1200.00, 6100.75, N'Williams'),

(N'David', '5678901234', 800.00, 4700.00, N'Brown');

select Surname, Phone from Doctors;

select Surname from Doctors
where Salary + Premium > 1500;

select Surname from Doctors
where Salary / 2 > Premium * 3;

-- Diseases
insert into Diseases (Name, Severity) values
('Name1', 2),
('Name2', 2),
('Name3', 3),
('Name4', 4),
('Name5', 5);

select * from Diseases;

select Name from Diseases
where Severity <> 1 and Severity <> 2;

-- Departments
insert into Departments (Building, Financing, Floor, Name) values
(1, 50000.00, 2, N'Computer Science'),
(2, 75000.00, 3, N'Mathematics'),
(3, 120000.00, 4, N'Physics'),
(4, 60000.00, 5, N'Chemistry'),
(5, 90000.00, 6, N'Biology');

select Name from Departments
where Building = 5 and Financing < 30000;

select Name from Departments
where Building = 3 or Building = 6 and Financing < 11000 or Financing > 25000;

select Name from Departments
where Building = 1 or Building = 3 or Building = 8 or Building = 10;

select Name from Departments
where Building <> 1 and Building <> 3;

-- Examinations
insert into Examinations (Name, StartTime, EndTime, DayOfWeek) values
(N'Math Final', '09:00', '11:00', 1),
(N'Physics', '10:30', '12:00', 3),
(N'Chemistry Lab', '13:00', '15:00', 5),
(N'English Literature', '08:30', '10:00', 2),
(N'Computer Science Exam', '14:00', '16:30', 4);

select distinct Name from Examinations
where DayOfWeek between 1 and 3 and StartTime = '12:00' and EndTime = '15:00';


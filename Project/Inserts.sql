-- Institution
insert into Institution (Name, Type) values
('MIT', 'University'),
('Stanford', 'University'),
('Harvard', 'University'),
('Berkeley', 'University'),
('Oxford', 'University'),
('Cambridge', 'University'),
('Yale', 'University'),
('Princeton', 'University'),
('Columbia', 'University'),
('NYU', 'University');

-- Departments
insert into Departments (Financing, Name) values
(1000000, 'Computer Science'),
(800000, 'Physics'),
(600000, 'Mathematics'),
(500000, 'Biology'),
(750000, 'Chemistry'),
(650000, 'Economics'),
(300000, 'Psychology'),
(200000, 'Philosophy'),
(400000, 'Engineering'),
(900000, 'Medicine');

-- Groups
insert into Groups (Name, RoomNumber) values
('CS-101', 101),
('CS-102', 102),
('PH-201', 201),
('MA-301', 301),
('BI-401', 401),
('CH-501', 501),
('EC-601', 601),
('PS-701', 701),
('PH-801', 801),
('EN-901', 901);

-- Courses
insert into Courses (Name, RoomNumber) values
('Algebra', 101),
('Calculus', 102),
('Physics', 201),
('Biology', 301),
('Chemistry', 401),
('Economics', 501),
('Statistics', 601),
('Philosophy', 701),
('Programming', 801),
('AI Basics', 901);

-- Faculties
insert into Faculties (Name) values
('Engineering'),
('Mathematics'),
('Sciences'),
('Humanities'),
('Law'),
('Business'),
('Medicine'),
('Education'),
('Architecture'),
('Philosophy');

-- Students
insert into Students (AdmissionDate, Name, Surname) values
('2022-09-01', 'John', 'Smith'),
('2021-09-01', 'Alice', 'Johnson'),
('2020-09-01', 'Bob', 'Williams'),
('2022-01-15', 'Diana', 'Brown'),
('2023-09-01', 'Eve', 'Jones'),
('2024-02-10', 'Frank', 'Garcia'),
('2023-03-01', 'Grace', 'Miller'),
('2024-09-01', 'Henry', 'Davis'),
('2022-04-20', 'Ivy', 'Rodriguez'),
('2021-05-11', 'Jack', 'Martinez');

-- Teachers
insert into Teachers (EmploymentDate, Name, Surname, Salary, Premium, Position, IsAssistant, IsProfessor) values
('2020-01-01', 'Alan', 'Turing', 70000, 5000, 'Lecturer', 0, 1),
('2019-03-15', 'Ada', 'Lovelace', 65000, 3000, 'Lecturer', 0, 1),
('2021-06-01', 'Marie', 'Curie', 72000, 4000, 'Professor', 0, 1),
('2022-01-01', 'Isaac', 'Newton', 60000, 2000, 'Assistant', 1, 0),
('2020-05-10', 'Albert', 'Einstein', 75000, 4500, 'Professor', 0, 1),
('2018-07-21', 'Niels', 'Bohr', 68000, 2000, 'Lecturer', 0, 1),
('2021-09-01', 'Charles', 'Darwin', 59000, 1000, 'Assistant', 1, 0),
('2019-11-11', 'Rosalind', 'Franklin', 62000, 3000, 'Lecturer', 0, 1),
('2023-04-12', 'Nikola', 'Tesla', 71000, 4000, 'Professor', 0, 1),
('2022-08-18', 'Thomas', 'Edison', 66000, 2500, 'Lecturer', 0, 1);

-- Staff
insert into Staff (Name, Surname, Salary, Premium) values
('Clara', 'Barton', 30000, 1000),
('Florence', 'Nightingale', 32000, 1200),
('Gregory', 'House', 35000, 1500),
('Meredith', 'Grey', 33000, 1100),
('John', 'Doe', 29000, 900),
('Jane', 'Doe', 31000, 1000),
('Bob', 'Builder', 28000, 800),
('Alice', 'Wonderland', 30000, 950),
('Hannah', 'Montana', 31000, 1000),
('Tony', 'Stark', 40000, 2000);

-- Deans
insert into Deans (Name, Surname, Salary, Premium) values
('Dean', 'Martin', 60000, 4000),
('George', 'Washington', 62000, 3500),
('James', 'Madison', 58000, 3000),
('Andrew', 'Jackson', 59000, 3100),
('Thomas', 'Jefferson', 61000, 3200),
('Abraham', 'Lincoln', 64000, 3300),
('Franklin', 'Roosevelt', 63000, 3400),
('Theodore', 'Roosevelt', 65000, 3500),
('Ulysses', 'Grant', 67000, 3600),
('Woodrow', 'Wilson', 66000, 3700);

-- Presidents
insert into Presidents (Name, Surname, Salary, Premium) values
('Barack', 'Obama', 100000, 10000),
('Joe', 'Biden', 95000, 9000),
('Donald', 'Trump', 98000, 9500),
('George', 'Bush', 97000, 9400),
('Bill', 'Clinton', 96000, 9300),
('Ronald', 'Reagan', 99000, 9600),
('Jimmy', 'Carter', 94000, 9200),
('Richard', 'Nixon', 93000, 9100),
('John', 'Kennedy', 101000, 10500),
('Dwight', 'Eisenhower', 102000, 10600);

-- Penalties (предположим, есть ID студентов от 1 до 10)
insert into Penalties (StudentId, Amount) values
(1, 100),
(2, 200),
(3, 150),
(4, 300),
(5, 250),
(6, 180),
(7, 220),
(8, 160),
(9, 190),
(10, 210);

-- Leaderboard
insert into Leaderboard (StudentId, Place) values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
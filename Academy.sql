DROP TABLE IF EXISTS Groups;
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Faculties;
DROP TABLE IF EXISTS Teachers;

create table Groups (
    [Id] int primary key identity(1, 1) not null,
    [Name] nvarchar(10) not null unique,
    [Rating] int not null check (Rating between 1 and 5)
);

create table Departments (
    [Id] int primary key identity(1, 1) not null,
    [Financing] money not null default 0 check (Financing > 0),
    [Name] nvarchar(100) not null unique
);

create table Faculties (
    [Id] int primary key identity(1, 1) not null,
    [Name] nvarchar(100) not null unique
);

create table Teachers (
    [Id] int primary key identity(1, 1) not null,
    [EmploymentDate] date not null check (EmploymentDate >= '1990-01-01'),
    [Name] nvarchar(max) not null,
    [Premium] money not null default 0 check (Premium >= 0),
    [Salary] money not null check (Salary > 0),
    [Surname] nvarchar(max) not null
);

insert into Groups(Name, Rating) values('XD', 1);
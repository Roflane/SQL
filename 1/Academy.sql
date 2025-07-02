DROP TABLE IF EXISTS Groups;
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Faculties;
DROP TABLE IF EXISTS Teachers;

create table Groups (
    [Id] int primary key identity(1, 1) not null,
    [Name] nvarchar(10) not null unique,
    [Rating] int not null check (Rating between 0 and 5),
    [Year] int not null check (Year between 1 and 5)
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
    [Surname] nvarchar(max) not null,
    [Salary] money not null check (Salary > 0),
    [Premium] money not null default 0 check (Premium >= 0),
    [Position] nvarchar(10) not null,
    [IsAssistant] bit,
    [IsProfessor] bit
);
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Diseases;
DROP TABLE IF EXISTS Doctors;
DROP TABLE IF EXISTS Examinations;
DROP TABLE IF EXISTS Wards;

create table Departments (
    [Id] int primary key identity(1, 1) not null,
    [Building] int not null check (Building between 1 and 5),
    [Financing] money not null default 0 check (Financing > 0),
    [Floor] int not null check (Floor > 1),
    [Name] nvarchar(100) not null check (Name <> '')
);

create table Diseases (
    [Id] int primary key identity(1, 1) not null,
    [Name] nvarchar(30) not null,
    [Severity] int not null default 1 check (Severity > 1)
);

create table Doctors (
    [Id] int primary key identity(1, 1) not null,
    [Name] nvarchar(max) not null check (Name <> ''),
    [Phone] char(10) not null,
    [Premium] money not null default 0 check (Premium > 0),
    [Salary] money not null check (Salary >= 0),
    [Surname] nvarchar(max)
);


create table Examinations (
    [Id] int primary key identity(1, 1) not null,
    [Name] nvarchar(100) not null unique check (Name <> ''),
    [StartTime] time not null check (StartTime between '8:00' and '18:00'),
    [DayOfWeek] int not null check (DayOfWeek between 1 and 7),
    [EndTime] time not null,
    check (EndTime > StartTime)
);

create table Wards (
    [Id] int primary key identity(1, 1) not null,
    [Building] int not null,
    [Floor] int not null check (Floor > 1),
    [Name] nvarchar(20) not null check (Name <> '') unique
);
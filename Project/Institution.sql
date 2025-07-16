DROP TABLE IF EXISTS Institution;
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Groups;
DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS Faculties;
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Teachers;
DROP TABLE IF EXISTS Staff;
DROP TABLE IF EXISTS Deans;
DROP TABLE IF EXISTS Presidents;
DROP TABLE IF EXISTS Penalties;


create table Institution (
    [Id] int primary key identity(1, 1) not null,
    [Name] nvarchar(20) not null unique,
    [Type] nvarchar(20) not null
);

create table Departments (
    [Id] int primary key identity(1, 1) not null,
    [Financing] money not null default 0 check (Financing > 0),
    [Name] nvarchar(100) not null unique
);

create table Groups (
    [Id] int primary key identity(1, 1) not null,
    [Name] nvarchar(20) not null unique,
    [RoomNumber] int not null check ([RoomNumber] > 0)
);

create table Courses (
    [Id] int primary key identity(1, 1) not null,
    [Name] nvarchar(20) not null unique,
    [RoomNumber] int not null check ([RoomNumber] > 0)
);

create table Faculties (
    [Id] int primary key identity(1, 1) not null,
    [Name] nvarchar(100) not null unique
);

create table Students (
    [Id] int primary key identity(1, 1) not null,
    [AdmissionDate] date not null check (AdmissionDate >= '2000-01-01'),
    [Name] nvarchar(max) not null,
    [Surname] nvarchar(max) not null
);

create table Teachers (
    [Id] int primary key identity(1, 1) not null,
    [EmploymentDate] date not null check (EmploymentDate >= '2000-01-01'),
    [Name] nvarchar(max) not null,
    [Surname] nvarchar(max) not null,
    [Salary] money not null check (Salary > 0),
    [Premium] money not null default 0 check (Premium >= 0),
    [Position] nvarchar(10) not null,
    [IsAssistant] bit,
    [IsProfessor] bit
);

create table Staff (
    [Id] int primary key identity(1, 1) not null,
    [Name] nvarchar(max) not null,
    [Surname] nvarchar(max) not null,
    [Salary] money not null check (Salary > 0),
    [Premium] money not null default 0 check (Premium >= 0)
);

create table Deans (
    [Id] int primary key identity(1, 1) not null,
    [Name] nvarchar(max) not null,
    [Surname] nvarchar(max) not null,
    [Salary] money not null check (Salary > 0),
    [Premium] money not null default 0 check (Premium >= 0)
);

create table Presidents (
    [Id] int primary key identity(1, 1) not null,
    [Name] nvarchar(max) not null,
    [Surname] nvarchar(max) not null,
    [Salary] money not null check (Salary > 0),
    [Premium] money not null default 0 check (Premium >= 0)
);

create table Penalties (
    [Id] int primary key identity(1, 1) not null,
    [StudentId] int not null foreign key references Students(Id),
    [Amount] int not null check (Amount > 0)
);

create table Leaderboard (
    [Id] int primary key identity(1, 1) not null,
    [StudentId] int not null foreign key references Students(Id),
    [Place] int not null check (Place > 0)
);
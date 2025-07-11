DROP TABLE IF EXISTS TechShop;
DROP TABLE IF EXISTS ProductInfo;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;

create table TechShop (
    [Id] int primary key identity(1, 1) not null,
    [Name] nvarchar(10) not null,
    [Location] nvarchar(50) not null
);

create table ProductInfo (
    [Id] bigint primary key identity(1, 1) not null,
    [Brand] nvarchar(20) not null,
    [Specs] nvarchar(255) not null,
);

create table Products (
    [TechShop->Id] int, foreign key ([TechShop->Id]) references TechShop(Id),
    [ProductInfo->Id] bigint primary key, foreign key ([ProductInfo->Id]) references ProductInfo(Id),
    [Class] nvarchar(50) not null,
    [Quantity] int not null
);

create table Storage (
    [Id] bigint primary key identity(1, 1) not null,
    [ProductInfo->Id] bigint, foreign key ([ProductInfo->Id]) references ProductInfo(Id),
    [Quantity] int not null
);

create table Orders (
    [OrderId] int primary key identity(1, 1) not null,
    [ProductInfo->Id] bigint, foreign key ([ProductInfo->Id]) references ProductInfo(Id),
    [Quantity] int not null,
    [IsCompleted] bit not null
);

create table Customers (
    [CustomerId] int primary key identity(1, 1) not null,
    [Name] nvarchar(10) not null,
    [Surname] nvarchar(15) not null,
    [PassportUID] int not null
);
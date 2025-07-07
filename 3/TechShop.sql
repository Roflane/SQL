DROP TABLE IF EXISTS TechShop;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS ProductInfo;

create table TechShop (
    [TechShopId] int primary key identity(1, 1) not null,
    [Location] nchar(40) not null
);

create table ProductInfo (
    [Uid] bigint primary key identity(1, 12) not null,
    [Specs] nchar(255) not null,
);

create table Products (
    [TechShopId] int, foreign key ([TechShopId]) references TechShop(TechShopId),
    [Uid] bigint, foreign key ([Uid]) references ProductInfo(Uid),
    [Class] nchar(10) not null,
    [Quantity] int not null,
);
-- TechShop
select Name, Location from TechShop;

-- ProductInfo
select Id, Brand, Specs from ProductInfo;
select Brand, Specs from ProductInfo;

-- Products
select [ProductInfo->Id], Class from Products;
select Class, Quantity from Produdadascts;

-- Storage
select [ProductInfo->Id], Quantity from Storage;
select
    s.[ProductInfo->Id],
    s.Quantity,
    p.Brand,
    p.Specs
from Storage as S
join ProductInfo as p on s.[ProductInfo->Id] = p.Id;

-- Orders
select OrderId, IsCompleted from Orders;
select
    o.OrderId,
    o.IsCompleted,
    p.Brand,
    p.Specs
from Orders as o
join ProductInfo as p on o.[ProductInfo->Id] = p.Id;

-- Customers
select CustomerId, Name, Surname, PassportUID from Customers;
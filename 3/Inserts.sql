insert into TechShop(Name, Location) values
('A1', 'Sydney'),
('A2', 'Chongqing'),
('A3', 'France');

insert into ProductInfo(Brand, Specs) values
('Dell', 'CPU: FX-6300/RAM: 8GB 3200Mhz/GPU: MX 450'),
('Xiaomi','CPU: QSnapdragon Gen 7/RAM: 12GB/GPU: XD 731'),
('Ro1', 'CPU: Intel i5-1135G7/RAM: 16GB 2666MHz/GPU: Iris Xe'),
('Asus', 'CPU: Ryzen 5 5600U/RAM: 8GB 3200MHz/GPU: Vega 7'),
('Appleded', 'CPU: Apple M1/RAM: 8GB Unified/GPU: 7-core'),
('MSI', 'CPU: Intel i7-12700K/RAM: 32GB 3600MHz/GPU: RTX 3070'),
('Realme', 'CPU: Snapdragon 8 Gen 2/RAM: 12GB/GPU: Adreno 740'),
('Huawei','CPU: MediaTek Dimensity 9200/RAM: 8GB/GPU: Mali-G710'),
('Lenovo','CPU: Ryzen 7 7840HS/RAM: 16GB 5600MHz/GPU: 780M'),
('Intel NUC','CPU: Intel N200/RAM: 16GB/GPU: UHD Graphics');

insert into Products([TechShop->Id], [ProductInfo->Id], Class, Quantity) values
(1, 1, 'Laptop', 1),
(2, 2, 'Phone', 1),
(1, 3, 'Laptop', 3),
(3, 4, 'Laptop', 2),
(1, 5, 'Laptop', 5),
(2, 6, 'Desktop', 1),
(2, 7, 'Phone', 6),
(3, 8, 'Phone', 2),
(1, 9, 'Portable Console', 4),
(3, 10, 'Mini PC', 2);

insert into Storage([ProductInfo->Id], Quantity) values
(2, 10),
(3, 15),
(1, 8),
(5, 12),
(4, 5);

insert into Orders([ProductInfo->Id], Quantity, IsCompleted) values
(1,2, 0),
(2,4, 1),
(3,1, 0),
(4, 6, 1),
(5, 8, 1);

insert into Customers(Name, Surname, PassportUID) values
('John', 'Smith', 123456789),
('Alice', 'Johnson', 987654321),
('Michael', 'Brown', 555666777),
('Sofia', 'Williams', 111222333),
('David', 'Jones', 444555666);
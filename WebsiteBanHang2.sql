CREATE DATABASE WebSiteBanHang2

USE WebSiteBanHang2

go

CREATE TABLE Brand_2119110223(
	id INT IDENTITY PRIMARY KEY,
	Name NVARCHAR(100),
	Avartar NVARCHAR(100) ,
	Slug VARCHAR(100) ,
	ShowOnHomePage BIT ,
	DisplayOrder INT ,
	CreatedOnUtc DATETIME ,
	UpdateOnUtc DATETIME ,
	Deleted BIT 
);
INSERT INTO Brand_2119110223(id, Name,Avartar,Slug,ShowOnHomePage,DisplayOrder,CreatedOnUtc,UpdateOnUtc,Deleted) VALUES
(1, 'MICROSOFT', 'microsoft.jpg', 'microsoft', 1, 1),
(2, 'APPLE', 'apple.jpg', 'apple',1, 2),
(3, 'DELL', 'dell.jpg', 'dell',1, 3)

CREATE TABLE Category_2119110223(
	id INT ,
	Name NVARCHAR(100),
	Avartar NCHAR(100),
	Slug VARCHAR(100),
	ShowOnHomePage BIT,
	DisplayOrder INT,
	Deleted BIT NOT NULL,
	CreatedOnUtc DATETIME,
	UpdateOnUtc DATETIME
);
INSERT INTO Category_2119110223(id,Name,Avartar,Slug,ShowOnHomePage,DisplayOrder,Deleted,CreatedOnUtc,UpdateOnUtc) VALUES
(1,N'Điện Thoại','iphone-12.jpg','dien-thoai',1,1,0,Null,Null),
(2,N'Máy Tính','mac.jpg','may-tinhi',1,2,0,Null,Null),
(3,N'Máy Tính Bảng','ipadm1.jpg','may-tinh-bang',1,3,0,Null,Null),
(4,N'Phụ Kiện','phukien.jpg','phu-kien',1,4,0,Null,Null),
(5,N'Đồng Hồ Thông minh','swach.jpg','dong-ho-thong-minh',1,5,0,Null,Null)

CREATE TABLE Order_2119110223(
	id INT IDENTITY,
	Name NVARCHAR(100),
	ProductId int,
	Price float,
	Status int,
	CreatedOnUtc DATETIME
);

CREATE TABLE Product_2119110223(
	id INT,
	Name NVARCHAR(100),
	Avartar VARCHAR(150),
	Category INT,
	BrandId INT,
	ShortDes NVARCHAR(1000),
	FullDes NVARCHAR(MAX),
	Price FLOAT,
	PriceDiscount FLOAT,
	TypeId INT,
	Slug VARCHAR(100),
	Deleted BIT,
	ShowOnHomePage BIT,
	DisplayOrder INT,
	CreatedOnUtc DATETIME,
	UpdateOnUtc DATETIME
)
INSERT INTO Product_2119110223(id,Name,Avartar,Category,ShortDes,FullDes,Price,PriceDiscount,TypeId,Slug,BrandId,Deleted,ShowOnHomePage,DisplayOrder,CreatedOnUtc,UpdateOnUtc) VALUES
(1,'Iphone 12','iphone-12.jpg',1,'iPhone 12 Pro 128GB chính hãng','iPhone 12 Pro 128GB chính hãng',18000000,16869000,1,'iphone12',1,0,1,1,Null,Null),
(2,'Apple iPad Pro M1','ipadm1.jpg',1,'Apple iPad Pro M1 chính hãng','Apple iPad Pro M1 2021 11 chính hãng',19000000,18869000,1,'ipadm1',1,0,1,1,Null,Null),
(3,'MacBook Pro 2021','mac.jpg',1,'MacBook Pro 2021 chính hãng','MacBook Pro 2021 MKGP3 14 inch Space Gray M1 Pro 8-CPU 14-GPU/16GB/512GB',45000000,36869000,1,'mac',1,0,1,1,Null,Null),
(4,'Iphone 13','iphone-13.jpg',1,'iPhone 13 Pro 128GB chính hãng','iPhone 13 Pro 128GB chính hãng',28000000,26869000,1,'iphone13',1,0,1,1,Null,Null),
(5,'Iphone 11','iphone-11.jpg',1,'iPhone 11 Pro 128GB chính hãng','iPhone 11 Pro 128GB chính hãng',15000000,13869000,1,'iphone12',1,0,1,1,Null,Null),
(5,'Apple iPad Pro M1','ipadm1.jpg',1,'Apple iPad Pro M1 chính hãng','Apple iPad Pro M1 2021 11 chính hãng',19000000,18869000,1,'ipadm1',1,0,1,1,Null,Null),
(6,'Apple iPad Pro 11','ipad11.jpg',1,'Apple iPad Pro 11 chính hãng','Apple iPad Pro 11 2021 11 chính hãng',19000000,18869000,1,'ipad11',1,0,1,1,Null,Null),
(7,'Apple iPad Pro 12.9','ipad12.9.jpg',1,'Apple iPad Pro 12.9 chính hãng','Apple iPad Pro 12.9 2021 11 chính hãng',19000000,18869000,1,'ipad12.9',1,0,1,1,Null,Null),
(8,'MacBook Pro 2021','mac.jpg',1,'MacBook Pro 2021 chính hãng','MacBook Pro 2021 MKGP3 14 inch Space Gray M1 Pro 8-CPU 14-GPU/16GB/512GB',45000000,36869000,1,'mac',1,0,1,1,Null,Null),
(9,'Surface Pro 8','Surface.jpg',1,'Surface Pro 8 chính hãng','Surface Pro 8 Platinum i5 1135G7 8GB RAM 128GB SSD',28000000,26869000,1,'Surface',1,0,1,1,Null,Null),
(10,'Surface Laptop Studio','Surface-Laptop-Studio.jpg',1,'Surface Laptop Studio chính hãng','Surface Laptop Studio i7 11370H 16GB RAM 512GB SSD NVIDIA GeForce RTX 3050Ti',58000000,56869000,1,'Surface-Laptop',1,0,1,1,Null,Null),
(11,'Laptop Dell Inspiron','Laptop-Dell-Inspiron.jpg',1,'Laptop Dell Inspiron chính hãng','Laptop Dell Inspiron 14 5410 70270653',28000000,26869000,1,'dell-laptop',1,0,1,1,Null,Null),
(12,'Dell XPS','Dell-XPS.jpg',1,'Dell XPS chính hãng','Dell XPS 13 9305 Core i5-1135G7 RAM 8GB SSD',18000000,16869000,1,'dell-xps',1,0,1,1,Null,Null)

CREATE TABLE Users_2119110223(
	id INT IDENTITY,
	FirstName varchar(50), 
	LastName varchar(50),
	Email varchar(50),
	Password varchar(50),
	IsAdmin bit
)


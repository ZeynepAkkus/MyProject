CREATE DATABASE Manufacturer; 
USE Manufacturer

CREATE TABLE Product 
(
Prod_ID INT,
Prod_name VARCHAR(50),
quantity INT
PRIMARY KEY (Prod_ID)
);

CREATE TABLE Component
(
Comp_ID INT,
Comp_name VARCHAR(50),
descriptions VARCHAR(50),
quantity INT 
PRIMARY KEY (Comp_ID)
);

CREATE TABLE Supplier
(
Supp_ID INT,
Supp_name VARCHAR(MAX),
isactive BIT,
PRIMARY KEY (Supp_ID)
);

CREATE TABLE Prod_Comp
(
Prod_ID INT,
Comp_ID INT,
PRIMARY KEY (Prod_ID, Comp_ID),
FOREIGN KEY (Prod_ID) REFERENCES Product (Prod_ID),
FOREIGN KEY (Comp_ID) REFERENCES Component (Comp_ID)
);

CREATE TABLE Orders
(
Comp_ID INT,
Supp_ID INT,
order_date DATE,
quantity INT,
PRIMARY KEY (Comp_ID, Supp_ID),
FOREIGN KEY (Supp_ID) REFERENCES Supplier (Supp_ID),
FOREIGN KEY (Comp_ID) REFERENCES Component (Comp_ID)
);
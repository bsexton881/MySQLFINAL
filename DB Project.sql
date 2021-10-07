CREATE DATABASE btd;

USE btd;


create table customers(
	OrderID INT NOT NULL AUTO_INCREMENT,
	FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(25) NOT NULL,
    Address VARCHAR(50),
    City VARCHAR(20),
    State VARCHAR(20),
    Zip INT,
    Gender VARCHAR(1),
    Phone VARCHAR(13),
    PRIMARY KEY ( OrderID ),
    FOREIGN KEY (OrderID) REFERENCES orders(OrderID)
);

create table employees(
	EmployeeID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    Job VARCHAR(40),
    HireDate DATE,
    HourlyWage DECIMAL (13,2),
    PRIMARY KEY ( EmployeeID )
);

create table suppliers(
	ID INT NOT NULL AUTO_INCREMENT,
    Company VARCHAR(40) NOT NULL,
    ContactName VARCHAR(50) NOT NULL,
    Email VARCHAR(40) NOT NULL,
    Phone VARCHAR(13),
    Address VARCHAR(50),
    City VARCHAR(20),
    State VARCHAR(2),
    Zip INT,
    Website VARCHAR(50),
    PRIMARY KEY ( ID )
);

create table products(
	ProductID INT NOT NULL AUTO_INCREMENT,
    ProductName VARCHAR(40) NOT NULL,
    InStock VARCHAR(1),
    AmountSold INT,
    StockQty INT,
    Price DECIMAL (13,2),
    Supplier VARCHAR(40) NOT NULL,
    PRIMARY KEY ( ProductID )
);

INSERT INTO orders (OrderID, OrderDate, OrderFulfilled, OrderPrice, ItemName)
VALUES
(1, '11-12-2020', 'Y', '150.00', 'Corsair K70 Keyboard'),
(2, '11-17-2020', 'N', '500.00', 'Xbox One X'),
(3, '10-28-2020', 'Y', '500.00',  'PS5'),
(4, '11-16-2020', 'N', '50.00', '1TB HDD'),
(5, '10-23-2020', 'Y', '500.00', 'Xbox One X'),
(6, '11-11-2020', 'Y', '150.00', 'Corsair K70 Keyboard'),
(7, '11-15-2020', 'N', '500.00', 'PS5'),
(8, '11-03-2020', 'Y', '500.00', 'PS5'),
(9, '10-06-2020', 'Y', '120.00', 'Hyper X Headset'),
(10, '10-13-2020', 'Y', '120.00', 'Hyper X Headset'),
(11, '11-18-2020', 'N', '120.00', 'Hyper X Headset'),
(12, '11-10-2020', 'Y', '40.00', '128GB USB'),
(13, '10-13-2020', 'Y', '40.00', '128GB USB'),
(14, '11-18-2020', 'N', '20.00', 'Steelseries QCK Mouse Pad');

INSERT INTO customers (OrderID, FirstName, LastName, Address, City, State, Zip, Gender, Phone)
VALUES
(1 , 'Josh', 'Simmons', '3223 Main St' , 'Nashville' , 'TN' , '43233' , 'M' , '3283748484'),
(2 , 'Nicole' , 'Simmons', '5853 South St' , 'Raleigh' , 'NC' , '5732', 'F' , '2373840393'),
(3 , 'Bria' , 'Garvin', '128 Patrick Way' , 'Bowling Green' , 'KY' , '42102', 'F' , '2703948384'),
(4 , 'Ben' , 'Sexton', '1400 Wind Ridge' , 'Bowling Green' , 'KY' , '42104', 'M' , '2803948093'),
(5 , 'Nick' , 'Brewer', '435 Creek Ln' , 'Chicago' , 'IL' , '65070', 'M' , '4747233049'),
(6 , 'Jacob' , 'Brook', '541 Hobson Dr' , 'Los Angeles' , 'CA' , '59069', 'M' , '4758391230'),
(7 , 'Ben' , 'Sexton', '541 Hobson Dr' , 'Bowling Green' , 'KY' , '42104', 'M' , '2803948093'),
(8 , 'Bria' , 'Garvin', '128 Patrick Way' , 'Bowling Green' , 'KY' , '42102', 'F' , '2703948384'),
(9 , 'Gavin' , 'Buchanon', '475 Westen Dr' , 'Indianapolis' , 'IN' , '48956', 'M' , '4756938502'),
(10 , 'Grace' , 'Tweed', '945 Harold Ln' , 'Charlotte' , 'NC' , '54942', 'F' , '3956782945'),
(11 , 'Jackson' , 'Good', '967 Topper Way' , 'London' , 'KY' , '85763', 'M' , '9684028734'),
(12 , 'Josh' , 'Simmons', '3223 Main St' , 'Nashville' , 'TN' , '43233', 'M' , '3283748484'),
(13 , 'Jacob' , 'Brook', '541 Hobson Dr' , 'Los Angeles' , 'CA' , '59069', 'M' , '4758391230'),
(14 , 'Riley' , 'Goodman', '475 Dood Dr' , 'Louisville' , 'KY' , '34523', 'F' , '3857509359');

INSERT INTO employees (EmployeeID, FirstName, LastName, Job, HireDate, HourlyWage)
VALUES
(1, 'Matt', 'Gentry', 'Marketing Specialist', '08-13-2020', '25.00'),
(2, 'Maddy', 'Determan', 'Logistics Operator', '10-22-2020', '42.50'),
(3, 'Isaiah', 'Goodman', 'Floor Manager', '10-21-2020', '15.00'),
(4, 'Alexandria', 'Wilson', 'Cashier', '09-30-2020', '11.00'),
(5, 'Ethan', 'Humphries', 'Stocker', '11-04-2020', '11.50'),
(6, 'Ben', 'Potter', 'Inventory Specialist', '09-14-2020', '14.00');

INSERT INTO products (ProductID, ProductName, InStock, AmountSold, StockQty, Price, Supplier)
VALUES
(1, 'Corsair K70 Keyboard', 'Y', '2', '5', '150.00', 'Corsair'),
(2, 'Logitech G502', 'Y', '1', '7', '80.00', 'Logitech'),
(3, 'Xbox One X', 'N', '2', '0', '500.00', 'Microsoft'),
(4, 'PS5', 'N', '3', '0', '500.00', 'Sony'),
(5, 'Hyper X Headset', 'Y', '3', '7', '120.00', 'Hyper X'),
(6, '1TB HDD', 'Y', '1', '9', '50.00', 'Samsung'),
(7, '1TB M.2 SSD', 'Y', '0', '6', '100.00', 'Samsung'),
(8, '128GB USB', 'Y', '2', '38', '40.00', 'Samsung'),
(9, 'Steelseries QCK Mousepad', 'Y', '1', '9', '20.00', 'Corsair');

INSERT INTO suppliers (ID, Company, ContactName, Email, Phone, Address, City, State, Zip, Website)
VALUES
(1, 'Corsair', 'Li Su', 'li.su@corsair.com', '785860495', '323 South St', 'Atlanta', 'GA', '54964', 'corsair.com'),
(2, 'Logitech', 'Brian Dawn', 'briandawn@logitech.com', '635966049', '790 Drake Ln', 'Ontario', '', null, 'logitech.com'),
(3, 'Microsoft', 'Bill Gates', 'billgates@microsoft.com', '238576123', '586 Blaine Ln', 'Anaheim', 'CA', '35962', 'microsoft.com'),
(4, 'Sony', 'Hunter Bradshaw', 'hunterbshaw@sony.com', '', '43 Sony Dr', 'Tokyo', '', null, 'sony.com'),
(5, 'Samsung', 'Connor Twy', 'connor@samsung.com', '', '5943 Samsung Blvd', 'Tokyo', '', null, 'samsung.com'),
(6, 'Hyper X', 'Lisa San', 'lisasan@hyperxgaming.com', '245039561', '472 Hollwood Blvd', 'Anaheim', 'CA', '21954', 'hyperx.com');

CREATE VIEW best_sellers AS
SELECT productname, amountsold, supplier
FROM products
WHERE amountsold > 1
ORDER BY amountsold	DESC;

CREATE VIEW employees_hired AS
SELECT employeeid, firstname, lastname, hiredate
FROM employees
ORDER BY hiredate;

CREATE VIEW low_stock AS
SELECT productname, stockqty, supplier
FROM products
WHERE stockqty >0 & stockqty < 7
ORDER BY stockqty;

CREATE VIEW out_of_stock AS
SELECT instock, productname, supplier
FROM products
WHERE instock = true;

CREATE VIEW unfulfilled_orders AS
SELECT orders.OrderID, orderfulfilled, itemname, firstname, lastname
FROM customers INNER JOIN Orders ON Customers.OrderID = Orders.OrderID
WHERE (((Orders.OrderFulfilled)<>True))
ORDER BY Orders.OrderID;


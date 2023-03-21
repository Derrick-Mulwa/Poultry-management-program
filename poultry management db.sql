DROP DATABASE IF EXISTS poultry_management;
CREATE DATABASE poultry_management;
USE poultry_management;
CREATE TABLE customers(
customer_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(100),
last_name VARCHAR(100),
address VARCHAR(100),
phone_number VARCHAR(100),
sex VARCHAR(100));

INSERT INTO customers(first_name, last_name, address, phone_number, sex) VALUES
("Brian", "Cheruiyot", "Marakwet", "254712448965", "Male"),
("Ann", "Nduta", "Kerugoya", "254745789665", "Female"),
("Bridgit", "Wambui", "Kariandusi Near Gilgil", "254711745699", "Female"),
("Kylian", "Opiyo", "Kericho", "254736558947", "Male"),
("Jacinta", "Mwende", "Makueni", "254768454910", "Female"),
("Jude", "Kerubo", "Kisii", "254747050399", "Female"),
("Merab", "Achieng", "Siya", "254707031984", "Female"),
("Lazarus", "Mwinyi", "Kurialand", "254787498621", "Male"),
("Ronald", "Regan", "Homa Bay", "254711745699", "Male"),
("Sean", "Murume", "Meru", "254747668947", "Male"),
("Mwagudza", "Wema", "Taita", "254710360798", "Female"),
("Kamlesh", "Patni", "Muindi Mbingu", "254728454753", "Male");

CREATE TABLE income_category(
category_id INT PRIMARY KEY AUTO_INCREMENT,
category_name VARCHAR(100));

INSERT INTO income_category(category_name) VALUES(
"Sell Eggs"),
("Sell Chicken"),
("Sell Manure"),
("Sell Chicks");

CREATE TABLE income(
income_id INT PRIMARY KEY AUTO_INCREMENT,
category VARCHAR(100),
income_description VARCHAR(200),
income_date DATE,
amount DECIMAL(10, 2)
);

INSERT INTO income(category, income_description, income_date, amount) VALUES
("Sell Chicken", "Sold 100 Chicken to Stanford", '2023-03-17', 50000);

CREATE TABLE orders(
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer VARCHAR(100),
date_received DATE,
received_by VARCHAR(100),
order_description VARCHAR(100),
amount DECIMAL(9,2),
paid DECIMAL(9,2),
balance DECIMAL(9,2));

INSERT INTO orders(customer, received_by, order_description, date_received, amount, paid, balance) VALUES
('Jude Kerubo', 'Brian Mutisya', '700 chicks', '2023-02-27', 49000, 37000, 12000),
('Lazarus Mwinyi','Leonard Hassan', '2 tonne Manure', '2023-03-20', 4000, 4000, 0),
('Ann Nduta', 'Priscilla Mbugua', '310 chicken', '2023-02-14', 36000, 30000, 6000),
('Kamlesh Patni', 'Eve Tande', '2000 crates of egg', '2023-03-13', 700000, 700000, 0);




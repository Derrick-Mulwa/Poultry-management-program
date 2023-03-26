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
("Sell Chicken", "Sold 100 Chicken to Stanford", '2023-03-17', 50474),
("Sell Manure", "Sold 100 tonnes to Mburi farm", '2023-03-24', 37097),
("Sell Chicks", "Sold 10000 to Waluke farm", '2023-03-11', 63500),
("Sell Eggs", "Sold 10000 eggs to Awesomecakes Bakery", '2023-03-30', 121744);

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

CREATE TABLE expenses(
expense_id INT PRIMARY KEY AUTO_INCREMENT,
category VARCHAR(100),
expense_description VARCHAR(100),
expense_date DATE,
amount DECIMAL(8,2));

CREATE TABLE expense_category(
category_ID INT PRIMARY KEY AUTO_INCREMENT,
category_name VARCHAR(200));

INSERT INTO expense_category(category_name) VALUES('Purchase feeds'),('Staff Expenditure'),('Equipment Purchase'),('Rent'),('Generator Fuel'),
('Equipment Maintenance'),('Purchase chicks');


INSERT INTO expenses(category, expense_description, expense_date, amount) VALUES 
('Staff Salary', 'Paid February Salaries to managers', '2023-02-28', 120000),
('Equipment Maintenance', 'Took the loan mowers to the mechanic', '2023-02-19', 3500),
('Purchase chicks', 'Bought 140 chicks', '2023-03-28', 10000),
('Purchase feeds', 'Bought layers mash', '2023-03-12', 30000),
('Rent', 'Paid February\'s rent', '2023-02-4', 40000);

CREATE TABLE staff(
staff_id INT PRIMARY KEY AUTO_INCREMENT,
designation VARCHAR(100),
first_name VARCHAR(100),
last_name VARCHAR(100),
address VARCHAR(100),
email_address VARCHAR(100),
phone_number VARCHAR(100),
salary DECIMAL(10,2));

INSERT INTO staff(designation , first_name, last_name, address, email_address, phone_number, salary) values
('Manager','Ian','Mweta','Ruiru, Kiambu','ianmewta@muguku.com','254797012369',60000),
('Staff','Alexa','Muthoni','Mwatate, Coast','alexamuthoni@muguku.com','254704163790', 23000),
('Staff','Beatrice','Ngetich','Pokot','beatricengetich@muguku.com','254709101297', 20000),
('IT Tecnician','Skyler', 'Mdamu', 'Boni Forest Reserve, Tana River', 'skylermdamu@muguku.com','254793984667',28000),
('Mechanic','Justin','Nyanchae','Kisii Town, Kisii', 'justinnyanchae@gmail.com', '254703629028',20000);

CREATE TABLE designation(
designation_id INT PRIMARY KEY AUTO_INCREMENT,
designation_name VARCHAR(100));

INSERT INTO designation(designation_name) VALUES ('Manager'), ('Mechanic'), ('Staff');

CREATE TABLE payments(
payment_id INT PRIMARY KEY AUTO_INCREMENT,
paid_to VARCHAR(100),
incentive_type VARCHAR(100),
payment_description VARCHAR(100),
amount DECIMAL(8,2)
);

INSERT INTO payments(paid_to, incentive_type, payment_description, amount) VALUES
('Alexa Muthoni','Salary','February\'s Salary',23000);

CREATE TABLE feedtype(
feed_id INT PRIMARY KEY AUTO_INCREMENT,
feed_name VARCHAR(200));

INSERT INTO feedtype(feed_name) VALUES ('Grower Feed'), ('Layer Feed'),('Flock Raiser'),('Broiler Feed'), ('Game Bird Feed'),('Fermented Feed');

CREATE TABLE breedtype(
breed_id INT PRIMARY KEY AUTO_INCREMENT,
breed_name VARCHAR(200));

INSERT INTO breedtype(breed_name) VALUES ('Layers'), ('Broilers'),('Grower');

CREATE TABLE batchnumber(
batch_id INT PRIMARY KEY AUTO_INCREMENT,
breed_type VARCHAR(200),
batch_number VARCHAR(100));

INSERT INTO batchnumber(breed_type, batch_number) VALUES ('Layers', '10'), ('Broilers', '9'),('Grower', '2');

CREATE TABLE vaccine(
vaccine_id INT PRIMARY KEY AUTO_INCREMENT,
vaccine_name VARCHAR(200),
vaccine_strain VARCHAR(100),
vaccine_route VARCHAR(100),
vaccine_dose VARCHAR(100),
vaccine_age VARCHAR(100));


INSERT INTO vaccine(vaccine_name, vaccine_strain, vaccine_route, vaccine_dose, vaccine_age) VALUES
('Newcastle Disease','Lasota',' Eye','One drop','5th day'),
('Infectious Bursal Disease', 'Georgia', 'Oral', 'One drop', '15th day');

CREATE TABLE batchFlock(
batch_id INT PRIMARY KEY AUTO_INCREMENT,
breed_type VARCHAR(100),
total int,
date DATE,
expired VARCHAR(100),
laying VARCHAR(100),
batch_number INT);

INSERT INTO batchFlock(breed_type, total, date, expired, laying, batch_number) VALUES
('Broilers', '4000', '2023-2-24', 'No', 'No', '9'),
('Layers', '2000', '2023-2-11', 'No', 'No', '10'),
('Broilers', '3750', '2023-3-19', 'No', 'No', '80');

CREATE TABLE eggProduction(
production_id INT PRIMARY KEY AUTO_INCREMENT,
batch_flock_ID VARCHAR(100),
total INT,
cracked INT,
double_yolk	INT,
dirty INT,
others INT,
staff VARCHAR(100),
date DATE);

INSERT INTO eggProduction(batch_flock_ID, total, cracked, double_yolk, dirty, others, staff, date)
VALUES('Layers 10', '305', '2', '5', '0', '0', 'Beatrice', '2023-01-05'),	 
('Layers 10', '12', '2', '6', '0', '4', 'Alexa', '2023-01-27');

CREATE TABLE hatcheryRecods(
hatchery_ID INT PRIMARY KEY AUTO_INCREMENT,
batch_flock VARCHAR(100),
name VARCHAR(100),
staff VARCHAR(100),
introduction_date DATE,
total INT,
hatched INT,
survived INT);

INSERT INTO hatcheryRecods(batch_flock, name, staff, introduction_date, total, hatched,survived) VALUES
('Layers 10', 'Hatch 10', 'Alexa', '2023-01-27', '477', '456', '438'),	
('Layers 7', 'Hatch 15', 'Alexa', '2023-03-10', '607', '587', '576'),	  
('Layers 10', 'Hatch 09', 'Beatrice', '2023-02-14', '147', '143', '140');

CREATE TABLE vaccinationRecords(
vaccination_id INT PRIMARY KEY AUTO_INCREMENT,
batch_flock VARCHAR(100),
vaccine VARCHAR(100),
vaccine_name VARCHAR(100),
staff VARCHAR(100),
date DATE,
reaction VARCHAR(100),
others VARCHAR(100));

INSERT INTO vaccinationRecords(batch_flock, vaccine, vaccine_name , staff, date, reaction, others) VALUES
('Layers 10', 'Newcastle Disease', 'Lentogenic', 'Beatrice', '2023-01-23', 'None', 'None'),	 
('Broilers 9', 'Infectious Bursal Disease', 'Bural Dest', 'Alexa', '2022-12-04', 'Okay', 'No'),
('Growers 2', 'Mareks Disease',	'Gordon', 'Alexa', '2023-03-05', 'Fine', 'Good')
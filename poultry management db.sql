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
("Kamlesh", "Patni", "Muindi Mbingu", "254728454753", "Male");

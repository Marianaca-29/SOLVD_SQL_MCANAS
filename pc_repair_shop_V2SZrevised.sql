/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

--  MARIANA CAÑAS
-- COMPUTER REPAIR SERVICE SHOP
DROP DATABASE IF EXISTS SOLVDPROJECT;
CREATE DATABASE IF NOT EXISTS SOLVDPROJECT;
USE SOLVDPROJECT;

-- TABLE 1 OF 13 
DROP TABLE IF EXISTS company;
CREATE TABLE IF NOT EXISTS company  (
-- columns
id INT NOT NULL AUTO_INCREMENT,
full_name varchar(45) NOT NULL,
address varchar(45) NOT NULL,
-- details of relations
primary KEY (id)
);

-- TABLE 2 OF 13
DROP TABLE IF EXISTS invoice; 
CREATE TABLE IF NOT EXISTS invoice (
-- columns
id INT NOT NULL AUTO_INCREMENT,
invoice_date DATE NOT NULL,
description VARCHAR(45) NULL,
order_repair_id INT NOT NULL,
idpayment_method INT NOT NULL,
-- details of relations
primary KEY (id),
foreign KEY (order_repair_id) references order_repair(id) ON UPDATE CASCADE ON DELETE NO ACTION,
FOREIGN KEY (idpayment_method) REFERENCES payment_method(id) ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- TABLE 3 OF 13 
DROP TABLE IF EXISTS customer; 
CREATE TABLE IF NOT EXISTS customer (
-- columns
id INT NOT NULL AUTO_INCREMENT,
full_name VARCHAR(45) NOT NULL,
address VARCHAR(45) NOT NULL,
phone_number VARCHAR(45) NOT NULL,
email VARCHAR(45) NOT NULL,
company_id INT NOT NULL,
-- details of relations
primary KEY (id),
foreign KEY (company_id) references company(id)  ON UPDATE CASCADE ON DELETE NO ACTION
);

-- TABLE 4 OF 13 
DROP TABLE IF EXISTS device; 
CREATE TABLE IF NOT EXISTS device (
-- columns
id INT NOT NULL AUTO_INCREMENT,
serial_number VARCHAR(45) NOT NULL,
brand VARCHAR(45) NOT NULL,
model VARCHAR(45) NULL,
details VARCHAR(45) NOT NULL,
year_model INT(4) NULL,
-- details of relations
primary KEY (id)
);


-- TABLE 5 OF 13 
DROP TABLE IF EXISTS service_provided; 
CREATE TABLE IF NOT EXISTS service_provided (
-- columns
id INT NOT NULL AUTO_INCREMENT,
detail VARCHAR(45) NOT NULL,
cost INT NOT NULL,
price INT NOT NULL,
service_date DATE NOT NULL,
company_id INT NOT NULL,
-- details of relations
primary KEY (id),
foreign KEY (company_id) references company(id) ON UPDATE CASCADE ON DELETE NO ACTION
);

-- TABLE 6 OF 13
DROP TABLE IF EXISTS payment_method; 
CREATE TABLE IF NOT EXISTS  payment_method (
-- columns
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
type VARCHAR(45) NULL,
-- details of relations
primary KEY (id)
); 

-- TABLE 7 OF 13 
DROP TABLE IF EXISTS department; 
CREATE TABLE IF NOT EXISTS department (
-- columns
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
description VARCHAR(45) NULL,
-- details of relations
primary KEY (id)
);

-- TABLE 8 OF 13 
DROP TABLE IF EXISTS employee; 
CREATE TABLE IF NOT EXISTS employee (
-- columns
id INT NOT NULL AUTO_INCREMENT,
full_name VARCHAR(45) NOT NULL,
social_security_number int(9) NOT NULL,
address VARCHAR(45) NOT NULL,
phone_number int(15) NOT NULL,
birth_date date NOT NULL,
start_date date NOT NULL,
end_date date NULL,
active tinyint NOT NULL,
company_id INT NOT NULL,
department_id INT NOT NULL, 
-- details of relations
primary KEY (id),
foreign KEY (company_id) references company(id)  ON UPDATE CASCADE ON DELETE NO ACTION,
foreign KEY (department_id) references department(id) ON UPDATE CASCADE ON DELETE NO ACTION
);

-- TABLE 9 OF 13 
DROP TABLE IF EXISTS order_status; 
CREATE TABLE IF NOT EXISTS order_status (
-- columns
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
detail VARCHAR(45) NOT NULL,
-- details of relations
primary KEY (id)
);

-- TABLE 10 OF 13
DROP TABLE IF EXISTS order_repair; 
CREATE TABLE IF NOT EXISTS order_repair (
-- columns
id INT NOT NULL AUTO_INCREMENT,
order_repair_date DATE,
detail VARCHAR(45) NOT NULL,
order_status_id INT NOT NULL,
customer_id INT NOT NULL,
invoice_id INT NOT NULL,
device_id INT NOT NULL,
-- details of relations
primary KEY (id),
foreign KEY (order_status_id) references order_status(id) ON UPDATE CASCADE ON DELETE NO ACTION,
foreign KEY (customer_id) references customer(id) ON UPDATE CASCADE ON DELETE NO ACTION,
foreign KEY (device_id) references device(id) ON UPDATE CASCADE ON DELETE NO ACTION,
foreign KEY (invoice_id) references invoice(id) ON UPDATE CASCADE ON DELETE NO ACTION
);

-- TABLE 11 OF 13 
DROP TABLE IF EXISTS consumable; 
CREATE TABLE IF NOT EXISTS consumable (
-- columns
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
detail VARCHAR(45) NULL,
order_repair_id INT NOT NULL, 
supply_id INT NOT NULL, 
-- details of relations
primary KEY (id),
foreign KEY (order_repair_id) references order_repair(id) ON UPDATE CASCADE ON DELETE NO ACTION,
foreign KEY (supply_id) references supply(id) ON UPDATE CASCADE ON DELETE NO ACTION
);

-- TABLE 12 OF 13 
DROP TABLE IF EXISTS supply; 
CREATE TABLE IF NOT EXISTS supply (
-- columns
id INT NOT NULL AUTO_INCREMENT,
full_name VARCHAR(45) NOT NULL,
address VARCHAR(45) NOT NULL,
details VARCHAR(45) NULL,
phone_number VARCHAR(45) NOT NULL,
email VARCHAR(45) NOT NULL,
tax_number INT(13) NOT NULL,
-- details of relations
primary KEY (id)
);

-- TABLE 13 OF 13
DROP TABLE IF EXISTS product; 
CREATE TABLE IF NOT EXISTS product (
-- columns
id int NOT NULL AUTO_INCREMENT,
full_name VARCHAR(45) NOT NULL,
details VARCHAR(45) NOT NULL,
price int NOT NULL,
cost int NOT NULL,
date_enter DATE NOT NULL,
min_stock INT NOT NULL,
current_stock INT NOT NULL,
max_stock INT NOT NULL,
other_details VARCHAR(45) NULL,
supply_id int NOT NULL,
order_repair_id int NOT NULL,
-- details of relations
primary KEY (id),
foreign KEY (supply_id) references supply(id),
foreign KEY (order_repair_id) references order_repair(id)
);
-- TABLE 14 intermediate table
CREATE TABLE IF NOT EXISTS customer_has_payment_method (
-- columns
id INT NOT NULL,
idcustomer INT NOT NULL,
idpayment_method INT NOT NULL,
-- details of relations
PRIMARY KEY (id),
FOREIGN KEY (idcustomer) REFERENCES customer(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
FOREIGN KEY (idpayment_method) REFERENCES payment_method(id) ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- computer_service_repair, invoice, customer, device, service_provided, payment_method, department, employees, order_status
-- order_repair, consumable, supply, product
--  customer_has_payment_method, device_has_customer, customer_has_invoice
-- DESCRIBE consumable;
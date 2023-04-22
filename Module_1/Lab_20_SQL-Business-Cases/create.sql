/*    Lab_20_SQL-Business-Cases create  */

CREATE DATABASE IF NOT EXISTS `lab21cars`;
use lab21cars;


DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
  id INT NOT NULL AUTO_INCREMENT BY 1,
  vin VARCHAR(20) NOT NULL,
  manufacturer VARCHAR(10),
  model VARCHAR(45),
  year int,
  color VARCHAR(10),
  PRIMARY KEY (id));


DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
  id INT NOT NULL AUTO_INCREMENT,
  customer_id INT NOT NULL,
  name VARCHAR(20) NOT NULL,
  phone VARCHAR(20),
  email VARCHAR(20),
  adress VARCHAR(200),
  city VARCHAR(50),
  state VARCHAR(20),
  postal VARCHAR(10),
  PRIMARY KEY (id));
  
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
  id INT NOT NULL AUTO_INCREMENT,
  staffid INT NOT NULL,
  name VARCHAR(20),
  store VARCHAR(20),
  PRIMARY KEY (id));
  
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
	id INT NOT NULL AUTO_INCREMENT,
	invoices_number DOUBLE NOT NULL,
    id_car  INT NOT NULL,
    id_customer INT NOT NULL,
    id_salesperson INT NOT NULL,
	date DATETIME,
    PRIMARY KEY (id),
    CONSTRAINT id_car
    FOREIGN KEY (id)
    REFERENCES cars (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT id_customer
    FOREIGN KEY (id)
    REFERENCES customers (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
	CONSTRAINT id_salesperson
    FOREIGN KEY (id)
    REFERENCES salespersons (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

    
    


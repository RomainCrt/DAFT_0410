/*    Lab_20_SQL-Business-Cases seed  */
use lab21cars;
SET FOREIGN_KEY_CHECKS=0;
delete from cars;
INSERT INTO cars (vin,manufacturer,model,year,color) VALUES ('K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue');
INSERT INTO cars (vin,manufacturer,model,year,color) VALUES ('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red');
INSERT INTO cars (vin,manufacturer,model,year,color) VALUES ('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White');
INSERT INTO cars (vin,manufacturer,model,year,color) VALUES ('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver');
INSERT INTO cars (vin,manufacturer,model,year,color) VALUES ('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray');
INSERT INTO cars (vin,manufacturer,model,year,color) VALUES ('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');

delete from customers;
INSERT INTO customers (customer_id,name,phone,email,adress,city,state,postal) VALUES (10001,'Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 14	Madrid','Madrid','Spain',28045);
INSERT INTO customers (customer_id,name,phone,email,adress,city,state,postal) VALUES (20001,'Abraham Lincoln','+1 305 907 7086','-','120 SW 8th St	Miami','Florida','United States',33130);
INSERT INTO customers (customer_id,name,phone,email,adress,city,state,postal) VALUES (30001,'Napoléon Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colisée Paris','Île-de-France','France',75008);

delete from salespersons;
INSERT INTO salespersons (staffid,name,store) VALUES (00001,'Petey Cruiser','Madrid');
INSERT INTO salespersons (staffid,name,store) VALUES (00002,'Anna Sthesia','Barcelona');
INSERT INTO salespersons (staffid,name,store) VALUES (00003,'Paul Molive','Berlin');
INSERT INTO salespersons (staffid,name,store) VALUES (00004,'Gail Forcewind','Paris');
INSERT INTO salespersons (staffid,name,store) VALUES (00005,'Paige Turner','Mimia');
INSERT INTO salespersons (staffid,name,store) VALUES (00006,'Bob Frapples','Mexico City');
INSERT INTO salespersons (staffid,name,store) VALUES (00007,'Walter Melon','Amsterdam');
INSERT INTO salespersons (staffid,name,store) VALUES (00008,'Shonda Leer','São Paulo');

delete from invoices;
INSERT INTO invoices (invoices_number,date,id_car,id_customer,id_salesperson) VALUES (852399038,'2018-08-22',116,2,4);
INSERT INTO invoices (invoices_number,date,id_car,id_customer,id_salesperson) VALUES (731166526,'2018-12-31',119,1,6);
INSERT INTO invoices (invoices_number,date,id_car,id_customer,id_salesperson) VALUES (271135104,'2019-01-22',118,3,8);
SET FOREIGN_KEY_CHECKS=1;



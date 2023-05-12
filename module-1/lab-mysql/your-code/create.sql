
use lab_mysql;

create table cars (
	vin int(20) not null,
    manufacture varchar(20),
    model varchar(20),
    year varchar(20),
    color varchar(20),
    primary key (vin)
    );
    
create table customers (
	customer_id int(20) not null auto_increment,
    name varchar(30) not null,
    phonenumber int(25),
    email varchar(30),
    adress varchar (50),
    city varchar(50),
    state_providence varchar(50),
    country varchar(50),
    zip_or_postal_code int(10),
    primary key (customer_id)
    );

create table sales_persons (
	staff_id varchar(30) not null ,
    name varchar(30) not null, 
    store varchar(30),
    primary key (staff_id)
    
    );
    

create table invoices (
	invoice_number varchar(30) not null,
    date varchar(30),
    vin varchar(30) not null, 
    customer_id varchar(30) not null,
    staff_id varchar(30) not null,
    primary key (invoice_number)

	);

show tables;
    

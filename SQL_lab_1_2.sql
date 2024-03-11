CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    VIN VARCHAR(20) NOT NULL,
    Manufacturer VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Year YEAR NOT NULL,
    Color VARCHAR(20) NOT NULL,
    PRIMARY KEY (VIN)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    CustomerID INT AUTO_INCREMENT NOT NULL,
    Name VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(100),
    City VARCHAR(50),
    StateProvince VARCHAR(50),
    Country VARCHAR(50),
    ZipPostalCode VARCHAR(20),
    PRIMARY KEY (CustomerID)
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
    StaffID INT AUTO_INCREMENT NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Store VARCHAR(100) NOT NULL,
    PRIMARY KEY (StaffID)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
    InvoiceNumber INT AUTO_INCREMENT NOT NULL,
    Date DATE NOT NULL,
    CarVIN VARCHAR(17) NOT NULL,
    CustomerID INT NOT NULL,
    StaffID INT NOT NULL,
    PRIMARY KEY (InvoiceNumber),
    FOREIGN KEY (CarVIN) REFERENCES cars(VIN),
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID),
    FOREIGN KEY (StaffID) REFERENCES salespersons(StaffID)
);
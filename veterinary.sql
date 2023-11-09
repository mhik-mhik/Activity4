CREATE DATABASE veterinary;

CREATE TABLE owners (
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100,
    phone VARCHAR(15)
    email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS public.animals
(
animal_id INT NOT NULL,
name VARCHAR(50) NOT NULL,
species VARCHAR(50) NOT NULL,
breed VARCHAR(50) NOT NULL,
date_of_birth DATE NOT NULL,
gender VARCHAR(10) NOT NULL,
color VARCHAR(50) NOTY NULL,
owner_id INT NOT NULL,
PRIMARY KEY(animalid),
FOREIGN KEY (owner_id) REFERENCES owners(owner_id)
);

CREATE TABLE appointments (
    appointmentid INT PRIMARY KEY,
    animalid INT,
    appointmentdate DATE,
    reason VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS public.doctors
(
doctor_id INT NOT NULL,
d_first_name VARCHAR(50) NOT NULL,
d_last_name VARCHAR(50) NOT NULL,
speciality VARCHAR(100) NOT NULL,
phone VARCHAR(15) NOT NULL,
email VARCHAR(100) NOT NULL,
PRIMARY KEY (doctor_id)
);

CREATE TABLE invoices (
    invoicesid INT,
    appointmentid INT,
    totalamount NUMERIC(10, 2),
    paymentdate DATE,
    FOREIGN KEY (appointmentid) REFERENCES appointments(appointmentid)
);

CREATE TABLE IF NOT EXISTS public.medicalrecords
(
record_id INT NOT NULL,
animnal_id INT NOT NULL,
record_date TIMESTAMP NOT NULL,
doctor_id INT NOT NULL,
diagnosis TEXT NOT NULL,
prescription TEXT NOT NULL,
notes TEXT NOT NULL,
PRIMARY KEY (record_id),
FOREIGN KEY (animal_id) REFERENCES animals(animal_id)
FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

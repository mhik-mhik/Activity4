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
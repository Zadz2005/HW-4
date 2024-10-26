
DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

CREATE TABLE petPet (
  petname VARCHAR(20) NOT NULL,
  owner VARCHAR(45) NOT NULL,
  species VARCHAR(45) NOT NULL,
  gender CHAR(1) CHECK (gender IN ('M', 'F')),
  birth DATE,
  death DATE,
  PRIMARY KEY (petname)
);

CREATE TABLE petEvent (
  petname VARCHAR(20) NOT NULL,
  eventdate DATE NOT NULL,
  eventtype VARCHAR(15) NOT NULL,
  remark VARCHAR(255),
  FOREIGN KEY (petname) REFERENCES petPet(petname) 
  PRIMARY KEY (petname, eventdate)
);


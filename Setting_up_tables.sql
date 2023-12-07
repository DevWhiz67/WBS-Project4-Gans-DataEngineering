CREATE DATABASE Gans;

USE Gans;

CREATE TABLE cities(
	city_id INT AUTO_INCREMENT,
    city VARCHAR(200), 
    country VARCHAR(20),
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    population INT,
    year_population YEAR,
    PRIMARY KEY(city_id)
    );
    
    
CREATE TABLE weathers(
	weathers_id INT AUTO_INCREMENT,
    City VARCHAR(200), 
    Country VARCHAR(20),
    Date_Time DATETIME,
    Weather VARCHAR(200),
    Temperature DECIMAL(4,2),
    Risk_of_Rain DECIMAL(4,2),
    Wind_Speed DECIMAL(4,2),
    city_id INT,
    PRIMARY KEY(weathers_id),
    FOREIGN KEY(city_id) REFERENCES cities(city_id)
    );

    
CREATE TABLE flights(
	flight_id INT AUTO_INCREMENT,
    ICAO VARCHAR(20),
    Flight_Number VARCHAR(20), 
	Departure_Airport VARCHAR(200),
    Flight_Status VARCHAR(20),
    Scheduled_arrival_date DATETIME,
    Revised_arrival_date DATETIME,
    Aircraft VARCHAR(200),
    Data_retrieved_on DATETIME,
    PRIMARY KEY(flight_id),
    FOREIGN KEY(ICAO) REFERENCES airports(ICAO)
    );    
    
    
CREATE TABLE airports(
	city_id INT,
    ICAO VARCHAR(20),
    PRIMARY KEY(ICAO), 
    FOREIGN KEY(city_id) REFERENCES cities(city_id)
    );


INSERT INTO airports (city_id, ICAO) VALUES ('1', 'EDDB');
INSERT INTO airports (city_id, ICAO) VALUES ('2', 'EDDF');
INSERT INTO airports (city_id, ICAO) VALUES ('3', 'EDDM');
INSERT INTO airports (city_id, ICAO) VALUES ('4', 'EDDK');
INSERT INTO airports (city_id, ICAO) VALUES ('5', 'EDDS');
INSERT INTO airports (city_id, ICAO) VALUES ('6', 'EDDP');


DROP DATABASE Gans;
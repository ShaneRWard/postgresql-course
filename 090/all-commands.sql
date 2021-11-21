-- CREATE DATABASE wishlists;

DROP TABLE IF EXISTS listitems;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS lists;
DROP TABLE IF EXISTS people;

CREATE TABLE people (
    pid SERIAL PRIMARY KEY,
    pFirstName VARCHAR(50) NOT NULL);

CREATE TABLE lists (
    lID SERIAL PRIMARY KEY,
    pID INT REFERENCES people NOT NULL,
    lName VARCHAR(50) NOT NULL
);

CREATE TABLE items (
    iID SERIAL PRIMARY KEY,
    iName VARCHAR(50) NOT NULL
);

CREATE TABLE listItems (
    liID SERIAL PRIMARY KEY,
    lID INT REFERENCES lists NOT NULL,
    iID INT REFERENCES items NOT NULL,
    liDesired INT NOT NULL DEFAULT 1,
    liPurchase INT NOT NULL DEFAULT 0
);

ALTER TABLE people 
    ADD COLUMN plastname VARCHAR(50) NOT NULL,
    ADD COLUMN pcity VARCHAR(50) NOT NULL,
    ADD COLUMN pstate VARCHAR(2) NOT NULL
;

INSERT INTO people (pfirstname, plastname, pstate, pcity) VALUES 
('Randy', 'Durban', 'TX', 'Austin'),
('Robin', 'Wright', 'CA', 'Hollywood'), 
('Rachel', 'Maddow', 'CA', 'Los Angeles'), 
('Nick', 'Cannon', 'CA', 'Burbank'), 
('Fred', 'Flintstone', 'NM', 'Bedrock'),
('Jesse', 'Anderson', 'TX', 'Austin'),
('Erica', 'Anderson', 'TX', 'Austin'),
('Kara', 'White', 'CA', 'Clovis'),
('Cara', 'Santamaria', 'CA', 'Los Angeles'),
('David', 'Anderson', 'AR', 'Fayettville'),
('James', 'Green', 'CA', 'Clovis'),
('Jim', 'Beam', 'TN', 'Nashville'),
('John', 'Wick', 'IL', 'Chicago'),
('Jack', 'Reacher', 'MD', 'Annapolis'),
('Greg', 'Goshen', 'NY', 'Rochester'),
('Kim', 'Bassinger', 'CA', 'Hollywood'),
('Ryan', 'Gosling', 'NV', 'Carson City'),
('Rich', 'Wilkins', 'MI', 'Jackson'),
('Richard', 'Pryor', 'MN', 'St Paul'),
('Rick', 'Sanchez', 'FL', 'Miami'),
('Don', 'Juan', 'CA', 'San Diego'),
('Donald', 'Sutherland', 'MN', 'Newark'),
('Sarah', 'Daltry', 'NV', 'Las Vegas'),
('Sara', 'Rogers', 'UT', 'Salt Lake City'),
('Tara', 'Davidson', 'WA', 'Seatle'),
('Tiffany', 'Fulton', 'NV', 'Folsom'),
('Lacy', 'Alexandre', 'ND', 'Bismark'),
('Lauren', 'Martinez', 'MO', 'Kansas City'),
('Mick', 'Grayson', 'IL', 'Chicago'),
('Austin', 'Auburry', 'VI', 'Richmond'),
('Steve', 'Novella', 'CT', 'Sandy Hook')

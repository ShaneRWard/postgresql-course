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
    liPurchased INT NOT NULL DEFAULT 0
);

ALTER TABLE people 
    ADD COLUMN plastname VARCHAR(50) NOT NULL,
    ADD COLUMN pcity VARCHAR(50) NOT NULL,
    ADD COLUMN pstate VARCHAR(2) NOT NULL
;
-- 31
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
;

-- 16
INSERT INTO items (iName) VALUES 
    ('Red Rider BB Gun'), 
    ('Barbie Doll'), 
    ('Raindrops on roses'), 
    ('Whiskers on Kittens'),
    ('Bright copper kettles'),
    ('Warm Woolen Mittens'),
    ('Brown paper packages tied up with strings'),
    ('Cream-colored ponies'),
    ('crisp apple strudels'),
    ('Doorbells'),
    ('sleigh bells'),
    ('schnitzel with noodles'),
    ('Wild geese that fly with the moon on their wings'),
    ('Girls in white dresses with blue satin sashes'),
    ('Snowflakes that stay on my nose and eyelashes'),
    ('Silver-white winters that melt into springs')
;

-- 13
INSERT INTO lists (pID, lName) VALUES
    (1, 'Winter Wishes'),
    (3, 'Christmas List'),
    (9, 'Seasonal Gifts'),
    (26, 'Turner Family Presents'),
    (12, 'Christmas Presents'),
    (22, 'Holiday Wish List'),
    (17, 'hanukka gifts'),
    (23, 'My list'),
    (2, 'Wishlist'),
    (5, 'XMAS LIST'),
    (13, 'Johns Wishlist'),
    (3, 'Holiday Gifts'),
    (18, 'Gifts for White Elephant')
;

INSERT INTO listitems (lID, iID, liDesired, liPurchased) VALUES 
    (4, 4, 1, 1),
    (7, 1, 1, 2),
    (3, 5, 1, 0),
    (8, 2, 2, 0),
    (12, 5, 2, 0),
    (13, 7, 4, 5),
    (9, 4, 4, 1),
    (7, 5, 3, 1),
    (1, 11, 2, 1),
    (2, 4, 3, 1),
    (5, 8, 2, 2),
    (11, 10, 2, 4),
    (10, 1, 1, 2),
    (6, 8, 2, 0),
    (1, 8, 2, 2)
;
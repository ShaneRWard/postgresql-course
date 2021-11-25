-- CREATE DATABASE wishlists;

DROP TABLE IF EXISTS listitems;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS lists;
DROP TABLE IF EXISTS people;

CREATE TABLE people (
    pid SERIAL PRIMARY KEY,
    pFirstName VARCHAR(50) NOT NULL,
    plastname VARCHAR(50) NOT NULL,
    pcity VARCHAR(50) NOT NULL,
    pstate VARCHAR(2) NOT NULL,
    pdob TIMESTAMP NOT NULL,
    pjoined TIMESTAMP NOT NULL,
    plastvisit TIMESTAMP NOT NULL,
    ppoints INT NOT NULL,
    pfavorites JSONB NOT NULL
);

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

-- 31
INSERT INTO people (pfirstname, plastname, pstate, pcity, pdob, pjoined, plastvisit, ppoints, pfavorites) VALUES 
('Randy', 'Durban', 'TX', 'Austin', '1984-08-15 14:40:10', '2021-08-15 14:40:10', '2021-11-15 14:40:10', 510, '{"Desserts":["icecream"]}'),
('Robin', 'Wright', 'CA', 'Hollywood', '1965-02-23 10:40:10', '2020-02-15 14:40:10', '2021-10-15 14:40:10', 820, '{"Desserts":["icecream"]}'),
('Rachel', 'Maddow', 'CA', 'Los Angeles', '1968-05-02 14:40:10', '2019-07-05 14:40:10', '2021-11-24 14:40:10', 430, '{"Desserts":["icecream"]}'), 
('Nick', 'Cannon', 'CA', 'Burbank', '1986-08-15 14:40:10', '2020-07-07 14:40:10', '2021-1-05 14:40:10', 1020, '{"Desserts":["icecream"]}'), 
('Fred', 'Flintstone', 'NM', 'Bedrock', '1956-03-05 14:40:10', '2018-08-15 14:40:10', '2021-8-12 14:40:10', 830, '{"Desserts":["icecream"]}'),
('Jesse', 'Anderson', 'TX', 'Austin', '1983-07-25 14:40:10', '2018-08-15 14:40:10', '2021-11-20 14:40:10', 5100, '{"Desserts":["icecream"]}'),
('Erica', 'Anderson', 'TX', 'Austin', '1984-09-08 14:40:10', '2018-08-15 14:40:10', '2021-11-21 14:40:10', 5100, '{"Desserts":["icecream"]}'),
('Kara', 'White', 'CA', 'Clovis', '1981-07-07 14:40:10', '2018-08-16 14:40:10', '2021-11-19 14:40:10', 5500, '{"Desserts":["icecream"]}'),
('Cara', 'Santamaria', 'CA', 'Los Angeles', '1983-04-15 14:40:10', '2019-04-05 14:40:10', '2020-12-20 14:40:10', 4000, '{"Desserts":["icecream"]}'),
('David', 'Anderson', 'AR', 'Fayettville', '1990-11-25 14:40:10', '2018-10-10 14:40:10', '2021-10-31 14:40:10', 3500, '{"Desserts":["icecream"]}'),
('James', 'Green', 'CA', 'Clovis', '1983-10-10 14:40:10', '2018-09-23 14:40:10', '2021-11-22 14:40:10', 2800, '{"Desserts":["icecream"]}'),
('Jim', 'Beam', 'TN', 'Nashville', '1919-04-22 14:40:10', '2019-04-26 14:40:10', '2021-9-02 14:40:10', 320, '{"Desserts":["icecream"]}'),
('John', 'Wick', 'IL', 'Chicago', '1978-05-15 14:40:10', '2018-08-15 14:40:10', '2021-10-18 14:40:10', 1250, '{"Desserts":["icecream"]}'),
('Jack', 'Reacher', 'MD', 'Annapolis', '1965-01-05 14:40:10', '2018-06-12 14:40:10', '2021-11-20 14:40:10', 1180, '{"Desserts":["icecream"]}'),
('Greg', 'Goshen', 'NY', 'Rochester', '1995-08-08 14:40:10', '2020-12-12 14:40:10', '2021-11-24 14:40:10', 5150, '{"Desserts":["icecream"]}'),
('Kim', 'Bassinger', 'CA', 'Hollywood', '1958-02-14 14:40:10', '2021-01-15 14:40:10', '2021-11-24 14:40:10', 3060, '{"Desserts":["icecream"]}'),
('Ryan', 'Gosling', 'NV', 'Carson City', '1982-12-30 14:40:10', '2019-02-18 14:40:10', '2021-11-23 14:40:10', 3040, '{"Desserts":["icecream"]}'),
('Rich', 'Wilkins', 'MI', 'Jackson', '1961-06-04 14:40:10', '2018-08-15 14:40:10', '2021-10-20 14:40:10', 4450, '{"Desserts":["icecream"]}'),
('Richard', 'Pryor', 'MN', 'St Paul', '1952-02-07 14:40:10', '2021-08-15 14:40:10', '2021-11-18 14:40:10', 4580, '{"Desserts":["icecream"]}'),
('Rick', 'Sanchez', 'FL', 'Miami', '1955-03-24 14:40:10', '2018-08-12 14:40:10', '2021-11-19 14:40:10', 4440, '{"Desserts":["icecream"]}'),
('Don', 'Juan', 'CA', 'San Diego', '1923-08-26 14:40:10', '2019-07-15 14:40:10', '2021-11-12 14:40:10', 2150, '{"Desserts":["icecream"]}'),
('Donald', 'Sutherland', 'MN', 'Newark', '1945-12-05 14:40:10', '2021-04-01 14:40:10', '2021-11-21 14:40:10', 570, '{"Desserts":["icecream"]}'),
('Sarah', 'Daltry', 'NV', 'Las Vegas', '1990-04-28 14:40:10', '2019-09-11 14:40:10', '2021-11-22 14:40:10', 1910, '{"Desserts":["icecream"]}'),
('Sara', 'Rogers', 'UT', 'Salt Lake City', '1981-07-05 14:40:10', '2020-07-11 14:40:10', '2021-11-21 14:40:10', 2030, '{"Desserts":["icecream"]}'),
('Tara', 'Davidson', 'WA', 'Seatle', '1981-08-07 14:40:10', '2020-08-18 14:40:10', '2021-11-22 14:40:10', 1870, '{"Desserts":["icecream"]}'),
('Tiffany', 'Fulton', 'NV', 'Folsom', '1985-04-10 14:40:10', '2019-07-04 14:40:10', '2021-11-13 14:40:10', 1640, '{"Desserts":["icecream"]}'),
('Lacy', 'Alexandre', 'ND', 'Bismark', '1988-09-05 14:40:10', '2020-08-15 14:40:10', '2021-11-27 14:40:10', 100, '{"Desserts":["icecream"]}'),
('Lauren', 'Martinez', 'MO', 'Kansas City', '1982-04-02 14:40:10', '2018-04-26 14:40:10', '2021-10-19 14:40:10', 570, '{"Desserts":["icecream"]}'),
('Mick', 'Grayson', 'IL', 'Chicago', '1981-10-10 14:40:10', '2020-07-05 14:40:10', '2021-11-2 14:40:10', 220, '{"Desserts":["icecream"]}'),
('Austin', 'Auburry', 'VI', 'Richmond', '1986-06-14 14:40:10', '2020-07-06 14:40:10', '2021-11-01 14:40:10', 4030, '{"Desserts":["icecream"]}'),
('Steve', 'Novella', 'CT', 'Sandy Hook', '1959-5-26 14:40:10', '2019-04-03 14:40:10', '2021-11-07 14:40:10', 5000, '{"Desserts":["icecream"]}')
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
-- CREATE DATABASE movies;

DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS movies CASCADE;
DROP TABLE IF EXISTS rentals CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS department CASCADE;

CREATE TABLE customers (
    cid SERIAL PRIMARY KEY,
    cname VARCHAR(50) NOT NULL
);

CREATE TABLE movies (
    mid SERIAL PRIMARY KEY,
    mname VARCHAR(50) NOT NULL
);

CREATE TABLE rentals (
    rid SERIAL PRIMARY KEY,
    cid INT REFERENCES customers NOT NULL,
    mid INT REFERENCES movies NOT NULL
);

CREATE TABLE employees (
    eid SERIAL PRIMARY KEY,
    ename VARCHAR(50) NOT NULL
);

CREATE TABLE department (
    did SERIAL PRIMARY KEY,
    dept VARCHAR(50),
    eid INT REFERENCES employees
);

-- 31
INSERT INTO customers (cname) VALUES 
    ('Randy'), ('Robin'), ('Rachel'), ('Nick'), ('Fred'), ('Jesse'), 
    ('Erica'), ('Kara'), ('Cara'), ('David'), ('James'), ('Jim'), ('John'), 
    ('Jack'), ('Greg'), ('Kim'), ('Ryan'), ('Rich'), ('Richard'), ('Rick'), 
    ('Don'), ('Donald'), ('Sarah'), ('Sara'), ('Tara'), ('Tiffany'), 
    ('Lacy'), ('Lauren'), ('Mick'),('Austin'), ('Steve')
;

-- 24
INSERT INTO movies (mname) VALUES 
    ('A Christmas Story'), ('Toy Story'), ('The Sound of Music'), ('Cats'), 
    ('Transformers'), ('Babe'), ('The Departed'), ('My Little Pony: The Movie'),
    ('Star Wars: A New Hope'), ('Home Alone'), ('Home Alone 2: Lost in New York'), ('Miracle on 34th Street'), 
    ('Deadpool'), ('Clueless'), ('Frozen'), ('Toy Story 2'), 
    ('Titanic'), ('Captain America: The First Avenger'), ('Iron Man'), ('Thor'), 
    ('Black Widow'), ('Avengers'), ('Training Day'), ('Good Fellas')
;

-- 25
INSERT INTO rentals (cid, mid) VALUES
    (1, 4),
    (3, 16),
    (9, 9),
    (26, 2),
    (12, 19),
    (22, 1),
    (17, 8),
    (23, 4),
    (2, 24),
    (5, 22),
    (13, 5),
    (3, 10),
    (18, 21),
    (2, 11),
    (8, 14),
    (31, 21),
    (9, 16),
    (16, 13),
    (28, 3),
    (1, 13),
    (21, 9),
    (15, 8),
    (14, 18),
    (17, 17),
    (22, 5)
;

-- 8
INSERT INTO employees (ename) VALUES 
    ('Carl Miller'),
    ('John Seivers'),
    ('Janet Booth'),
    ('Phil Martinez'),
    ('Christina Nguyen'),
    ('Jasmine Kur'),
    ('Charles Steak'),
    ('Auron Ryan')
;

INSERT INTO department (dept, eid) VALUES
    ('Management', 1), ('Management', 5), ('Management', 4),
    ('Customer Service', 2), ('Customer Service', 3), ('Maintenance', 7),
    ('Customer Service', 6), ('Owner', null)
;
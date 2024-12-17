--Exercise from video
--Create a new database

SHOW databases;

CREATE DATABASE shirts_db;

USE shirts_db;

--Create a new table

CREATE TABLE shirts(
    shirt_id INT NOT NULL AUTO_INCREMENT,
    article VARCHAR(20),
    color VARCHAR(20),
    shirt_size VARCHAR(2),
    last_worn INT,
    PRIMARY KEY(shirt_id)
);

DESC shirts;

--Populating the table

INSERT INTO shirts(article, color, shirt_size, last_worn)
VALUES ('t-shirt', 'white', 'S', 10),
       ('t-shirt', 'green', 'S', 200),
       ('polo shirt', 'black', 'M', 10),
       ('tank top', 'blue', 'S', 50),
       ('t-shirt', 'pink', 'S', 0),
       ('polo shirt', 'red', 'M', 5),
       ('tank top', 'white', 'S', 200),
       ('tank top', 'blue', 'M', 15);

SELECT * FROM shirts;

--Adding values

INSERT INTO shirts(article, color, shirt_size, last_worn)
VALUES ('polo shirt', 'purple', 'M', 50);

--Select all shirts but only print out article
--and color

SELECT article, color FROM shirts;

--Select all medium shirts: print out everything
--but shirt_id

SELECT article, color, shirt_size, last_worn
FROM shirts
WHERE shirt_size='M';

--Update all polo shirts: change their size
--to L

UPDATE shirts SET shirt_size='L'
WHERE article='polo shirt';

--Update the shirt last worn 15 days ago:
--change last_worn to 0

UPDATE shirts SET last_worn=0
WHERE last_worn=15;

--Update all white shirts: change size to 'XS'
--and color to 'off white'

UPDATE shirts SET shirt_size='XS', color='off white'
WHERE color='white';

--Delete all old shirts: last worn 200
--days ago

DELETE FROM shirts WHERE last_worn>=200;

--Delete all tank tops: your tastes have
--changed

DELETE FROM shirts WHERE article='tank top';

--Delete all shirts

DELETE FROM shirts;

--Drop the entire shirts table

DROP TABLE shirts;

--Drop database

DROP DATABASE shirts_db;

SHOW DATABASES;
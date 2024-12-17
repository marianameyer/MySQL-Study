--Complete MySQL Beginner to Expert
--CRUD

--Escolhendo o database

SHOW databases;
USE teste;
SHOW tables;

--Criando nova tabela

CREATE TABLE cats(
    cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY(cat_id)
);

DESC cats;

--Populando a tabela criada

INSERT INTO cats(name, breed, age) 
VALUES  ('Ringo', 'Tabby', 4),
        ('Cindy', 'Maine Coon', 10),
        ('Dumbledore', 'Maine Coon', 11),
        ('Egg', 'Persian', 4),
        ('Misty', 'Tabby', 13),
        ('George Michael', 'Ragdoll', 9),
        ('Jackson', 'Sphynx', 7);

SELECT * FROM cats;

--UPDATE

UPDATE cats SET breed='Shorthair'
WHERE breed='Tabby';

UPDATE cats SET age=14
WHERE name='Misty';

UPDATE cats SET name='Jack'
WHERE name='Jackson';

UPDATE cats SET breed='British Shorthair'
WHERE name='Ringo';

UPDATE cats SET age=12
WHERE breed='Maine Coon';

--DELETE

SELECT * FROM cats;

SELECT * FROM cats WHERE name='Egg';

DELETE FROM cats WHERE name='Egg';

DELETE FROM cats WHERE age=4;

DELETE FROM cats WHERE age=cat_id;

DELETE FROM cats;
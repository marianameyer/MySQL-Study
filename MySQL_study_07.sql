--Complete MySQL Beginner to Expert
--String Functions

--Escolhendo o database

SHOW DATABASES;

USE library;

--Verificando as tabelas

SHOW TABLES;

DESC books;

SELECT * FROM books;

--CONCAT

SELECT 
CONCAT(author_fname, ' ', author_lname) AS 'author_name'
FROM books;

--CONCAT_WS : concat with separator (o primeiro parâmetro é 
--o separador escolhido)

SELECT 
CONCAT_WS(' - ', title, author_fname, author_lname)
FROM books;

SELECT
CONCAT_WS(' ', title, author_fname, author_lname)
FROM books;

--SUBSTRING
--(SQL começa a contagem a partir de 1)
--(Intervalo definido engloba os dois extremos)

SELECT SUBSTRING('Hello World', 1, 4); --Hell

SELECT SUBSTRING('Hello World', 7);  --World
--Começa na posição indicada e vai até o fim

SELECT SUBSTRING('Hello World', -3);  --rld
--Faz a leitura da direita para a esquerda

--Limitando o tamanho dos títulos dos livros em 10 caracteres

SELECT
SUBSTRING(title, 1, 10) AS 'short_title'
FROM books;

--CONCAT + SUBSTRING
--Limitando o tamanho do título para 10 caracteres e 
--add '...' ao final

SELECT
    CONCAT(
        SUBSTRING(title, 1, 10), 
        '...'
    ) AS 'short_title'
FROM books;

--REPLACE
--SELECT REPLACE(WHAT'S GOING TO CHANGE, OLD, NEW)
--SQL é case sensitive

SELECT REPLACE('Hello World', 'Hell', '%$#@'); --%$#@o World

SELECT
    REPLACE(title, 'e', '3') AS 'titl3'
FROM books;

--Trocando 'e' por '3' e limitando a 10 char o título

SELECT
    SUBSTRING(
        REPLACE(title, 'e', '3'), 1, 10
    ) AS 'short_titl3'
FROM books;

--CONCAT + SUBSTRING + REPLACE
--Trocando 'e' por '3' e limitando a 10 char o título

SELECT
    CONCAT(
        SUBSTRING(
            REPLACE(title, 'e', '3'), 
            1, 10
        ), '...'
    ) AS 'short_titl3'
FROM books;

--REVERSE

SELECT REVERSE('Hello World');

SELECT REVERSE(author_fname) FROM books;

--Mostrando a coluna de nome como palíndromo

SELECT 
    CONCAT(author_fname,
        REVERSE(author_fname)
    ) AS 'weird_names'
FROM books;

--CHAR_LENGTH : retorna o tamanho

SELECT CHAR_LENGTH('Hello World');  --11

SELECT author_lname, 
       CHAR_LENGTH(author_lname) AS 'length'
FROM books;

SELECT CONCAT(
    author_lname, 
    ' is ',
    CHAR_LENGTH(author_lname),
    ' characters long.'
    )
FROM books;

--UPPER and LOWER

SELECT UPPER('Hello World');  --HELLO WORLD

SELECT LOWER('Hello World');  --hello world

SELECT CONCAT(
    'My favorite book is ',
    UPPER(title)
    )
FROM books;

SELECT CONCAT(
    'MY FAVORITE BOOK IS ',
    LOWER(title)
    )
FROM books;
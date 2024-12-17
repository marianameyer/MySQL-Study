--Complete MySQL Begginer to Expert
--Refining Selections
-- 

--Escolhendo o db

USE library;

--Inserindo mais dados na tabela books

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES 
    ('10% Happier', 'Dan', 'Harris', 2014, 29, 256),
    ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
    ('Lincoln in The Bardo', 'George', 'Saunders', 2017, 1000, 367);

SELECT * FROM books;

--
--DISTINCT : retorna valores únicos
--

--Sobrenomes únicos na tabela

SELECT DISTINCT author_lname FROM books;

SELECT DISTINCT released_year FROM books;

--E para nomes únicos? Vamos usar CONCAT

SELECT DISTINCT 
    CONCAT(author_fname, ' ', author_lname) AS 'unique authors'
FROM books;

--Ou, de forma mais fácil e mais prática (combining tables)

SELECT DISTINCT author_fname, author_lname FROM books;

--
--ORDER BY
--
--Ordena de forma alfanumérica (ascendente)

SELECT author_lname FROM books ORDER BY author_lname;

SELECT author_lname FROM books ORDER BY author_lname DESC;

SELECT DISTINCT author_lname 
FROM books
ORDER BY author_lname;

SELECT title FROM books ORDER BY title;

SELECT released_year FROM books ORDER BY released_year;

SELECT title, released_year, pages 
FROM books
ORDER BY released_year;

SELECT title, pages 
FROM books
ORDER BY released_year;

--ORDER BY pode ser por coluna (indica-se o nº da coluna)

SELECT title, author_fname, author_lname
FROM books 
ORDER BY 2;

SELECT author_fname, author_lname
FROM books
ORDER BY author_lname, author_fname;

--
--LIMIT
--

--Limita a saída (é o último parâmetro da sentença sempre)

SELECT title, released_year 
FROM books
ORDER BY released_year DESC
LIMIT 5;

--
--LIKE
-- 

SELECT title, author_fname 
FROM books
WHERE author_fname LIKE '%da%';

SELECT title
FROM books
WHERE title LIKE '%the%';

SELECT title, stock_quantity
FROM books
WHERE stock_quantity LIKE '%';  --Returns all data

SELECT title, stock_quantity
FROM books
WHERE stock_quantity LIKE '____';  --'_' retorna nº dígitos

SELECT title, stock_quantity
FROM books
WHERE stock_quantity LIKE '___';  --Retorna estoque com centenas

--E no caso de procurarmos algo com '%' ou '_'?
--Usar '\%' e '\_'

SELECT  title
FROM books
WHERE title LIKE '%\%%';

SELECT title
FROM books
WHERE title LIKE '%\_%';


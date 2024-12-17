--Complete MySQL Begginer to Expert
--Aggregate Functions

--Escolhendo o db

USE library;

--
--COUNT
--
--Quantos livros cadastrados?

SELECT COUNT(*) FROM books;

--Quantos author_fnames?

SELECT COUNT(DISTINCT(author_fname)) FROM books;  --12

--Quantos autores têm na tabela? (fname+lname)

SELECT COUNT(DISTINCT(
    CONCAT(author_fname, ' ', author_lname)
)) AS 'number of distinct authors'
FROM books;

SELECT COUNT(DISTINCT author_fname, author_lname) 
FROM books;  --Mais fácil e rápido!

--Quantos livros contêm 'The'

SELECT COUNT(*)
FROM books
WHERE title LIKE '%The%';

--
--GROUP BY
--

SELECT author_lname, COUNT(*) 
FROM books
GROUP BY author_lname;

SELECT author_fname, author_lname, COUNT(*)
FROM books
GROUP BY author_fname, author_lname;
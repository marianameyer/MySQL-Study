--Complete MySQL Begginer to Expert
--STRING FUNCTIONS EXERCISES

--Escolhendo o database

SHOW DATABASES;

USE library;

--Reverse and Uppercase the following sentence
--'Why does my cat look at me with such hatred?'

SELECT REVERSE(
    UPPER('Why does my cat look at me with such hatred?')
) AS 'what???';

--Replace ' ' in titles with '->'

SELECT 
    REPLACE(title, ' ', '->') AS 'new_title'
FROM books;

--Print out the last name forwards and backwards

SELECT 
    author_lname AS 'forwards',
    REVERSE(author_lname) AS 'backwards'
FROM books;

--Print the full authors name in caps

SELECT CONCAT(
    UPPER(author_fname),
    ' ',
    UPPER(author_lname)
    ) AS 'full name in caps'
FROM books;

SELECT
    UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps'
FROM books;

--Print the title + 'was released in ' + year
--column name: blurb

SELECT CONCAT(
    title,
    ' was released in ',
    released_year
    ) AS 'burb'
FROM books;

--Print book titles and the lengthof each title

SELECT title,
        CHAR_LENGTH(title) AS 'character count'
FROM books;

--Print short title(...), author(l_name, f_name), 
--quantity (nº 'in stock')

SELECT 
    CONCAT(
        SUBSTRING(title, 1, 10), '...'
    ) AS 'title',
    CONCAT(
        author_lname, ', ', author_fname
    ) AS 'author',
    CONCAT(
        stock_quantity, ' in stock.'
    ) AS 'quantity'
FROM books;
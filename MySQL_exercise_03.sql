--MySQL Begginer to Expert
--Exercises

--Escolhendo o db

USE library;

--Select all story collections: titles tha contain 'stories'

SELECT title
FROM books
WHERE title LIKE '%stor%';

--Find the longest book: print out the title and page count

SELECT title, pages 
FROM books
ORDER BY pages DESC
LIMIT 1;

--Print a summary containing the title and year, for the
--3 most recent books

SELECT 
    CONCAT(
        title,
        ' - ',
        released_year
    ) AS 'summary'
FROM books
ORDER BY released_year DESC
LIMIT 3;

--Find all the books with an author_lname that contains
--a space(' ')

SELECT title, author_lname
FROM books
WHERE author_lname LIKE '% %';

--Find the 3 books with the lowest stock
--Select title, year and stock

SELECT title, released_year, stock_quantity
FROM books
ORDER BY stock_quantity, title
LIMIT 3;

--Print title and author_lname, sorted first by author_lname
--and then by title

SELECT title, author_lname
FROM books
ORDER BY author_lname, title;

--Print out 
--'MY FAVORITE AUTHOR IS "AUTHOR_FNAME AUTHOR_LNAME"!'
--for each book in the table AS 'yell'
--ordered by last name

SELECT
    UPPER(
        CONCAT(
            'My favorite author is ',
            author_fname,
            ' ',
            author_lname,
            '!'
        )
    ) AS 'yell'
FROM books
ORDER BY author_lname;

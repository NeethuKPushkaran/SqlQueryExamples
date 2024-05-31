/*Set up a SQL Server database with a table for storing information about books, including fields like book title, author and publication year.

Create the book table using DDL.*/


CREATE TABLE books(
	book_id INT PRIMARY KEY,
	book_title VARCHAR(200),
	book_author VARCHAR(100),
	book_publication_year INT
);

/*Insert several sample book records using DML.*/

INSERT INTO books(book_id, book_title, book_author, book_publication_year)
VALUES
	(1, 'To Kill a Mockingbird', 'Harper Lee', 1960),
	(2, '1984', 'George Orwell', 1949),
	(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925),
	(4, 'Pride and Prejudice', 'James Austen', 1813),
	(5, 'The Catcher in the Rye', 'J. D. Salinger', 1951),
	(6, 'The Alchemist', 'Paulo Coelho', 1988),
	(7, 'My Journey', 'APJ Abdul Kalam', 2013),
	(8, 'Eternal India', 'Indira Gandhi', 1978),
	(9, 'Unbreakable', 'Mary Kom', 2013),
	(10, 'My Experiments with Truth', 'M. K. Gandhi', 1925),
	(11, 'Brida', 'Paulo Coelho', 1990);

/*Retrieve books published in a specific year using DQL:*/

SELECT *
FROM books
WHERE book_publication_year > 1960;

/*Use the WHERE clause to filter books by author's name*/

SELECT *
FROM books
WHERE book_author = 'Paulo Coelho';

/*Apply DISTINCT to retrieve a list of unique authors from the table.*/

SELECT DISTINCT book_author
FROM books;


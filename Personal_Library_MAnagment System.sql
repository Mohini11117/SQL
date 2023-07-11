
/*Create database ,table */

create database Personal_Library_Managment;
use Personal_Library_Managment;
create table Books (book_ID int, title varchar(50), author varchar(50), genre varchar(50), publication varchar(50), year date );

Create table Author (author_ID Int, author_name varchar(70), nationality varchar(50));
create table Genre(Genre_Id int, genre_name varchar(50));
create table User(User_ID int, User_name varchar(50),book_ID int,genre_id INT,Borrow_book_Date date,Return_book_Date date);
select * from books;
select* from User;
select * from Genre;
select * from Author;


/*Insert Values*/
INSERT INTO books (book_id, title, author_id, genre_id, publication)
VALUES (1,'subtle art of not giving F*ck',3,3,1989),
(2,'Wings OF Fire',2,3,1989),

(3, 'The Catcher in the Rye', 5, 1, 1951),
       (4, 'Harry Potter and the Sorcerer''s Stone', 6, 1, 1997),
       (5, 'The Hobbit', 7, 5, 1937);

INSERT INTO uthor (author_id, author_name)
VALUES (3, 'J.K. Rowling'),
       (2, 'APJ kalam'),
       (5, 'Agatha Christie'),
       (6, 'Mark Twain'),
       (7, 'William Shakespeare');

INSERT INTO Genre (Genre_id, genre_name)
VALUES (1, 'Mystery'),
       (2, 'Science Fiction'),
       (3, 'Thriller'),
       (4, 'Historical Fiction'),
       (5, 'Biography');
       
INSERT INTO User (User_ID, User_name, book_ID, genre_id, Borrow_book_Date, Return_book_Date)
VALUES
  (1, 'Komal', 3, 1, '2023-07-01', '2023-07-15'),
  (2, 'Sejal', 2, 2, '2023-07-02', '2023-07-14'),
  (3, 'Saurabh', 5, 3, '2023-07-03', '2023-07-13'),
  (4, 'Gayatri', 4, 4, '2023-07-04', '2023-07-12'),
  (5, 'Mohini', 1, 1, '2023-07-05', '2023-07-11');
  
  






/*Alter delete update table*/
ALTER TABLE books
ADD COLUMN author_id INT;
ALTER TABLE books
DROP COLUMN author;
ALTER TABLE books
ADD COLUMN Genre_id int ;
ALTER TABLE books
DROP COLUMN genre;
ALTER TABLE Author
ADD COLUMN Genre_id INT;
Alter table books
drop column year;
Alter table Author
drop column Genre_id;


/* updating Multiple Rows*/
UPDATE Author
SET nationality = CASE
    WHEN Author_Id = 3 THEN 'UK'
    WHEN Author_Id = 5 THEN 'Russian'
    when Author_Id=6 then 'usa'
     when Author_Id=7 then 'us'
    ELSE 'roman'
  END
WHERE Author_Id IN (3, 5,6,7);




/*Analysis the DAta*/
select * from books;
select count(*) from books;
select distinct title from books;
select * from user;
select User_name from User 
join books on User.book_id=books.book_id
where title='wings of fire';

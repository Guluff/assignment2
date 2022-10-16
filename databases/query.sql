Select * from labels;
SELECT Last_Name, First_name, Title from authors inner join books on authors.AuthorID = books.AuthorID;
Select name, role, title from characters inner join books on books.BooksID = characters.BooksID;
select title, genre, age_rating from books inner join labels on labels.LabelID = books.labelID;
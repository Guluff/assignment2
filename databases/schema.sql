/*
DROP TABLE Characters;
DROP TABLE Books;
DROP TABLE Authors;
DROP TABLE Labels;
*/

CREATE TABLE Authors(
   AuthorID INT,
   Last_Name VARCHAR(50),
   First_name VARCHAR(50),
   Age INT,
   PRIMARY KEY(AuthorID)
);

CREATE TABLE Labels(
   LabelID INT,
   Genre VARCHAR(50),
   Age_Rating INT,
   Audience VARCHAR(50),
   PRIMARY KEY(LabelID)
);

CREATE TABLE Books(
   BooksID INT,
   Title VARCHAR(50) NOT NULL,
   LabelID INT NOT NULL,
   AuthorID INT NOT NULL,
   PRIMARY KEY(BooksID),
   FOREIGN KEY(LabelID) REFERENCES Labels(LabelID),
   FOREIGN KEY(AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Characters(
   CharacterID INT,
   Name VARCHAR(50),
   Role VARCHAR(50),
   BooksID INT NOT NULL,
   PRIMARY KEY(CharacterID),
   FOREIGN KEY(BooksID) REFERENCES Books(BooksID)
);

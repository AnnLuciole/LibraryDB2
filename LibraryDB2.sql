--
-- ???? ???????????? ? ??????? SQLiteStudio v3.3.3 ? ?? ??? 13 14:55:56 2022
--
-- ?????????????? ????????? ??????: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- ???????: Authors
CREATE TABLE Authors (authorsID INT NOT NULL, authorsName STRING NOT NULL, PRIMARY KEY (authorsID));
INSERT INTO Authors (authorsID, authorsName) VALUES (1, '??? ???????');
INSERT INTO Authors (authorsID, authorsName) VALUES (2, '????????? ???');

-- ???????: Books
CREATE TABLE Books (bookID INT NOT NULL, bookName STRING NOT NULL, bookAuthor INT NOT NULL REFERENCES Authors (authorsID), yearOfRelease INT, genre INT REFERENCES Genres, PRIMARY KEY (bookID));
INSERT INTO Books (bookID, bookName, bookAuthor, yearOfRelease, genre) VALUES (1, '????????????? ???? ? ???????. ????????????? ????? ? ?????? ? ????????????? ? ?????????? ?????????????', 1, 2021, 11);
INSERT INTO Books (bookID, bookName, bookAuthor, yearOfRelease, genre) VALUES (2, '???????', 2, 1960, 12);

-- ???????: Genres
CREATE TABLE Genres (genre STRING, genre_id INT PRIMARY KEY);
INSERT INTO Genres (genre, genre_id) VALUES ('????', 11);
INSERT INTO Genres (genre, genre_id) VALUES ('??????????', 12);

-- ??????: bookID
CREATE UNIQUE INDEX bookID ON Books (bookID);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;

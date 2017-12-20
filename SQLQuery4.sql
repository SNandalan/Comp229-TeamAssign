USE [Comp229TeamAssign]

SET IDENTITY_INSERT Books ON
--Books
INSERT INTO Comp229TeamAssign.[dbo].Books (ISBN, BookTitle, Author, Genre, Format, Rating)
VALUES (978038551,'Origin: A Novel','Dan Brown','Thriller','Hardcover', 4.9 )

INSERT INTO Comp229TeamAssign.[dbo].Books (ISBN, BookTitle, Author, Genre, Format, Rating)
VALUES (978000820, 'Under an Amber Sky', 'Rose Alexander', 'Romance', 'Electronic', 4)

INSERT INTO Comp229TeamAssign.[dbo].Books (ISBN, BookTitle, Author, Genre, Format, Rating)
VALUES (978000825, 'Behind the Lie', 'Amanda James', 'Fiction', 'Kindle', 3.6)

INSERT INTO Comp229TeamAssign.[dbo].Books (ISBN, BookTitle, Author, Genre, Format, Rating)
VALUES (978198886, 'Still Anonymous', 'Vincent Scarsella', 'Crime', 'Paperback', 4)

INSERT INTO Comp229TeamAssign.[dbo].Books (ISBN, BookTitle, Author, Genre, Format, Rating)
VALUES (978038554,'The Rooster Bar','John Grisham', 'Thriller', 'Hardcover', 4.7)

INSERT INTO Comp229TeamAssign.[dbo].Books (ISBN, BookTitle, Author, Genre, Format, Rating)
VALUES (978000812, 'The Cows', 'Dawn Porter', 'Humour', 'Hardcover', 3.9)

SET IDENTITY_INSERT Books  OFF
SET IDENTITY_INSERT Authors  ON
--Authors
INSERT INTO Comp229TeamAssign.[dbo].Authors (AuthorID, LastName, FirstName, BookTitle,ISBN, Publisher)
VALUES (10001, 'Brown', 'Dan', 'Origin: A Novel', 978038551,'Doubleday Publishing Group')

INSERT INTO Comp229TeamAssign.[dbo].Authors (AuthorID, LastName, FirstName, BookTitle,ISBN, Publisher)
VALUES (10002, 'Alexander', 'Rose', 'Under an Amber Sky',978000820, 'HaperCollins')

INSERT INTO Comp229TeamAssign.[dbo].Authors (AuthorID, LastName, FirstName, BookTitle,ISBN, Publisher)
VALUES (10003, 'James', 'Amanda', 'Behind the Lie', 978000825,'HaperCollins')

INSERT INTO Comp229TeamAssign.[dbo].Authors (AuthorID, LastName, FirstName, BookTitle,ISBN, Publisher)
VALUES (10004, 'Scarsella', 'Vincent', 'Still Anonymous', 978198886,'Digital Crime Fiction')

INSERT INTO Comp229TeamAssign.[dbo].Authors (AuthorID, LastName, FirstName, BookTitle,ISBN, Publisher)
VALUES (10005, 'Grisham', 'John', 'The Rooster Bar', 978038554,'Penguin Random House')

INSERT INTO Comp229TeamAssign.[dbo].Authors (AuthorID, LastName, FirstName, BookTitle,ISBN, Publisher)
VALUES (10006, 'Porter', 'Dawn', 'The Cows',978000812, 'Hachette Livre')


SET IDENTITY_INSERT Authors OFF
SET IDENTITY_INSERT Publisher  ON
--Publisher
INSERT INTO Comp229TeamAssign.[dbo].Publisher (PublisherID, PublisherName, BookTitle, AuthorID, PubDate)
VALUES (11001, 'Doubleday Publishing Group', 'Origin: A Novel',10001, '2017-10-03')

INSERT INTO Comp229TeamAssign.[dbo].Publisher (PublisherID, PublisherName, BookTitle, AuthorID,PubDate)
VALUES (11002, 'HaperCollins', 'Under an Amber Sky',10002,'2017-05-24')

INSERT INTO Comp229TeamAssign.[dbo].Publisher (PublisherID, PublisherName, BookTitle,AuthorID, PubDate)
VALUES (11003, 'HaperCollins','Behind the Lie',10003, '2017-04-21')

INSERT INTO Comp229TeamAssign.[dbo].Publisher (PublisherID, PublisherName, BookTitle,AuthorID, PubDate)
VALUES (11004, 'Digital Crime Fiction', 'Still Anonymous',10004, '2017-10-15')

INSERT INTO Comp229TeamAssign.[dbo].Publisher (PublisherID, PublisherName, BookTitle, AuthorID,PubDate)
VALUES (11005, 'Penguin Random House', 'The Rooster Bar',10005, '2017-10-24')

INSERT INTO Comp229TeamAssign.[dbo].Publisher (PublisherID, PublisherName, BookTitle,AuthorID, PubDate)
VALUES (11006, 'Hachette Livre', 'The Cows', 10006,'2017-04-06')


SET IDENTITY_INSERT Publisher  OFF
SET IDENTITY_INSERT Cost  ON
--Cost
INSERT INTO Comp229TeamAssign.[dbo].Cost (CostID, BookTitle, ISBN, Price, Store)
VALUES (12001, 'Origin: A Novel', 38.50,978038551, 'Indigo')

INSERT INTO Comp229TeamAssign.[dbo].Cost (CostID, BookTitle,ISBN, Price, Store)
VALUES (12002, 'Under an Amber Sky', 4.99,978000820, 'Amazon')

INSERT INTO Comp229TeamAssign.[dbo].Cost (CostID, BookTitle,ISBN, Price, Store)
VALUES (12003, 'Behind the Lie', 3.99,978000825, 'Kindle')

INSERT INTO Comp229TeamAssign.[dbo].Cost (CostID, BookTitle,ISBN, Price, Store)
VALUES (12004, 'Still Anonymous', 12.96,978198886, 'Google Store')

INSERT INTO Comp229TeamAssign.[dbo].Cost (CostID, BookTitle, ISBN,Price, Store)
VALUES (12005, 'The Rooster Bar', 27.50, 978038554,'Indigo')

INSERT INTO Comp229TeamAssign.[dbo].Cost (CostID, BookTitle,ISBN, Price, Store)
VALUES (12006, 'The Cows', 20.12,978000812, 'Amazon')
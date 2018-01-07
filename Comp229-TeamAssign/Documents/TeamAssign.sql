USE [Comp229TeamAssign]

/* Object: Table Comp229TeamAssign.[dbo].[Books] */
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Comp229TeamAssign.[dbo].[Books](
	[ISBN] [varchar] IDENTITY (15) NOT NULL,
	[BookTitle] [varchar](50) NOT NULL,  
	[Author] [varchar](50) NOT NULL,
        [Genre] [varchar](50) NOT NULL,
        [Format] [varchar](50) NOT NULL,       
	[Rating] [decimal](2, 1) NOT NULL,
 CONSTRAINT [PK_ISBN] PRIMARY KEY CLUSTERED 
(
	[ISBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/* Object: Table Comp229TeamAssign.[dbo].[Authors] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Comp229TeamAssign.[dbo].[Authors](
	[AuthorID] [int] IDENTITY NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
        [BookTitle] [varchar](50) NOT NULL,
        [Publisher] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

CREATE TABLE Comp229TeamAssign.[dbo].[Publisher](
	[PublisherID] [int] IDENTITY NOT NULL,
	[PublisherName] [varchar](50) NOT NULL,
        [BookTitle] [varchar](50) NOT NULL,
        [PubDate] [date] NOT NULL,
 CONSTRAINT [PK_Publisher] PRIMARY KEY CLUSTERED 
(
	[PublisherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

CREATE TABLE Comp229TeamAssign.[dbo].[Cost](
	[CostID] [int] IDENTITY NOT NULL,
	[BookTitle] [varchar](50) NOT NULL,
	[Price] [decimal](5,2) NOT NULL,
        [Store] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cost] PRIMARY KEY CLUSTERED 
(
	[Cost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

ALTER TABLE Comp229TeamAssign.[dbo].Cost
ADD CONSTRAINT FK_Cost_BookTitle FOREIGN KEY (BookTitle) REFERENCES Books(BookTitle)

ALTER TABLE Comp229TeamAssign.[dbo].Authors
ADD CONSTRAINT FK_Authors_BookTitle FOREIGN KEY (BookTitle) REFERENCES Books(BookTitle)

ALTER TABLE Comp229TeamAssign.[dbo].Publisher
ADD CONSTRAINT FK_Publisher_PublisherName FOREIGN KEY (PublisherName) REFERENCES Authors(Publisher)

--Authors
INSERT INTO Comp229TeamAssign.[dbo].Authors (AuthorID, LastName, FirstName, BookTitle, Publisher)
VALUES (10001, 'Brown', 'Dan', 'Origin: A Novel', 'Doubleday Publishing Group')

INSERT INTO Comp229TeamAssign.[dbo].Authors (AuthorID, LastName, FirstName, BookTitle, Publisher)
VALUES (10002, 'Alexander', 'Rose', 'Under an Amber Sky', 'HaperCollins')

INSERT INTO Comp229TeamAssign.[dbo].Authors (AuthorID, LastName, FirstName, BookTitle, Publisher)
VALUES (10003, 'James', 'Amanda', 'Behind the Lie', 'HaperCollins')

INSERT INTO Comp229TeamAssign.[dbo].Authors (AuthorID, LastName, FirstName, BookTitle, Publisher)
VALUES (10004, 'Scarsella', 'Vincent', 'Still Anonymous', 'Digital Crime Fiction')

INSERT INTO Comp229TeamAssign.[dbo].Authors (AuthorID, LastName, FirstName, BookTitle, Publisher)
VALUES (10005, 'Grisham', 'John', 'The Rooster Bar', 'Penguin Random House')

INSERT INTO Comp229TeamAssign.[dbo].Authors (AuthorID, LastName, FirstName, BookTitle, Publisher)
VALUES (10006, 'Porter', 'Dawn', 'The Cows', 'Hachette Livre')

--Books
INSERT INTO Comp229TeamAssign.[dbo].Books (ISBN, BookTitle, Author, Genre, Format, Rating)
VALUES ('9780385514231','Origin: A Novel','Dan Brown','Thriller','Hardcover', 4.9 )

INSERT INTO Comp229TeamAssign.[dbo].Books (ISBN, BookTitle, Author, Genre, Format, Rating)
VALUES ('9780008206840', 'Under an Amber Sky', 'Rose Alexander', 'Romance', 'Electronic', 4)

INSERT INTO Comp229TeamAssign.[dbo].Books (ISBN, BookTitle, Author, Genre, Format, Rating)
VALUES ('9780008258818', 'Behind the Lie', 'Amanda James, 'Fiction', 'Kindle', 3.6)

INSERT INTO Comp229TeamAssign.[dbo].Books (ISBN, BookTitle, Author, Genre, Format, Rating)
VALUES ('9781988863290', 'Still Anonymous', 'Vincent Scarsella', 'Crime', 'Paperback', 4)

INSERT INTO Comp229TeamAssign.[dbo].Books (ISBN, BookTitle, Author, Genre, Format, Rating)
VALUES ('9780385541176','The Rooster Bar','John Grisham', 'Thriller', 'Hardcover', 4.7)

INSERT INTO Comp229TeamAssign.[dbo].Books (ISBN, BookTitle, Author, Genre, Format, Rating)
VALUES ('9780008126032', 'The Cows', 'Dawn Porter', 'Humour', 'Hardcover', 3.9)

--Publisher
INSERT INTO Comp229TeamAssign.[dbo].Publisher (PublisherID, PublisherName, BookTitle, PubDate)
VALUES (11001, 'Doubleday Publishing Group', 'Origin: A Novel', '2017-10-03')

INSERT INTO Comp229TeamAssign.[dbo].Publisher (PublisherID, PublisherName, BookTitle, PubDate)
VALUES (11002, 'HaperCollins', 'Under an Amber Sky', '2017-05-24')

INSERT INTO Comp229TeamAssign.[dbo].Publisher (PublisherID, PublisherName, BookTitle, PubDate)
VALUES (11003, 'HaperCollins','Behind the Lie', '2017-04-21')

INSERT INTO Comp229TeamAssign.[dbo].Publisher (PublisherID, PublisherName, BookTitle, PubDate)
VALUES (11004, 'Digital Crime Fiction', 'Still Anonymous', '2017-10-15')

INSERT INTO Comp229TeamAssign.[dbo].Publisher (PublisherID, PublisherName, BookTitle, PubDate)
VALUES (11005, 'Penguin Random House', 'The Rooster Bar', '2017-10-24')

INSERT INTO Comp229TeamAssign.[dbo].Publisher (PublisherID, PublisherName, BookTitle, PubDate)
VALUES (11006, 'Hachette Livre', 'The Cows', '2017-04-06')

--Cost
INSERT INTO Comp229TeamAssign.[dbo].Cost (CostID, BookTitle, Price, Store)
VALUES (12001, 'Origin: A Novel', 38.50, 'Indigo')

INSERT INTO Comp229TeamAssign.[dbo].Cost (CostID, BookTitle, Price, Store)
VALUES (12002, 'Under an Amber Sky', 4.99, 'Amazon')

INSERT INTO Comp229TeamAssign.[dbo].Cost (CostID, BookTitle, Price, Store)
VALUES (12003, 'Behind the Lie', 3.99, 'Kindle')

INSERT INTO Comp229TeamAssign.[dbo].Cost (CostID, BookTitle, Price, Store)
VALUES (12004, 'Still Anonymous', 12.96, 'Google Store')

INSERT INTO Comp229TeamAssign.[dbo].Cost (CostID, BookTitle, Price, Store)
VALUES (12005, 'The Rooster Bar', 27.50, 'Indigo')

INSERT INTO Comp229TeamAssign.[dbo].Cost (CostID, BookTitle, Price, Store)
VALUES (12006, 'The Cows', 20.12, 'Amazon')

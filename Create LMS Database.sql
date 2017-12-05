If Exists (Select * From sys.sysdatabases Where [name] = 'LibraryManagementSystem')
Drop Database LibraryManagementSystem
Go

Create Database LibraryManagementSystem
Go

Use LibraryManagementSystem
Go

Create Table Book
	(BookID int not null,
	Title nvarchar(255) not null,
	PublisherName nvarchar(255) null)
Go
	
Insert Into Book (BookID, Title, PublisherName)
Values (1, 'The Lost tribe', 'Extreme Books'),
		(2, 'Binky Bonks Cablooey Booey Adventure', 'Kids Read Too'),
		(3, 'Binky Bonk Goes To HollyRude', 'Kids Read Too'),
		(4, 'Binky Bonk Gets A New Toy', 'Kids Read Too'),
		(5, 'Bob Clancys Light Scatter 7', 'Adults Read As Well'),
		(6, 'Dangerous Depths', 'Adults Read As Well'),
		(7, 'Bewildered', 'LightHouse Books'),
		(8, 'A Stones Throw From Death', 'Gutenberg Books'),
		(9, 'How To Build A Database', 'The Tech Academy'),
		(10, 'How To Keep Students On Track', 'The Tech Academy'),
		(11, 'SoapBox Derby For Goofballs', 'How To Do It Books'),
		(12, 'The Lost Tribe 2: Avoiding Right Excluding Join', 'Extreme Books'),
		(13, 'The Lost Tribe 3: Accepting Full Outer Join', 'Extreme Books'),
		(14, 'Cooking With Lasers', 'Bon Apetit'),
		(15, 'Workplace Etiquette', 'Strong Books'),
		(16, 'Incubation', 'Stargate Books'),
		(17, 'Muhblazopan', 'Pharmasuiticals'),
		(18, 'Girls Chase Boys Chase Girls', 'Hashtag Books'),
		(19, 'Fifty Shades Of Black Magic', 'Fantasy The Gathering'),
		(20, 'Books For Dumb-Dumbs', 'How To Do It Books')
Go
		
Create Table Book_Authors
	(BookID int not null,
	AuthorName nvarchar(255) not null)
Go
	
Insert Into Book_Authors (BookID, AuthorName)
Values (1, 'Bill Dougan'),
		(2, 'Sarah Epstein'),
		(3, 'Sarah Epstein'),
		(4, 'Sarah Epstein'),
		(5, 'Bob Clancy'),
		(6, 'Bob Clancy'),
		(7, 'Anna Marinara'),
		(8, 'Johannes Beethoven'),
		(9, 'Derik Pross'),
		(10, 'Derik Pross'),
		(11, 'Kevin Robinson'),
		(12, 'Bill Dougan'),
		(13, 'Bill Dougan'),
		(14, 'Ellon Ramsy'),
		(15, 'Jerry MaCguire'),
		(16, 'Kurt Wrussel'),
		(17, 'Tyler Dirden'),
		(18, 'Jaykay Elohel'),
		(19, 'Stephen King'),
		(20, 'Sean Cannery')
Go
		
Create Table Publisher
	(Name nvarchar(255),
	[Address] nvarchar(255),
	Phone bigint)
Go
	
Insert Into Publisher (Name)
Values ('Extreme Books'),
		('Kids Read Too'),
		('Adults Read As Well'),
		('LightHouse Books'),
		('Gutenberg Books'),
		('The Tech Academy'),
		('How To Do It Books'),
		('Bon Apetit'),
		('Strong Books'),
		('Star Gate Books'),
		('Pharmasuiticals'),
		('Hashtag Books'),
		('Fantasy The Gathering')
Go
		
Create Table Book_Copies
	(BookID int not null,
	BranchID int not null,
	No_Of_Copies int not null)
Go
	
Insert Into Book_Copies (BookID, BranchID, No_Of_Copies)
Values (1, 1, 2),
		(2, 1, 2),
		(3, 1, 2),
		(4, 1, 2),
		(5, 1, 2),
		(6, 1, 2),
		(7, 1, 2),
		(8, 1, 2),
		(9, 1, 2),
		(10, 1, 2),
		(11, 1, 0),
		(12, 1, 0),
		(13, 1, 0),
		(14, 1, 0),
		(15, 1, 0),
		(16, 1, 0),
		(17, 1, 0),
		(18, 1, 0),
		(19, 1, 0),
		(20, 1, 0),
		(1, 2, 0),
		(2, 2, 0),
		(3, 2, 0),
		(4, 2, 0),
		(5, 2, 0),
		(6, 2, 0),
		(7, 2, 0),
		(8, 2, 0),
		(9, 2, 0),
		(10, 2, 0),
		(11, 2, 2),
		(12, 2, 2),
		(13, 2, 2),
		(14, 2, 2),
		(15, 2, 2),
		(16, 2, 2),
		(17, 2, 2),
		(18, 2, 3),
		(19, 2, 4),
		(20, 2, 5), 
		(1, 3, 2),
		(2, 3, 2),
		(3, 3, 2),
		(4, 3, 2),
		(5, 3, 2),
		(6, 3, 2),
		(7, 3, 2),
		(8, 3, 2),
		(9, 3, 2),
		(10, 3, 2),
		(11, 3, 2),
		(12, 3, 2),
		(13, 3, 2),
		(14, 3, 2),
		(15, 3, 2),
		(16, 3, 2),
		(17, 3, 2),
		(18, 3, 3),
		(19, 3, 4),
		(20, 3, 5),
		(1, 4, 1),
		(2, 4, 1),
		(3, 4, 1),
		(4, 4, 2),
		(5, 4, 1),
		(6, 4, 2),
		(7, 4, 1),
		(8, 4, 2),
		(9, 4, 1),
		(10, 4, 2),
		(11, 4, 1),
		(12, 4, 2),
		(13, 4, 1),
		(14, 4, 2),
		(15, 4, 3),
		(16, 4, 2),
		(17, 4, 1),
		(18, 4, 3),
		(19, 4, 4),
		(20, 4, 5),
		(1, 5, 1),
		(2, 5, 1),
		(3, 5, 1),
		(4, 5, 2),
		(5, 5, 1),
		(6, 5, 2),
		(7, 5, 1),
		(8, 5, 2),
		(9, 5, 1),
		(10, 5, 2),
		(11, 5, 1),
		(12, 5, 2),
		(13, 5, 1),
		(14, 5, 2),
		(15, 5, 3),
		(16, 5, 2),
		(17, 5, 1),
		(18, 5, 3),
		(19, 5, 4),
		(20, 5, 5)
Go
		
Create Table Book_Loans
	(BookID int not null,
	BranchID int not null,
	CardNo int not null,
	DateOut date not null,
	DueDate date not null)
Go
	
Insert Into Book_Loans (BookID, BranchID, CardNo, DateOut, DueDate)
Values (19, 2, 1, '2015-12-10', '2016-03-10'),
		(19, 2, 1, '2015-12-10', '2016-03-10'),
		(10, 1, 1, '2016-05-22', '2016-08-22'),
		(9, 1, 1, '2016-05-22', '2016-08-22'),
		(5, 1, 1, '2016-05-22', '2016-08-22'),
		(14, 2, 3, '2016-02-19', '2016-05-19'),
		(1, 1, 3, '2016-03-24', '2016-06-24'),
		(2, 1, 3, '2016-03-24', '2016-06-24'),
		(3, 1, 3, '2016-03-24', '2016-06-24'),
		(4, 1, 3, '2016-03-24', '2016-06-24'), --10 loans--
		(5, 1, 4, '2012-01-13', '2012-04-13'),
		(6, 1, 5, '2010-10-31', '2011-01-31'),
		(7, 1, 6, '2011-11-11', '2012-02-11'),
		(8, 1, 7, '2013-04-04', '2013-07-04'),
		(9, 1, 8, '2014-06-21', '2014-09-21'),
		(10, 1, 9, '2009-12-07', '2010-03-07'),
		(11, 2, 10, '2012-12-12', '2013-03-12'),
		(12, 2, 10, '2012-12-12', '2013-03-12'),
		(13, 2, 10, '2012-12-12', '2013-03-12'),
		(14, 2, 11, '2014-08-16', '2014-11-16'), --20 loans--
		(15, 2, 12, '2014-09-22', '2014-12-22'),
		(16, 2, 12, '2014-09-22', '2014-12-22'),
		(17, 2, 13, '2015-11-29', '2016-02-29'),
		(18, 2, 14, '2007-12-13', '2008-03-13'),
		(18, 2, 14, '1992-07-19', '1992-10-19'),
		(20, 2, 1, '2009-01-11', '2009-04-11'),
		(1, 1, 4, '2016-02-22', '2016-05-22'),
		(2, 1, 5, '2013-11-12', '2014-02-12'),
		(3, 1, 5, '2013-11-12', '2014-02-12'),
		(4, 1, 5, '2013-11-12', '2014-02-12'), --30 loans--
		(5, 1, 9, '2013-10-15', '2014-01-15'),
		(6, 1, 10, '2012-05-25', '2012-08-25'),
		(7, 1, 11, '2012-06-20', '2012-09-20'),
		(8, 1, 12, '2005-09-17', '2005-12-17'),
		(9, 1, 2, '2015-11-06', '2016-02-06'),
		(10, 1, 2, '2015-11-06', '2016-02-06'),
		(11, 2, 3, '2014-06-01', '2014-09-01'),
		(1, 1, 13, '2016-05-25', '2016-08-25'),
		(12, 2, 13, '2016-05-25', '2016-08-25'),
		(13, 2, 13, '2016-05-25', '2016-08-25'), --40 loans--
		(14, 2, 3, '2016-05-25', '2016-08-25'),
		(15, 2, 14, '1995-12-02', '1996-03-02'),
		(16, 2, 14, '1994-11-17', '1995-02-17'),
		(17, 2, 6, '2003-04-10', '2003-07-10'),
		(18, 2, 7, '2010-02-13', '2010-05-13'),
		(19, 2, 8, '2014-01-01', '2014-04-01'),
		(20, 2, 8, '2014-01-01', '2014-04-01'),
		(9, 1, 3, '2016-02-07', '2016-05-07'),
		(10, 1, 3, '2016-02-07', '2016-05-07'),
		(19, 2, 3, '2016-03-04', '2016-06-04'), --50 loans--
		(19, 3, 1, '2016-06-04', '2016-09-04'),
		(19, 4, 1, '2016-05-30', '2016-08-30'),
		(19, 5, 1, '2016-05-24', '2016-08-04')
Go
		
Create Table Library_Branch
	(BranchID int not null,
	BranchName nvarchar(255) not null,
	[Address] nvarchar(255) not null)
Go
	
Insert Into Library_Branch (BranchID, BranchName, [Address])
Values	(1, 'Sharpstown', '111 First Blvd'),
		(2, 'Central', '222 Second Alley'),
		(3, 'Silverston', '1110 Oak Ave'),
		(4, 'BookBooks', '1234 ABC Ave'),
		(5, 'Woodland Books', '5678 Forest Drive')
Go
		
Create Table Borrower
	(CardNo int not null,
	Name nvarchar(255) not null,
	[Address] nvarchar(255),
	Phone bigint)
Go
	
Insert Into Borrower (CardNo, Name, [Address], Phone)
Values (1, 'Stephen Harris', '111 First St', 1112223333),
		(2, 'Jenny Flipperton', '222 Second Blvd', 4445556666),
		(3, 'Bonnie Spring', '333 Thourth Ave', 7778889999),
		(4, 'Jackson Timoth', '444 Fird Drive', 1011111212),
		(5, 'Leslie Carpenter', '555 Sifth Parkway', 1311411515),
		(6, 'Larry Heart', '666 Fixth Aley', 1611711818),
		(7, 'Michael Lupu', '777 Seighth Rue', 1912022121),
		(8, 'Lincoln Lissey', '888 Eeventh Calle', 2222322424),
		(9, 'Jerome Cursey', '999 Nenth Place', 2522622727),
		(10, 'Clyde Theglyde', '1000 Tinth St', 2822923030),
		(11, 'Tony Danza', '1111 Elevendieth St', 3133233434),
		(12, 'Phil Collins', '1212 Tonight Ave', 3533633737),
		(13, 'Dexter McGuffin', '1313 Pine Grove Dr', 3833934040),
		(14, 'Halley Commit', '1414 Git St', 4144244343),
		(15, 'Steve Holt', '1515 SW Goat Ave', 4444544646)
Go
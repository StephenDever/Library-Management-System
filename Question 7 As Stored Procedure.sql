CREATE PROCEDURE GetStephenKingBooksFromCentral
AS
SELECT Book.Title, Book_Authors.AuthorName, Book_Copies.No_Of_Copies, Library_Branch.BranchName
FROM Book 
JOIN Book_Copies
ON Book.BookID = Book_Copies.BookID
JOIN Book_Authors
ON Book.BookID = Book_Authors.BookID
JOIN Library_Branch
ON Book_Copies.BranchID = Library_Branch.BranchID
Where Book_Copies.BranchID = 2 AND Book_Authors.AuthorName = 'Stephen King'
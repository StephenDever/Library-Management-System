Select Book.Title, Borrower.Name, Borrower.[Address] from Library_Branch JOIN Book_Loans
ON Library_Branch.BranchID = Book_Loans.BranchID 
JOIN Book
ON Book_Loans.BookID = Book.BookID
JOIN Borrower
ON Book_Loans.CardNo = Borrower.CardNo
WHERE Book_Loans.BranchID = 1
AND DueDate BETWEEN 
   CAST(GETDATE() AS DATE) AND DATEADD(DAY, 1, CAST(GETDATE() AS DATE))

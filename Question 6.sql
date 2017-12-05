/* Retrieve the names, addresses, and number of books checked out for all borrowers who have more
than five books checked out. */
SELECT Borrower.Name, Borrower.[Address], COUNT(Book_Loans.CardNo) AS No_Of_Books_Checked_Out
FROM Borrower JOIN Book_Loans
ON Borrower.CardNo = Book_Loans.CardNo
WHERE Book_Loans.DueDate > GETDATE()
GROUP BY Borrower.CardNo, Borrower.Name, Borrower.[Address]
HAVING COUNT(Book_Loans.CardNo) > 5

/* Retrieve the names of all borrowers who do not have any books checked out. */
SELECT * FROM Borrower LEFT JOIN Book_Loans
ON Borrower.CardNo = Book_Loans.CardNo
WHERE Book_Loans.CardNo IS NULL

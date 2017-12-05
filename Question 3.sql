SELECT * FROM Borrower LEFT JOIN Book_Loans
ON Borrower.CardNo = Book_Loans.CardNo
WHERE Book_Loans.CardNo IS NULL
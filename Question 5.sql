/* For each library branch, retrieve the branch name and the total number of books loaned out from
that branch. */
SELECT Library_Branch.BranchName, COUNT(Book_Loans.BranchID) AS Total_Books_Out 
FROM Book_Loans JOIN Library_Branch 
ON Book_Loans.BranchID = Library_Branch.BranchID 
WHERE DueDate > GETDATE()
GROUP BY Library_Branch.BranchName
--If there are no books out, that branch will not return a record.--

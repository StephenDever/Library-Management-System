Select Library_Branch.BranchName, Book_Copies.No_Of_Copies 
From Library_Branch
 Join Book_Copies On (Book_Copies.BranchID = Library_Branch.BranchID)
Where (Book_Copies.BookID = 1) 
Select Library_Branch.BranchName, Book.Title, Book_Copies.No_Of_Copies 
From Book_Copies 
Join Book On (Book_Copies.BookID = Book.BookID)
Join Library_Branch on (Book_Copies.BranchID = Library_Branch.BranchID)
Where (Book_Copies.BookID = 1) AND (Library_Branch.BranchID = 1)
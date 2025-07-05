-- Show books with authors
SELECT B.Title, A.Name AS Author
FROM Books B
JOIN Authors A ON B.AuthorID = A.AuthorID;

-- Currently borrowed books
SELECT M.Name AS Member, B.Title
FROM BorrowRecords R
JOIN Members M ON R.MemberID = M.MemberID
JOIN Books B ON R.BookID = B.BookID
WHERE R.ReturnDate IS NULL;

-- Borrow history
SELECT M.Name, B.Title, R.BorrowDate, R.ReturnDate
FROM BorrowRecords R
JOIN Members M ON R.MemberID = M.MemberID
JOIN Books B ON R.BookID = B.BookID;

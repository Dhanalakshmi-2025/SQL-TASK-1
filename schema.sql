create a database  
   CREATE DATABASE IF NOT EXISTS LibraryDB;
USE LibraryDB;
1.create a table books
   CREATE TABLE Books (BookID INT PRIMARY KEY,Title VARCHAR(100) NOT NULL,Author VARCHAR(100),YearPublished INT);
2.create a table members
   CREATE TABLE Members (MemberID INT PRIMARY KEY,Name VARCHAR(100) NOT NULL,Email VARCHAR(100) UNIQUE);
3.create the table Loan
   CREATE TABLE Loans(LoanID INT PRIMARY KEY,BookID INT,MemberID INT,LoanDate DATE,ReturnDate DATE,FOREIGN KEY (BookID) REFERENCES Books(BookID),
FOREIGN KEY (MemberID) REFERENCES Members(MemberID));


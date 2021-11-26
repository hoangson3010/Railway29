-- lệnh xóa database
-- DROP DATABASE IF EXISTS `Testing_System`; 
CREATE DATABASE IF NOT EXISTS `Testing_System`;
USE `Testing_System`; 

CREATE TABLE `Department` (
DepartmentID 	INT,
DepartmentName	 VARCHAR(50)
);

SELECT * FROM `Department`;

CREATE TABLE `Position` (
PositinID INT,
PositionName VARCHAR(100)
);

CREATE TABLE `Account` (
AccountID INT,
Email VARCHAR(100),
Username VARCHAR(50),
Fullname VARCHAR(50),
DepartmentID INT,
PositionidID INT,
CreateDate DATE 
);

CREATE TABLE `Group` (
GroupID INT,
GroupName VARCHAR(100),
CreatorID INT,
CreateDate DATE
);

CREATE TABLE `GroupAccount` (
GroupID INT,
AccountID INT,
JoinDate DATE 
);

CREATE TABLE `TypeQuestion`(
TypeID INT,
TypeName VARCHAR(100)
);

CREATE TABLE `CategoryQuestion` (
CategoryID INT,
CategoryName VARCHAR(100)
);

CREATE TABLE `Question` (
QuestionID INT,
Content VARCHAR(100),
CategoryID INT,
TypeID INT,
CreatorID INT,
CreateDate DATE 
);

CREATE TABLE `Answer` (
AnswerID INT,
Content VARCHAR(100),
QuestionID INT,
isCorrect VARCHAR(50)
);

CREATE TABLE `Exam` (
ExamID INT,
`Code` INT,
Title VARCHAR(50),
CategoryID VARCHAR(50),
Duration INT,
CreatorID INT,
CreateDate DATE 
); 

CREATE TABLE `ExamQuestion` (
ExamID INT,
QuestionID INT
);


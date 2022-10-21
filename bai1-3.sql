create database QuanLySinhVien;
create table Class(
ClassID int primary key,
ClassName varchar(200),
StartDate date,
Status varchar(200)
);
create table Student(
StudentID int primary key ,
StudentName varchar(200),
Address varchar(200),
Phone int,
Status varchar(200),
ClassID int
);
create table Subject(
SubID int primary key,
SubName varchar(200),
Credit varchar(200),
Status varchar (200)
);
create table Mark(
MarkID int primary key,
SubID int,
StudentID int,
Mark varchar(200),
ExamTimes time
);
USE QuanLySinhVien;
create database abc;
use abc;
INSERT INTO Class
VALUES (1, 'A1', '2008-12-20', 1);
INSERT INTO Class
VALUES (2, 'A2', '2008-12-22', 1);
INSERT INTO Class
VALUES (3, 'B3', current_date, 0);


INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (StudentName, Address, Status, ClassId)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO Subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
       
       INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);

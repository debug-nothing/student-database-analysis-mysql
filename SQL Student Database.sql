-- create Database StudentDB;
Use StudentDB;
/*
create table Personal_info(
Student_ID INT primary Key,
Student_Name Varchar(50),
Gender Varchar(10),
DOB Date,
city varchar(50)
);

create table Acadmic_info(
Roll_No Int primary Key,
Student_ID INT,
Class Varchar(50),
Total_Marks INT,
foreign key (Student_ID) references Personal_Info(Student_ID)
);

INSERT INTO Personal_info
(Student_ID, Student_Name, Gender, DOB, City)
VALUES
(1, 'Aarav Sharma', 'Male', '2005-02-15', 'Mumbai'),
(2, 'Ananya Patil', 'Female', '2006-07-21', 'Pune'),
(3, 'Rahul Deshmukh', 'Male', '2005-11-08', 'Nashik'),
(4, 'Sneha Joshi', 'Female', '2007-04-19', 'Malegaon'),
(5, 'Aditya Kulkarni', 'Male', '2006-01-12', 'Sangli'),
(6, 'Priya Shah', 'Female', '2005-09-25', 'Mumbai'),
(7, 'Rohan More', 'Male', '2006-06-14', 'Satara'),
(8, 'Isha Mehta', 'Female', '2007-12-03', 'Pune'),
(9, 'Vivek Jadhav', 'Male', '2005-03-17', 'Nagpur'),
(10, 'Neha Pawar', 'Female', '2006-10-29', 'Nashik'),

(11, 'Arjun Chavan', 'Male', '2005-05-06', 'Malegaon'),
(12, 'Kavya Nair', 'Female', '2006-08-11', 'Mumbai'),
(13, 'Siddharth Patil', 'Male', '2007-12-22', 'Pune'),
(14, 'Pooja Shinde', 'Female', '2005-02-09', 'Sangli'),
(15, 'Omkar Gaikwad', 'Male', '2006-07-18', 'Satara'),
(16, 'Riya Desai', 'Female', '2005-05-27', 'Nashik'),
(17, 'Kunal Joshi', 'Male', '2007-09-13', 'Malegaon'),
(18, 'Aditi More', 'Female', '2006-01-30', 'Mumbai'),
(19, 'Saurabh Pawar', 'Male', '2005-10-05', 'Nagpur'),
(20, 'Simran Khan', 'Female', '2006-06-16', 'Aurangabad'),

(21, 'Yash Thakur', 'Male', '2005-03-23', 'Pune'),
(22, 'Tanvi Kulkarni', 'Female', '2007-08-07', 'Mumbai'),
(23, 'Akash Shinde', 'Male', '2006-11-19', 'Malegaon'),
(24, 'Mansi Patil', 'Female', '2005-09-02', 'Kolhapur'),
(25, 'Nikhil More', 'Male', '2006-04-14', 'Satara'),
(26, 'Sakshi Jadhav', 'Female', '2007-01-26', 'Nashik'),
(27, 'Harsh Vora', 'Male', '2005-12-12', 'Mumbai'),
(28, 'Diya Shah', 'Female', '2006-06-09', 'Pune'),
(29, 'Pranav Deshmukh', 'Male', '2007-03-28', 'Nagpur'),
(30, 'Shreya Patil', 'Female', '2005-11-15', 'Sangli'),

(31, 'Manav Joshi', 'Male', '2006-02-18', 'Malegaon'),
(32, 'Rutuja More', 'Female', '2005-07-04', 'Pune'),
(33, 'Atharva Pawar', 'Male', '2007-05-22', 'Satara'),
(34, 'Nandini Shah', 'Female', '2006-10-13', 'Nashik'),
(35, 'Tejas Jadhav', 'Male', '2005-08-29', 'Malegaon'),
(36, 'Mrunal Patil', 'Female', '2007-02-06', 'Mumbai'),
(37, 'Vedant Kulkarni', 'Male', '2006-12-17', 'Pune'),
(38, 'Sana Sheikh', 'Female', '2005-04-25', 'Aurangabad'),
(39, 'Ritesh Chavan', 'Male', '2007-06-30', 'Sangli'),
(40, 'Shivani Desai', 'Female', '2006-09-18', 'Nagpur'),

(41, 'Abhishek More', 'Male', '2005-11-02', 'Malegaon'),
(42, 'Komal Pawar', 'Female', '2007-01-16', 'Mumbai'),
(43, 'Darshan Patil', 'Male', '2006-07-24', 'Nashik'),
(44, 'Vaishnavi Joshi', 'Female', '2005-03-11', 'Kolhapur'),
(45, 'Soham Shah', 'Male', '2007-10-08', 'Sangli'),
(46, 'Radhika Jadhav', 'Female', '2006-05-19', 'Satara'),
(47, 'Akshay Deshmukh', 'Male', '2005-09-27', 'Pune'),
(48, 'Mitali Patil', 'Female', '2007-04-05', 'Mumbai'),
(49, 'Sanket More', 'Male', '2006-11-21', 'Nagpur'),
(50, 'Pallavi Shinde', 'Female', '2005-06-13', 'Nashik'),

(51, 'Aniket Pawar', 'Male', '2007-08-26', 'Malegaon'),
(52, 'Bhakti Joshi', 'Female', '2006-02-14', 'Mumbai'),
(53, 'Chinmay Patil', 'Male', '2005-12-09', 'Sangli'),
(54, 'Gauri More', 'Female', '2007-07-31', 'Kolhapur'),
(55, 'Siddhi Shah', 'Female', '2006-03-06', 'Satara'),
(56, 'Raj Chavan', 'Male', '2005-10-17', 'Nashik'),
(57, 'Anushka Desai', 'Female', '2007-05-28', 'Pune'),
(58, 'Sagar Jadhav', 'Male', '2006-09-09', 'Mumbai'),
(59, 'Madhura Patil', 'Female', '2005-01-23', 'Nagpur'),
(60, 'Rishabh Joshi', 'Male', '2007-11-07', 'Malegaon'),

(61, 'Ayesha Khan', 'Female', '2006-06-15', 'Mumbai'),
(62, 'Vinit More', 'Male', '2005-02-27', 'Pune'),
(63, 'Sonal Pawar', 'Female', '2007-09-14', 'Nashik'),
(64, 'Parth Shah', 'Male', '2006-12-01', 'Kolhapur'),
(65, 'Reshma Patil', 'Female', '2005-05-16', 'Satara'),
(66, 'Mahesh Jadhav', 'Male', '2007-03-09', 'Malegaon'),
(67, 'Ira Deshmukh', 'Female', '2006-08-20', 'Pune'),
(68, 'Nilesh More', 'Male', '2005-11-26', 'Sangli'),
(69, 'Roshni Chavan', 'Female', '2007-06-04', 'Nagpur'),
(70, 'Swapnil Joshi', 'Male', '2006-10-22', 'Nashik'),

(71, 'Sahil Patil', 'Male', '2005-04-18', 'Malegaon'),
(72, 'Maya Shah', 'Female', '2007-12-28', 'Mumbai'),
(73, 'Gaurav Pawar', 'Male', '2006-05-11', 'Satara'),
(74, 'Priti Jadhav', 'Female', '2005-08-03', 'Kolhapur'),
(75, 'Vishal More', 'Male', '2007-01-25', 'Sangli'),
(76, 'Nisha Desai', 'Female', '2006-07-19', 'Pune'),
(77, 'Rohan Patil', 'Male', '2005-10-06', 'Mumbai'),
(78, 'Kiran Joshi', 'Female', '2007-04-27', 'Nashik'),
(79, 'Amol Shah', 'Male', '2006-11-13', 'Nagpur'),
(80, 'Payal Pawar', 'Female', '2005-06-22', 'Malegaon'),

(81, 'Dev Kulkarni', 'Male', '2007-09-08', 'Pune'),
(82, 'Sakina Sheikh', 'Female', '2006-02-21', 'Mumbai'),
(83, 'Rudra Patil', 'Male', '2005-07-15', 'Kolhapur'),
(84, 'Manasi More', 'Female', '2007-05-03', 'Satara'),
(85, 'Tejaswini Jadhav', 'Female', '2006-12-19', 'Nashik'),
(86, 'Yuvraj Pawar', 'Male', '2005-03-07', 'Pune'),
(87, 'Anjali Shah', 'Female', '2007-10-16', 'Mumbai'),
(88, 'Mayur Deshmukh', 'Male', '2006-06-28', 'Sangli'),
(89, 'Prachi Patil', 'Female', '2005-01-10', 'Nagpur'),
(90, 'Suraj More', 'Male', '2007-08-12', 'Malegaon'),

(91, 'Meera Joshi', 'Female', '2006-04-26', 'Pune'),
(92, 'Rajat Pawar', 'Male', '2005-09-05', 'Mumbai'),
(93, 'Shubham Patil', 'Male', '2007-02-17', 'Kolhapur'),
(94, 'Rupali More', 'Female', '2006-11-29', 'Satara'),
(95, 'Vikas Jadhav', 'Male', '2005-05-08', 'Sangli'),
(96, 'Kajal Shah', 'Female', '2007-07-23', 'Pune'),
(97, 'Nitin Deshmukh', 'Male', '2006-03-15', 'Mumbai'),
(98, 'Saniya Khan', 'Female', '2005-12-20', 'Nashik'),
(99, 'Mohan Patil', 'Male', '2007-06-11', 'Nagpur'),
(100, 'Riya More', 'Female', '2006-10-30', 'Malegaon');

INSERT INTO Acadmic_info
(Roll_No, Student_ID, Class, Total_Marks)
VALUES
(101, 1, 'First Year', 425),
(102, 2, 'Second Year', 378),
(103, 3, 'Final', 462),
(104, 4, 'First Year', 315),
(105, 5, 'Second Year', 488),
(106, 6, 'Final', 356),
(107, 7, 'First Year', 271),
(108, 8, 'Second Year', 445),
(109, 9, 'Final', 392),
(110, 10, 'First Year', 218),

(111, 11, 'Second Year', 451),
(112, 12, 'Final', 334),
(113, 13, 'First Year', 489),
(114, 14, 'Second Year', 276),
(115, 15, 'Final', 405),
(116, 16, 'First Year', 367),
(117, 17, 'Second Year', 298),
(118, 18, 'Final', 475),
(119, 19, 'First Year', 342),
(120, 20, 'Second Year', 419),

(121, 21, 'Final', 387),
(122, 22, 'First Year', 456),
(123, 23, 'Second Year', 234),
(124, 24, 'Final', 491),
(125, 25, 'First Year', 362),
(126, 26, 'Second Year', 307),
(127, 27, 'Final', 428),
(128, 28, 'First Year', 399),
(129, 29, 'Second Year', 185),
(130, 30, 'Final', 443),

(131, 31, 'First Year', 318),
(132, 32, 'Second Year', 472),
(133, 33, 'Final', 286),
(134, 34, 'First Year', 451),
(135, 35, 'Second Year', 377),
(136, 36, 'Final', 423),
(137, 37, 'First Year', 265),
(138, 38, 'Second Year', 498),
(139, 39, 'Final', 354),
(140, 40, 'First Year', 311),

(141, 41, 'Second Year', 439),
(142, 42, 'Final', 396),
(143, 43, 'First Year', 248),
(144, 44, 'Second Year', 465),
(145, 45, 'Final', 329),
(146, 46, 'First Year', 407),
(147, 47, 'Second Year', 453),
(148, 48, 'Final', 372),
(149, 49, 'First Year', 291),
(150, 50, 'Second Year', 486),

(151, 51, 'Final', 341),
(152, 52, 'First Year', 429),
(153, 53, 'Second Year', 319),
(154, 54, 'Final', 467),
(155, 55, 'First Year', 238),
(156, 56, 'Second Year', 401),
(157, 57, 'Final', 455),
(158, 58, 'First Year', 365),
(159, 59, 'Second Year', 279),
(160, 60, 'Final', 444),

(161, 61, 'First Year', 391),
(162, 62, 'Second Year', 316),
(163, 63, 'Final', 458),
(164, 64, 'First Year', 223),
(165, 65, 'Second Year', 436),
(166, 66, 'Final', 352),
(167, 67, 'First Year', 481),
(168, 68, 'Second Year', 294),
(169, 69, 'Final', 410),
(170, 70, 'First Year', 368),

(171, 71, 'Second Year', 447),
(172, 72, 'Final', 325),
(173, 73, 'First Year', 396),
(174, 74, 'Second Year', 259),
(175, 75, 'Final', 469),
(176, 76, 'First Year', 337),
(177, 77, 'Second Year', 452),
(178, 78, 'Final', 383),
(179, 79, 'First Year', 211),
(180, 80, 'Second Year', 425),

-- 20 additional academic records
(181, 1, 'Final', 438),
(182, 5, 'Final', 471),
(183, 12, 'First Year', 362),
(184, 18, 'Final', 484),
(185, 24, 'Final', 452),
(186, 31, 'Second Year', 335),
(187, 38, 'Final', 489),
(188, 47, 'Final', 441),
(189, 57, 'Second Year', 467),
(190, 67, 'Final', 455),
(191, 3, 'Second Year', 428),
(192, 10, 'Final', 397),
(193, 22, 'Second Year', 415),
(194, 35, 'Final', 448),
(195, 44, 'Final', 392),
(196, 52, 'Second Year', 459),
(197, 61, 'Final', 421),
(198, 70, 'Second Year', 386),
(199, 75, 'First Year', 475),
(200, 80, 'Final', 403);

-- Part A – Basic Data Retrieval

-- 1. Display all records from the personal_info table.  
select * from Personal_info;
 --2.Display all records from the academic_info table. 
select * from Acadmic_info;

-- 3.Display only the student name, gender, and city. 
select Student_name, gender, city 
from Personal_info

-- 4. Display the names of students who belong to Malegaon. 
select *
from personal_info
where city = "Malegaon";

-- 5.Display students born in 2006. 
select * from personal_info
where year(DOB)=2006;

--6. Display all female students. 
select * from personal_info 
where gender="Female";

--7. Display students from Mumbai, Pune, and Nashik
select * from personal_info 
where city in ("Mumbai","Pune","Nashik");
select * from personal_info 
where city="Mumbai" or city="Punr" or city="Nashik";

-- Part B – WHERE Clause 

--8. Find all male students from Malegaon
select * from personal_info
where gender="Male" And City="Malegaon";

--9. Find all female students from Mumbai. 
select * from personal_info
where gender="Female" And City="Mumbai";

-- 10. Find students born between 2005 and 2006. 
select * from personal_info
where year(dob) Between 2005 And 2006;

--11. Find students whose total marks are greater than 400
select * from acadmic_info
where total_marks > 400;

-- 12. Find students whose total marks are between 350 and 450.
select * from acadmic_info
where total_marks between 350 And 450;

-- 13. Find students belonging to the Final class with marks greater than 400. 
select * from acadmic_info
where total_marks > 400 AND Class="Final";

-- 14. Find female students from Malegaon who scored more than 400 marks.
select p.*, a.* 
from personal_info as p inner join 
acadmic_info as a 
on p.student_id=a.student_id
where Gender="Female" AND City="Malegaon" AND total_Marks > 400;
 

 -- Part C – Aggregate Function
 
 -- 15. Find the total number of students. 
  select count(*) as total_students from acadmic_info;
  
-- 16. Find the total number of male and female students
select gender, count(*) as gender_wise_studet
from personal_info
group by gender;

-- 17. Find the average marks of all students
select avg(Total_marks) as avg_marks 
from acadmic_info ;

-- 18. Find the highest marks obtained by any student. 
select max(Total_marks) as highest_marks from acadmic_info;

-- 19. Find the lowest marks obtained by any student. 
select min(Total_marks) as Minimum_marks from acadmic_info;

-- 20. Find the total marks obtained by all students
select sum(Total_marks) as Total_marks from acadmic_info;

-- 21. Find the average marks of male students. 
select avg(a.total_marks) as average_marks
from personal_info as p inner join 
acadmic_info as a 
on p.student_id=a.student_id
where gender="Male";
*/

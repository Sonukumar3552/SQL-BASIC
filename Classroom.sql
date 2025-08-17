CREATE DATABASE college;
USE college;
CREATE TABLE student (
  id INT PRIMARY KEY,
  name VARCHAR(40),
  age INT NOT NULL

);

CREATE DATABASE xyz_company;
USE xyz_company;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR (50),
salary INT
);

INSERT INTO employee
(id, name, salary)
VALUES
(1,"SONU",25000),
(2,"RAM",20600),
(3,"BOB",20300),
(4,"TONY",25000),
(5,"ANIL",27000);

SELECT * FROM employee;

CREATE DATABASE college1;
USE college1;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name varchar(50),
marks INT NOT NULL,
grade VARCHAR(1),
city varchar(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "SONU", 74, "B", "BIHAR"),
(102, "ANIL", 84, "A", "MUMBAI"),
(103, "RAM", 70, "B", "DELHI"),
(104, "SHIV", 73, "B", "BIHAR"),
(105, "BOB", 54, "D", "UP"),
(106, "TONY", 71, "B", "MP"),
(107, "ROHIT", 64, "D", "BIHAR"),
(108, "AMAN", 94, "A", "DELHI");

SELECT * FROM student;

SELECT name, marks FROM student;

SELECT DISTINCT city FROM student;

SELECT * FROM student WHERE marks >75;

SELECT * FROM student WHERE city = "BIHAR";

SELECT * FROM student WHERE  city="BIHAR" AND marks >70;

SELECT * FROM student WHERE marks+15>100;

SELECT * FROM student WHERE marks > 70 AND city="BIHAR";

SELECT * FROM student WHERE  marks BETWEEN  75 AND 95;

SELECT * FROM student WHERE city IN ("BIAHR" , "DELHI");

SELECT * FROM student WHERE marks > 75 LIMIT 3;

SELECT * FROM student ORDER BY city ASC;

SELECT * FROM student ORDER BY marks ASC;

SELECT * FROM student ORDER BY marks DESC LIMIT 3;

SELECT MAX(marks) FROM student;

SELECT COUNT(rollno) FROM student;

SELECT city FROM student GROUP BY city;

SELECT city, count(rollno) FROM student GROUP BY city;

SELECT grade, count(rollno) FROM student GROUP BY grade ORDER BY grade;

SELECT city , count(rollno) FROM student GROUP BY city HAVING MAX(marks)>80;

SET SQL_SAFE_UPDATES =0;

UPDATE student 
SET grade ="o"
WHERE grade="a";

UPDATE student 
SET marks = 30
WHERE marks= 75;

UPDATE student 
SET marks = marks+1;

DELETE FROM student 
WHERE marks <=30;



SELECT * FROM student;














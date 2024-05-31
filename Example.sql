CREATE TABLE student(
	student_id INT PRIMARY KEY,
	student_name CHAR(30),
	student_major CHAR(30)
);

DROP TABLE student;

--ALTER TABLE student ADD gpa DECIMAL(3, 2);

--ALTER TABLE student DROP COLUMN gpa;

SELECT * FROM student;

INSERT INTO student VALUES (1, 'Nick', 'Zoology');
INSERT INTO student VALUES (2, 'John', 'Sociology');

--INSERT INTO student (student_id, student_name) VALUES (3, 'Kenneth');

--INSERT INTO student(student_id, student_name) VALUES (3, 'Claire'); //error

/*CREATE TABLE student(
	student_id INT PRIMARY KEY,
	student_name CHAR(30) NOT NULL,
	student_major CHAR(30) UNIQUE
);

INSERT INTO student VALUES (1, 'Nick', 'Zoology');
INSERT INTO student VALUES (2, 'John', 'Sociology');
INSERT INTO student VALUES (3, NULL, 'Physics');
INSERT INTO student (student_id, student_name) VALUES (4, 'Claire');
INSERT INTO student VALUES (5, 'Henry', 'Sociology');

CREATE TABLE student(
	student_id INT PRIMARY KEY,
	student_name CHAR(30),
	student_major CHAR(30) DEFAULT 'Undecided'
);

INSERT INTO student VALUES (1, 'Nick', 'Zoology');
INSERT INTO student (student_id, student_name) VALUES (2, 'Katy');*/

/*CREATE TABLE student(
	student_id INT,
	student_name CHAR(30),
	student_major CHAR(30),
	PRIMARY KEY (student_id)
);*/

--UPDATE & DELETE

--UPDATE

CREATE TABLE student(
	student_id INT IDENTITY(1,1),
	student_name CHAR(30),
	student_major CHAR(30),
	PRIMARY KEY (student_id)
);

INSERT INTO student VALUES ('Jack', 'Biology');
INSERT INTO student VALUES ('Kate', 'Sociology');
INSERT INTO student VALUES ('Claire', 'Chemistry');
INSERT INTO student VALUES ('Jack', 'Biology');
INSERT INTO student VALUES ('Mike', 'Computer Science');

SELECT * FROM student;

TRUNCATE TABLE student;

UPDATE student
SET student_major = 'Bio'
WHERE student_major = 'Biology';

UPDATE student
SET student_major = 'Comp-Sci'
WHERE student_major = 'Computer Science';

UPDATE student
SET student_major = 'Comp-Sci'
WHERE student_id = 4;

UPDATE student
SET student_major = 'BioChemistry'
WHERE student_major = 'Bio' OR student_major = 'Chemistry';

UPDATE student
SET student_name = 'Tom', student_major = 'undecided'
WHERE student_id = 4;

UPDATE student
SET student_major = 'undecided';

--DELETE

DELETE FROM student
WHERE student_id = 5;

DELETE FROM student
WHERE student_name = 'Tom' AND student_major = 'undecided';

DELETE FROM student
WHERE student_name = 'Kate';

DELETE FROM student;

--BASIC QUERIES

SELECT *
FROM student;

SELECT student_name
FROM student;

SELECT student_name, student_major
FROM student;

SELECT student.student_name, student.student_major
FROM student;

SELECT student.student_name, student.student_major
FROM student
ORDER BY student_name;

SELECT student.student_name, student.student_major
FROM student
ORDER BY student_name DESC;

SELECT student.student_name, student.student_major
FROM student
ORDER BY student_id DESC;

SELECT *
FROM student
ORDER BY student_id DESC;

SELECT *
FROM student
ORDER BY student_id ASC;

SELECT *
FROM student
ORDER BY student_major, student_id;

SELECT TOP 2 *
FROM student
ORDER BY student_major, student_id DESC;

SELECT *
FROM student
WHERE student_major = 'Chemistry';

SELECT student_name, student_major
FROM student
WHERE student_major = 'Chemistry';

SELECT student_name, student_major
FROM student
WHERE student_major = 'Chemistry' OR student_major = 'Biology';

SELECT student_name, student_major
FROM student
WHERE student_major = 'Chemistry' OR student_name = 'Mike';

SELECT *
FROM student
WHERE student_major <> 'Chemistry';

SELECT *
FROM student
WHERE student_id <= 3 AND student_name <> 'Jack';

SELECT *
FROM student
WHERE student_name IN ('Jack', 'Claire', 'Mike');

SELECT *
FROM student
WHERE student_major IN ('Chemistry', 'Biology') AND student_id > 3
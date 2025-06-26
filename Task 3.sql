CREATE DATABASE marks;

--STUDENT MARKS TABLE

CREATE TABLE student_marks(
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
subject_name VARCHAR(50),
total_marks_obtained INT,
grade CHAR
);
 
INSERT INTO student_marks
VALUES (111,"Alia","Hindi",97,'A'),
       (112,"Tara","Science",45,'E'),
	   (113,"Sonam","Computer",65,'C'),
       (114,"Jack","English",33,'F'),
       (115,"Akhil","Maths",70,'B'),
       (116,"Sona","Social",54,'D'),
       (117,"Hari","Zoology",96,'A');
       
--SELECTING ALL COLUMNS

SELECT * FROM student_marks;

--SELECT ONLY SPECIFIC COLUMNS

SELECT student_id,student_name,grade
FROM student_marks;

--SELECT SPECIFIC ID 

SELECT * FROM student_marks
WHERE student_id=113;

--AND OPERATOR

SELECT * FROM student_marks
WHERE total_marks_obtained>=35 AND grade='B';

--OR OPERATOR

SELECT * FROM student_marks
WHERE grade='A' OR grade='C';

--BETWEEN 

SELECT * FROM student_marks
WHERE grade BETWEEN 'A' AND 'E';

--LIKE 

SELECT * FROM student_marks
WHERE subject_name LIKE "s%";

--
SELECT * FROM student_marks
WHERE student_name LIKE "S%";

SELECT * FROM student_marks
WHERE subject_name LIKE "%Y";

SELECT * FROM student_marks
WHERE student_name LIKE "T_r_";

SELECT * FROM student_marks
WHERE total_marks_obtained LIKE "_7";

--COMBINING WILD CARDS

SELECT * FROM student_marks
WHERE subject_name LIKE "_O%";

--ORDER BY CLAUSE

SELECT * FROM student_marks
ORDER BY subject_name;

--USING ORDER BY IN DESCENDING ORDER

SELECT * FROM student_marks
ORDER BY student_id DESC;

--USING ORDER BY IN ASCENDING ORDER

SELECT * FROM student_marks
ORDER BY total_marks_obtained ASC;

--ORDERING BY TWO COLUMNS

SELECT * FROM student_marks
ORDER BY total_marks_obtained DESC,student_name ASC;

--LIMIT CLAUSE

SELECT* FROM student_marks
LIMIT 4;

--COMBINIG LIMIT AND OTHER CLAUSE

SELECT * FROM student_marks
ORDER BY subject_name LIMIT 2;

--LIMIT OFFSET

SELECT * FROM student_marks
LIMIT 2,1;

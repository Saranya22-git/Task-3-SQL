# 🗂️Writing Basic SQL SELECT Queries
In this **`readme.md`** file we cover essential SQL operations from basic `SELECT` statements to advanced querying techniques.
````markdown
🗂️Table Used

A simple `student_marks` table is used for all examples.
```sql
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

````

### Sample Data
| Student ID | Student Name | Subject Name | Total Marks | Grade |
|------------|-------------|-------------|-------------|-------|
| 111        | Alia        | Hindi       | 97          | A     |
| 112        | Tara        | Science     | 45          | E     |
| 113        | Sonam       | Computer    | 65          | C     |
| 114        | Jack        | English     | 33          | F     |
| 115        | Akhil       | Maths       | 70          | B     |
| 116        | Sona        | Social      | 54          | D     |
| 117        | Hari        | Zoology     | 96          | A     |

## `SELECT`
 🔹 The `SELECT` statement is used to select data from a database.
### 📋Selecting All Columns
 🔹 If you want to return all columns, without specifying every column name, you can use this.
 
 #### **Syntax**
 ```sql
 SELECT * FROM table_name;
```
#### **For Example**
     SELECT * FROM student_marks;
### 📋Selecting Specific Columns
 🔹If you want to specify which column you want you can this.
 
#### **Syntax**
 ```sql
SELECT column_name 1,column_name 2,column_name 3
FROM table_name;
```
#### **For Example**
    SELECT student_id,student_name,grade
    FROM student_marks;
## 📗`SQL LOGICAL OPERATORS`
Here in SQL the Logical Operators are **`AND`**,**`OR`**,**`BETWEEN`**.

### 👉AND
🔹The `AND` operator allows you to filter data based on multiple conditions, all of which must be true for the record to be included in the result set.
#### **Syntax**
```sql
SELECT * FROM table_name
WHERE condition 1 AND condition 2;
```
#### **For Example**
    SELECT * FROM student_marks
    WHERE total_marks_obtained>=35 AND grade='B';
### 👉OR
🔹The `OR` operator in SQL displays the records where any one condition is true, i.e. either condition1 or condition2 is True.
#### **Syntax**
```sql
SELECT * FROM table_name
WHERE condition 1 OR condition 2;
```
#### **For Example**
    SELECT * FROM student_marks
    WHERE grade='A' OR grade='C';
### 👉BETWEEN
🔹The `BETWEEN` operator selects values within a given range.    
#### **Syntax**
```sql
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```
#### **For Example**
    SELECT * FROM student_marks
    WHERE grade BETWEEN 'A' AND 'E';
## 📗`SQL CLAUSES`
Here in SQL the  are **`LIKE`**,**`ORDER BY`**,**`LIMIT`**.
### 👉LIKE
🔹The `LIKE` operator is used in a WHERE clause to search for a specified pattern in a column. 

🔹There are two wildcards often used in conjunction with the `LIKE` operator:
      
      -The percent sign % represents zero, one, or multiple characters.
      -The underscore sign _ represents one, single character.
#### **Syntax**
```sql
SELECT column1, column2, ...
FROM table_name
WHERE columnn LIKE pattern;
```
#### **For Example**
    SELECT * FROM student_marks
    WHERE subject_name LIKE "s%";
## 📗`Wild Cards`    
### 📋**Starts With**    
🔹To return records that `starts with a specific letter or phrase, add the % at the end` of the letter or phrase.

    SELECT * FROM student_marks
    WHERE student_name LIKE "S%";
    
### 📋**Ends With**
🔹To return records that `ends with a specific letter or phrase, add the % at the beginning` of the letter or phrase.
    
    SELECT * FROM student_marks
    WHERE subject_name LIKE "%Y";
    
### 📋**Combine Wild Cards**
🔹Any wildcard like `%` and `_`can be used in combination with other wildcards.
    
    SELECT * FROM student_marks
    WHERE subject_name LIKE "_O%";
### 👉ORDER BY
🔹The `ORDER BY` clause is used to sort the result-set in ascending or descending order.
#### **Syntax**
```sql
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;
```
#### **For Example**
    SELECT * FROM student_marks
    ORDER BY subject_name;
#### Order By-In Descending
####
    SELECT * FROM student_marks
    ORDER BY student_id DESC;
#### Order By-In Ascending
####
    SELECT * FROM student_marks
    ORDER BY total_marks_obtained ASC;
### 👉LIMIT
🔹The `LIMIT` number of rows returned by a SELECT statement, you use the LIMIT and OFFSET clauses.
#### **Syntax**
```sql
SELECT * FROM table_name
LIMIT row_count;
```
#### **For Example**
    SELECT* FROM student_marks
    LIMIT 4;
    
#### **COMBINIG LIMIT AND ORDER BY CLAUSE**

    SELECT * FROM student_marks
    ORDER BY subject_name LIMIT 2;
# ⛏️Tools
🔹 MySQL Workbench

# **Happy Learning! 🎓**

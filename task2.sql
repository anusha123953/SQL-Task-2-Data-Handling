
mysql> CREATE DATABASE college;
Query OK, 1 row affected (0.396 sec)

mysql>
mysql> -- STEP 2: Use Database
Query OK, 0 rows affected (0.006 sec)

mysql> USE college;
Database changed
mysql>task2.sql
mysql> -- STEP 3: Create Table
Query OK, 0 rows affected (0.007 sec)

mysql> CREATE TABLE students (
    ->     id INT PRIMARY KEY,
    ->     name VARCHAR(50) NOT NULL,
    ->     age INT,
    ->     email VARCHAR(100),
    ->     course VARCHAR(50) DEFAULT 'BTech'
    -> );
Query OK, 0 rows affected (0.298 sec)

mysql>
mysql> -- STEP 4: Insert Data
Query OK, 0 rows affected (0.008 sec)

mysql> INSERT INTO students (id, name, age, email, course) VALUES
    -> (1, 'Anusha', 20, 'anu@gmail.com', 'CSE'),
    -> (2, 'Rohan', 21, NULL, 'ECE'),
    -> (3, 'Priya', NULL, 'priya@gmail.com', DEFAULT),
    -> (4, 'Kiran', 22, 'kiran@gmail.com', 'MECH');
Query OK, 4 rows affected (0.082 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql>
mysql> -- STEP 5: Insert Partial Values
Query OK, 0 rows affected (0.007 sec)

mysql> INSERT INTO students (id, name) VALUES (5, 'Arjun');
Query OK, 1 row affected (0.041 sec)

mysql>
mysql> -- STEP 6: Update Data (Single Row)
Query OK, 0 rows affected (0.007 sec)

mysql> UPDATE students
    -> SET age = 23
    -> WHERE id = 1;
Query OK, 1 row affected (0.042 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>
mysql> -- STEP 7: Update Multiple Rows (NULL Handling)
Query OK, 0 rows affected (0.007 sec)

mysql> UPDATE students
    -> SET course = 'IT'
    -> WHERE age IS NULL;
Query OK, 2 rows affected (0.041 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql>
mysql> -- STEP 8: Handle NULL Values
Query OK, 0 rows affected (0.006 sec)

mysql> UPDATE students
    -> SET email = 'notprovided@gmail.com'
    -> WHERE email IS NULL;
Query OK, 2 rows affected (0.047 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql>
mysql> -- STEP 9: Delete Data
Query OK, 0 rows affected (0.007 sec)

mysql> DELETE FROM students
    -> WHERE id = 5;
Query OK, 1 row affected (0.044 sec)

mysql>
mysql> -- STEP 10: View Final Data
Query OK, 0 rows affected (0.007 sec)

mysql> SELECT * FROM students;
+----+--------+------+-----------------------+--------+
| id | name   | age  | email                 | course |
+----+--------+------+-----------------------+--------+
|  1 | Anusha |   23 | anu@gmail.com         | CSE    |
|  2 | Rohan  |   21 | notprovided@gmail.com | ECE    |
|  3 | Priya  | NULL | priya@gmail.com       | IT     |
|  4 | Kiran  |   22 | kiran@gmail.com       | MECH   |
+----+--------+------+-----------------------+--------+
4 rows in set (0.010 sec)
create database SGS;

use SGS;
CREATE TABLE Student (
  student_id INT PRIMARY KEY,
  first_name VARCHAR(50),
   last_name VARCHAR(50)
);

CREATE TABLE Grade (
  grade_id INT PRIMARY KEY,
  grade_name VARCHAR(50)
);

CREATE TABLE Subject (
  subject_id INT PRIMARY KEY,
  subject_name VARCHAR(50),
  subject_code VARCHAR(50),
  subject_credit_hour INT
);

CREATE TABLE Examination (
  exam_id INT PRIMARY KEY,
  student_id INT,
  subject_id INT,
  exam_date DATE,
  score INT,
  FOREIGN KEY (student_id) REFERENCES Student(student_id),
  FOREIGN KEY (subject_id) REFERENCES Subject(subject_id)
);
-- Add data to the Student table
INSERT INTO Student (student_id, first_name,last_name)
VALUES (1, 'Meron', 'Alemu');

INSERT INTO Student (student_id, first_name,last_name)
VALUES (2, 'Amanuel','Tesfaye' );

INSERT INTO Student (student_id, first_name, last_name)
VALUES (3, 'Selam', 'Negash');

INSERT INTO Student (student_id, first_name, last_name)
VALUES (4, 'Samuel','Mekonnen');

INSERT INTO Student (student_id, first_name, last_name)
VALUES (5, 'Betelhem', 'Alemayehu');

-- Add data to the Grade table
INSERT INTO Grade (grade_id, grade_name)
VALUES (1, 'Grade 9');

INSERT INTO Grade (grade_id, grade_name)
VALUES (2, 'Grade 10');

INSERT INTO Grade (grade_id, grade_name)
VALUES (3, 'Grade 11');

INSERT INTO Grade (grade_id, grade_name)
VALUES (4, 'Grade 12');

-- Add data to the Subject table
INSERT INTO Subject (subject_id, subject_name, subject_code, subject_credit_hour)
VALUES (1, 'Mathematics', 'MTH101', 4);

INSERT INTO Subject (subject_id, subject_name, subject_code, subject_credit_hour)
VALUES (2, 'Physics', 'PHY101', 3);

INSERT INTO Subject (subject_id, subject_name, subject_code, subject_credit_hour)
VALUES (3, 'Chemistry', 'CHE101', 3);

INSERT INTO Subject (subject_id, subject_name, subject_code, subject_credit_hour)
VALUES (4, 'Biology', 'BIO101', 3);

grade-- Add data to the Examination table
INSERT INTO Examination (exam_id, student_id, subject_id, exam_date, score)
VALUES (1, 1, 1, '2022-06-15', 90);

INSERT INTO Examination (exam_id, student_id, subject_id, exam_date, score )
VALUES (2, 1, 2, '2022-06-22', 85);

INSERT INTO Examination (exam_id, student_id, subject_id, exam_date, score)
VALUES (3, 1, 3, '2022-06-29', 92);

INSERT INTO Examination (exam_id, student_id, subject_id, exam_date, score)
VALUES (4, 2, 1, '2022-06-15', 87);

INSERT INTO Examination (exam_id, student_id, subject_id, exam_date, score)
VALUES (5, 2, 2, '2022-06-22', 80);

INSERT INTO Examination (exam_id, student_id, subject_id, exam_date, score)
VALUES (6, 2, 3, '2022-06-29', 95);

INSERT INTO Examination (exam_id, student_id, subject_id, exam_date, score)
VALUES (7, 3, 1, '2022-06-15', 95);

INSERT INTO Examination (exam_id, student_id, subject_id, exam_date, score)
VALUES (8, 3, 2, '2022-06-22', 78);

INSERT INTO Examination (exam_id, student_id, subject_id, exam_date, score)
VALUES (9, 3, 3, '2022-06-29', 85);

INSERT INTO Examination (exam_id, student_id, subject_id, exam_date, score)
VALUES (10, 4, 1, '2022-06-15', 92);

INSERT INTO Examination (exam_id, student_id, subject_id, exam_date, score)
VALUES (11, 4, 2, '2022-06-22', 89);

INSERT INTO Examination (exam_id, student_id, subject_id, exam_date, score)
VALUES (12, 4, 3, '2022-06-29', 80);

INSERT INTO Examination (exam_id, student_id, subject_id, exam_date, score)
VALUES (13, 5, 1, '2022-06-15', 78);

INSERT INTO Examination (exam_id, student_id, subject_id, exam_date, score)
VALUES (14, 5, 2, '2022-06-22', 92);

INSERT INTO Examination (exam_id, student_id, subject_id, exam_date, score)
VALUES (15, 5, 3, '2022-06-29', 85);
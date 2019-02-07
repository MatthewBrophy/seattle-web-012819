DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS grades;

CREATE TABLE courses(
    id INTEGER PRIMARY KEY,
    title TEXT
);

CREATE TABLE students(
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE enrollments (
    id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER
);

CREATE TABLE grades(
    id INTEGER PRIMARY KEY,
    enrollment_id INTEGER,
    percent INTEGER
);

INSERT INTO courses (title)
VALUES ("Math"), ("Science"), ("English");

INSERT INTO students (name)
VALUES ("Bart"), ("Lisa"), ("Milhouse");

INSERT INTO enrollments (student_id, course_id)
VALUES (1, 1), (2, 1), (3, 1),
       (1, 2),
       (2, 3);

INSERT INTO grades (enrollment_id, percent)
VALUES (1, 42),
       (2, 100),
       (3, 86),
       (4, 17),
       (5, 102);
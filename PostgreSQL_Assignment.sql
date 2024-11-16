create database university_db;

CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    student_name VARCHAR(40),
    age INTEGER,
    email VARCHAR(40),
    frontend_mark INTEGER,
    backend_mark INTEGER,
    status VARCHAR(20) NULL
);

INSERT INTO students (student_id, student_name, age, email, frontend_mark, backend_mark, status)
    VALUES
        (1, 'Sameer', 21, 'sameer@example.com', 48, 60, NULL),
        (2, 'Zoya', 23, 'zoya@example.com', 52, 58, NULL),
        (3, 'Nabil', 22, 'nabil@example.com', 37, 46, NULL),
        (4, 'Rafi', 24, 'rafi@example.com', 41, 40, NULL),
        (5, 'Sophia', 22, 'sophia@example.com', 50, 52, NULL),
        (6, 'Hasan', 23, 'hasan@gmail.com', 43, 39, NULL);


select * from students;

create table courses(
    course_id INTEGER PRIMARY KEY,
    course_name VARCHAR(30),
    credits INTEGER
);

INSERT INTO courses (course_id, course_name, credits)
VALUES
    (1, 'Next.js', 3),
    (2, 'React.js', 4),
    (3, 'Databases', 3),
    (4, 'Prisma', 3);

select * from courses;

CREATE TABLE enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(student_id),
    course_id INTEGER REFERENCES courses(course_id)
);

INSERT INTO enrollment (enrollment_id, student_id, course_id)
VALUES
    (1, 1, 1),
    (2, 1, 2),
    (3, 2, 1),
    (4, 3, 2);


select * FROM enrollment;
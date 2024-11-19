select student_name from students
    join enrollment on students.student_id = enrollment.student_id
    join courses on enrollment.course_id = courses.course_id
    where courses.course_name = 'Next.js';
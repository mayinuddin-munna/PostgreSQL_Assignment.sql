select course_name, count(enrollment.student_id) as students_enrolled from courses
    left join enrollment on courses.course_id=enrollment.course_id
    group by courses.course_id, courses.course_name;
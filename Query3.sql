select student_name, (frontend_mark + backend_mark) as total_marks from students
    order by
    total_marks desc LIMIT 1;
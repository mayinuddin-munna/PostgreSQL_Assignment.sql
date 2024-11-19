SELECT *
FROM courses
WHERE
    course_id NOT IN (
        SELECT DISTINCT
            course_id
        FROM enrollment
    );
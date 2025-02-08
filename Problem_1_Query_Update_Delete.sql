SELECT student_first_name || ' ' || student_last_name AS full_name FROM students
JOIN enrollments ON students.student_id = enrollments.student_id
JOIN courses ON courses.course_id = enrollments.course_id
WHERE courses.course_name = 'Physics 101';


SELECT course_name, professor_first_name || ' ' || professor_last_name AS professors_full_name FROM courses
JOIN professors ON courses.professor_id = professors.professor_id 
;

SELECT course_name,
COUNT(enrollments.student_id) AS student_count FROM courses
JOIN enrollments ON courses.course_id = enrollments.course_id
GROUP BY courses.course_name;


UPDATE students
SET email = 'doejdoe007@gmail.com'
WHERE student_first_name = 'John' AND student_last_name = 'Doe';


DELETE FROM enrollments
WHERE student_id = (SELECT student_id FROM students WHERE student_first_name = 'John' AND student_last_name = 'Doe')
AND course_id = (SELECT course_id FROM courses WHERE course_name = 'English 101');

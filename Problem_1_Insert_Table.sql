INSERT INTO students (student_first_name, student_last_name, email, school_enrollment_date) VALUES
('John', 'Doe', 'doejohn32@gmail.com', '2025-01-07'),
('Mike', 'Borders', 'mikebordars76@gmail.com', '2025-01-07'),
('Aileen', 'Sinnot', 'aileen8762@gmail.com', '2025-01-10'),
('Lisa', 'Audrey', 'audreylisa009@gmail.com', '2025-01-08'),
('Natasha', 'Monique', 'natashamon5432@gmail.com', '2025-01-12');



INSERT INTO professors (professor_first_name, professor_last_name, professor_dept) VALUES
('Mike', 'Derek', 'Physics'),
('Samantha', 'Ball', 'Math'),
('Engrid', 'Dsouza', 'History'),
('Neil', 'Cooper', 'English');



INSERT INTO courses (course_name, course_description, professor_id) VALUES
('Physics 101', 'Introduction to Physics', 1),
('Math 112', 'Linear Algebra', 2),
('English 101', 'Introduction to English Literature', 4);


INSERT INTO enrollments (student_id, course_id, course_enrollment_date) VALUES
((SELECT student_id FROM students WHERE student_first_name = 'John' AND student_last_name = 'Doe'), (SELECT course_id FROM courses WHERE course_name = 'Math 112'), '2025-01-07'),
((SELECT student_id FROM students WHERE student_first_name = 'John' AND student_last_name = 'Doe'), (SELECT course_id FROM courses WHERE course_name = 'English 101'), '2025-01-08'),
((SELECT student_id FROM students WHERE student_first_name = 'Mike' AND student_last_name = 'Borders'), (SELECT course_id FROM courses WHERE course_name = 'Physics 101'), '2025-01-08'),
((SELECT student_id FROM students WHERE student_first_name = 'Aileen' AND student_last_name = 'Sinnot'), (SELECT course_id FROM courses WHERE course_name = 'English 101'), '2025-01-10'),
((SELECT student_id FROM students WHERE student_first_name = 'Lisa' AND student_last_name = 'Audrey'), (SELECT course_id FROM courses WHERE course_name = 'Math 112'), '2025-01-11'),
((SELECT student_id FROM students WHERE student_first_name = 'Natasha' AND student_last_name = 'Monique'), (SELECT course_id FROM courses WHERE course_name = 'Physics 101'), '2025-01-12');

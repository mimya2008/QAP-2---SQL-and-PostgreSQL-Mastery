CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_first_name TEXT,
    student_last_name TEXT,
    email TEXT,
    school_enrollment_date DATE
);



CREATE TABLE professors (
    professor_id SERIAL PRIMARY KEY,
    professor_first_name TEXT,
    professor_last_name TEXT,
    professor_dept TEXT
);


CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name TEXT,
    course_description TEXT,
	professor_id INT REFERENCES professors(professor_id)
);


CREATE TABLE enrollments (
    student_id INT REFERENCES students(student_id),
    course_id INT REFERENCES courses(course_id),
    course_enrollment_date DATE,
	PRIMARY KEY (student_id, course_id)
);


PRAGMA foreign_keys = ON;

SELECT * FROM courses;
SELECT * FROM students;

SELECT * FROM students WHERE students.age > 20;

SELECT students.name, students.email, students.age, courses.course_name
FROM students JOIN courses ON students.course_id = courses.course_id;


SELECT courses.course_name, COUNT(students.id) FROM courses
LEFT JOIN students ON students.course_id = courses.course_id
GROUP BY courses.course_name;


UPDATE students
SET age = 39
WHERE id = 1;
SELECT * FROM students WHERE students.id = 1;


UPDATE students
SET course_id = 2 -- moved from 'Java Fundamentals' to 'Python Advanced'
WHERE id = 2;
SELECT * FROM students JOIN courses ON students.course_id = courses.course_id WHERE students.id = 2;


DELETE FROM students WHERE id = 4;


SELECT students.id, students.name, students.email, students.age, courses.course_name
FROM students JOIN courses ON students.course_id = courses.course_id
ORDER BY students.id;


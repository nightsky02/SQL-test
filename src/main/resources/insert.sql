PRAGMA foreign_keys = ON;

-- Delete students first because students depends on courses.
DELETE FROM students;
DELETE FROM courses;

INSERT INTO courses(course_id, course_name, credits)
VALUES (1, "Java Fundamentals", 50),
       (2, "Python Advanced", 320),
       (3, "REST Spring Fundamentals", 300);


INSERT INTO students(id, name, email, age, course_id)
VALUES (1, "Pavel", "pavel@gmail.com", 20, 1),
       (2, "Andris", "andris@gmail.com", 19, 1),
       (3, "Alexandr", "alex@gmail.com", 26, 2),
       (4, "Anna", "anna@gmail.com", 29, 3),
       (5, "Artem", "artem@gmail.com", 21, 3);


-- ** ONLY FOR TESTING **
-- Uncomment this to test a foreign key error.
-- This should fail because course_id 999 does not exist.
-- INSERT INTO students (id, name, email, age, course_id)
-- VALUES (6, 'Invalid Course Student', 'invalid@example.com', 20, 999);

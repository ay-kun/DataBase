---a
SELECT takes.id, student.name FROM takes, student WHERE takes.id = student.id and course_id LIKE 'CS%' AND (grade = 'A' OR grade = 'A-') ORDER BY student.name;
---b
SELECT DISTINCT instructor.id, instructor.name FROM
instructor, takes, teaches
WHERE (takes.course_id, takes.sec_id, takes.semester, takes.year, teaches.id) = (teaches.course_id, teaches.sec_id, teaches.semester, teaches.year, instructor.id)
AND takes.grade > 'B+';
---c
SELECT dept_name FROM department
EXCEPT
SELECT DISTINCT course.dept_name
FROM takes, course
WHERE takes.course_id = course.course_id AND (takes.grade = 'C' OR takes.grade = 'F');
---d
SELECT id, name FROM instructor
EXCEPT
SELECT DISTINCT instructor.id, instructor.name
FROM instructor, takes, teaches
WHERE (takes.course_id, takes.sec_id, takes.semester, takes.year, teaches.id) = (teaches.course_id, teaches.sec_id, teaches.semester, teaches.year, instructor.id)
AND (takes.grade = 'A' OR takes.grade = 'A+');
---e
SELECT course_id FROM course
EXCEPT
SELECT DISTINCT section.course_id FROM
section, time_slot
WHERE section.time_slot_id = time_slot.time_slot_id AND time_slot.start_hr >= 13;
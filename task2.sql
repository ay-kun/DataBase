---a
SELECT dept_name, AVG(salary) FROM instructor GROUP BY (dept_name) ORDER BY AVG(salary);
---b
SELECT dept_name, COUNT(course_id) FROM course GROUP BY dept_name ORDER BY COUNT(course_id) LIMIT 1;
---c
SELECT building, COUNT(course_id) FROM section GROUP BY building ORDER BY -COUNT(course_id) LIMIT 1;
---d
SELECT id, COUNT(course_id) FROM takes WHERE course_id LIKE 'CS%' GROUP BY id HAVING COUNT(course_id) >= 4;
--- e
SELECT * FROM instructor WHERE dept_name = 'Biology' OR dept_name = 'Music' OR dept_name = 'Philosophy';
--- f
SELECT id FROM teaches WHERE year = 2018
EXCEPT
SELECT id FROM teaches WHERE year = 2017;


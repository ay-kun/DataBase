---a
SELECT course_id FROM course WHERE credits > 3;
--- b
SELECT * from classroom WHERE building = 'Watson' OR building = 'Packard';
---c
SELECT course_id FROM course WHERE dept_name = 'Comp. Sci.';
---d
SELECT course_id FROM section WHERE semester = 'Fall';
---e
SELECT id FROM student WHERE tot_cred > 45 AND tot_cred < 90;
---f
SELECT id, name FROM student WHERE name LIKE '%a' OR name LIKE '%e' OR name LIKE '%u' OR name LIKE '%i' OR name LIKE '%o';
---g
SELECT course_id FROM prereq WHERE prereq_id = 'CS-101';
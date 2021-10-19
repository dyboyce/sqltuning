-- 3. List the names of students who have taken course v4 (crsCode).
SELECT name FROM springboardopt.Student FORCE INDEX (student_ids) WHERE id IN (SELECT studId FROM Transcript FORCE INDEX (course_code) WHERE crsCode = 'MGT382');

/* ANSWER:
Bottleneck - Tablescans
Solution - Forced indexing on both student IDs and course codes. about a 30% speedup. But the tables are again very small */

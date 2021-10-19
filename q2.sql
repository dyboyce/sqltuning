-- 2. List the names of students with id in the range of v2 (id) to v3 (inclusive).
SELECT * FROM springboardopt.Student FORCE INDEX (student_ids) WHERE id BETWEEN 1145072 AND 1828467;

/*ANSWER
Bottleneck: Full table scan again
Solution: Create and FORCE and index.
Index on Student IDs wasn't initially being used due to the between clauses, the force clause made it so. */
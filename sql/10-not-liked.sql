SELECT student.name AS name, student.grade AS grade
  FROM student
  WHERE student.id NOT IN (
    SELECT likee_id
    FROM student_like
    UNION ALL
    SELECT liker_id
    FROM student_like)
  ORDER BY student.name;

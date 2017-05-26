SELECT liker.name AS a, liker.grade, likee.name AS b, likee.grade AS b_grade
  FROM student_like
  JOIN student likee
  ON student_like.likee_id = likee.id
  JOIN student liker
  ON student_like.liker_id = liker.id
  WHERE likee.id NOT IN (
    SELECT liker_id
    FROM student_like
  );

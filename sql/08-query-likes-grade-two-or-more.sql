SELECT liker.name AS liker, liker.grade, likee.name AS likee, likee.grade
  FROM student_like
  JOIN student liker
  ON liker.id = student_like.liker_id
  JOIN student likee
  ON likee.id = student_like.likee_id
  WHERE liker.grade - 2 >= likee.grade;

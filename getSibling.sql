SELECT
  COALESCE(siblings."No of Siblings", 0) AS "No of Siblings",
  COUNT(student.id) AS "No of Students"
FROM
  (SELECT
    student_id,
    COUNT(student_id1) AS "No of Siblings"
  FROM
    student_sibling
  GROUP BY
    student_id) AS siblings
RIGHT JOIN
  student
ON
  student.id = siblings.student_id
GROUP BY
  siblings."No of Siblings"
ORDER BY
  CASE WHEN siblings."No of Siblings" IS NULL THEN 0 ELSE 1 END, siblings."No of Siblings";

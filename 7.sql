SELECT
  CASE WHEN Grades.Grade < 8 THEN NULL ELSE Students.Name END AS Name,
  Grades.Grade,
  Students.Marks
FROM Students
INNER JOIN Grades ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark
ORDER BY Grades.Grade DESC,
         CASE WHEN Grades.Grade < 8 THEN Students.Marks END ASC,
         CASE WHEN Grades.Grade >= 8 THEN Students.Name END ASC;
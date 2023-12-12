SELECT EMAIL FROM(
SELECT EMAIL, COUNT(EMAIL)
FROM PERSON
GROUP BY EMAIL
HAVING COUNT(EMAIL) > 1);

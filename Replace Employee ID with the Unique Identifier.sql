SELECT en.unique_id, name
FROM EmployeeUNI en
RIGHT JOIN Employees em ON en.id = em.id;
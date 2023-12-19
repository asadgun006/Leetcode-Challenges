SELECT em.name FROM EMPLOYEE em
LEFT JOIN EMPLOYEE emp ON em.id = emp.managerId
GROUP BY emp.managerId
HAVING COUNT(emp.managerId) >= 5;

With cte as
(SELECT dp.id as depId, dp.name as Department, em.name as Employee, salary as Salary, DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary desc) as num
FROM EMPLOYEE em
LEFT JOIN Department dp ON em.departmentId = dp.id)
SELECT Department, Employee, Salary
FROM cte
WHERE num =1;

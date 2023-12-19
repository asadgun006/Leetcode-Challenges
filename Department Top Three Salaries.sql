SELECT dep_name as Department, emp_name as Employee, emp_sal as Salary 
FROM 
(SELECT em.id, em.name as emp_name, em.salary as emp_sal, em.departmentid as emp_dep, dp.name as dep_name, 
DENSE_RANK() OVER(PARTITION BY em.departmentid ORDER BY em.salary desc) as den_rank
FROM Employee em
LEFT JOIN department dp on em.departmentid = dp.id
ORDER BY dp.name, em.salary desc) tb
WHERE tb.den_rank <= 3;

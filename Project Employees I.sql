SELECT project_id, ROUND(AVG(experience_years),2)  as average_years
FROM Project pr
LEFT JOIN Employee em ON pr.employee_id = em.employee_id
GROUP BY pr.project_id;
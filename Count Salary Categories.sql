SELECT 'Low Salary' as category, COALESCE(SUM(CASE WHEN income < 20000 THEN 1 END), 0) as accounts_count
FROM ACCOUNTS
UNION 
SELECT 'Average Salary' as category, COALESCE(SUM(CASE WHEN income BETWEEN 20000 AND 50000 THEN 1 END), 0) as accounts_count
FROM ACCOUNTS
UNION
SELECT 'High Salary' as category, COALESCE(SUM(CASE WHEN income > 50000 THEN 1 END), 0) as accounts_count
FROM ACCOUNTS;

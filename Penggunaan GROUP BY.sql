use employees;

SELECT 
    birth_date, count(birth_date)
FROM
    employees
WHERE
    birth_date
GROUP BY birth_date
ORDER BY birth_date;

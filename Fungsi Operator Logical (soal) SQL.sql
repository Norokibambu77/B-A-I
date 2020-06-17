SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie'
        OR first_name = 'Aruna'
        AND (gender = 'M' OR gender = 'F');
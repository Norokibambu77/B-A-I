SELECT 
    e.first_name, e.last_name
FROM
    employees e
WHERE
    EXISTS( SELECT 
            *
        FROM
            dept_emp de
        WHERE
            e.emp_no = de.emp_no
        ORDER BY emp_no)
        ;
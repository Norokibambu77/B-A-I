SELECT 
    e.emp_no AS EmployeesID,
    MIN(d.emp_no) AS Department_Employees,
    (SELECT 
            emp_no
        FROM
            dept_manager
        WHERE
            emp_no = 110022) AS ManagerID
FROM
    employees e #Sebagai Inisialisasi
        JOIN
    dept_emp d ON e.emp_no = d.emp_no
WHERE
    e.emp_no <=10020
GROUP BY e.emp_no
ORDER BY e.emp_no;
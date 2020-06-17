SELECT 
    dm.emp_no, dm.dept_no, d.dept_name
FROM
    dept_manager dm
        JOIN
    departments d ON dm.dept_no = d.dept_no
    group by d.dept_name
    order by dm.dept_no;
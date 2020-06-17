use employees_mod;
SELECT 
    d.dept_name,		-- Table t_department
    ee.gender,			-- Table t_employees
    dm.emp_no,			-- Table t_dept_manager
    dm.from_date,		-- Table t_dept_manager
    dm.to_date,			-- Table t_dept_manager
    e.calendar_year,	-- Table t_employees AS calendar_year
    CASE
        WHEN
            YEAR(dm.to_date) >= e.calendar_year 	-- 1998 >= 1990(1) AND 1995 <= 1990(0) = 0
						AND 						-- 1998 >= 1995(1) AND 1995 <= 1995(1) = 1
			YEAR(dm.from_date) <= e.calendar_year
        THEN
            1
        ELSE 
			0
    END AS active
FROM
    (
    SELECT YEAR(hire_date) AS calendar_year		-- coloumn t_employees | (hire_date) AS calendar_year | 
		FROM t_employees 						--					   | -- 	1999 - 01 - 01		  |
    GROUP BY calendar_year
    ) e
        CROSS JOIN					
    t_dept_manager dm							-- t_dept_manager(PRIMARY KEY(emp_no)) 
        JOIN									--				 =
    t_departments d ON dm.dept_no = d.dept_no	-- t_department(PRIMARY KEY(emp_no))   
        JOIN									--				 =
    t_employees ee ON dm.emp_no = ee.emp_no		-- t_employees(PRIMARY KEY(emp_no))
ORDER BY dm.emp_no , calendar_year;				-- 


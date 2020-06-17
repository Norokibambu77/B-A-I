use employees;

drop procedure if exists count_gender_emp;

DELIMITER $$
create procedure AVG_Department_Salary(in Department_Name char, out Department_Salary decimal(10,2))
begin

select avg(s.salary) into Department_Name from departments d join salaries s on  d.dept_name = s.emp_no 
where d.dept_name = Department_Name;

end$$


drop procedure AVG_Department_Salary;
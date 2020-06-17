use employees;

drop procedure if exists emp_salary;

DELIMITER $$
create procedure emp_salary()
begin

	select * from employees limit 10;

END $$
DELIMITER ;
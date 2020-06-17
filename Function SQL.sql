use employees;
/*
Create a variable, called ‘v_emp_no’,
(buat variabel, yang disebut ‘v_emp_no’,) 

where you will store the output of the procedure you created in the last exercise.
(di mana Anda akan menyimpan output dari prosedur yang Anda buat dalam latihan terakhir.)

Call the same procedure, inserting the values ‘Aruna’ and ‘Journel’ as 
(Panggil prosedur yang sama, masukkan nilai ‘Aruna’ dan ‘Journel’)

a first and last name respectively.Finally, select the obtained output.
 (masing-masing sebagai nama depan dan nama belakang.Terakhir, pilih output yang diperoleh)
*/
DELIMITER $$
CREATE FUNCTION emp_info(p_first_name varchar(255), p_last_name varchar(255)) RETURNS decimal(10,2)
BEGIN
DECLARE v_max_from_date date;
DECLARE v_salary decimal(10,2);
SELECT 
      MAX(from_date)
INTO v_max_from_date FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.first_name = p_first_name
        AND 
    e.last_name = p_last_name;
SELECT
    s.salary
INTO v_salary FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.first_name = p_first_name
        AND 
    e.last_name = p_last_name
		AND 
	s.from_date = v_max_from_date;
RETURN v_salary;

END$$

DELIMITER ;

SELECT EMP_INFO('Aruna', 'Journel');






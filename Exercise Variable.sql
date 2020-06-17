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
create procedure 
Search_Employeess(
	in P_E_First_Name varchar(225),
	in P_E_Last_Name varchar(225),
	out P_emp_no integer
    )
begin 
select
	e.emp_no
INTO P_emp_no FROM 
	employees e 
WHERE e.first_name =  P_E_First_Name AND  e.last_name = P_E_Last_Name;

END$$

drop procedure Search_Employeess;




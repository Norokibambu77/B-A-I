/*

Create an SQL stored procedure that will allow you to obtain the average male and female salary 
per department within a certain salary range.
( Buat prosedur tersimpan SQL yang akan memungkinkan Anda untuk mendapatkan gaji rata-rata pria dan wanita
  per departemen dalam kisaran gaji tertentu.)
  
Let this range be defined by two values the user can insert when calling the procedure.
( Biarkan rentang ini ditentukan oleh dua nilai yang bisa dimasukkan oleh pengguna saat memanggil prosedur ).

Finally, visualize the obtained result-set in Tableau as a double bar chart.
( Akhirnya, visualisasikan hasil-set yang diperoleh di Tableau sebagai bagan batang ganda )

*/

use employees_mod;

DROP PROCEDURE IF EXISTS filter_salary;

DELIMITER $$
#Membuat procedure filter_salary rata-rata minimal dan maximal gaji
CREATE PROCEDURE filter_salary (IN p_min_salary FLOAT, IN p_max_salary FLOAT)
BEGIN
SELECT 
    e.gender, d.dept_name, AVG(s.salary) as avg_salary 
FROM
    t_salaries s							
        JOIN								# Digabungkan Antara table yang memiliki Primary key(emp_no) yang sama
    t_employees e ON s.emp_no = e.emp_no
        JOIN								# Digabungkan Antara table yang memiliki Primary key(emp_no) yang sama
    t_dept_emp de ON de.emp_no = e.emp_no
        JOIN								# Digabungkan Antara table yang memiliki Primary key(emp_no) yang sama
    t_departments d ON d.dept_no = de.dept_no 
    WHERE s.salary BETWEEN p_min_salary AND p_max_salary	# Antara Gaji MIN dan MAX di setiap department
GROUP BY d.dept_no, e.gender;								# di urutkan dari department dan jenis kelamin
END$$

DELIMITER ;

CALL filter_salary(50000, 90000);

use employees_mod;
/*
  Compare the average salary of female versus male employees in the entire company until year 2002, 
( Bandingkan gaji rata-rata karyawan wanita dan pria di seluruh perusahaan hingga tahun 2002 ), 
  and add a filter allowing you to see that per each department
( dan tambahkan filter yang memungkinkan Anda melihatnya di setiap departemen )
*/

SELECT
    e.gender,
    d.dept_name,
    # ROUND(Fungsi membulatkan angka ke sejumlah tempat desimal tertentu ( AVG( tables with / without alias)
    ROUND(AVG(s.salary), 2) AS salary, 
    #YEAR(Fungsi menampilkan tahun '1999-01-01' -> YEAR('1999')
    YEAR(s.from_date) AS calendar_year # 
FROM
    t_salaries s
        JOIN								# Digabungkan Antara table yang memiliki Primary key(emp_no) yang sama
    t_employees e ON s.emp_no = e.emp_no
        JOIN								# Digabungkan Antara table yang memiliki Primary key(emp_no) yang sama
    t_dept_emp de ON de.emp_no = e.emp_no
        JOIN								# Digabungkan Antara table yang memiliki Primary key(emp_no) yang sama
    t_departments d ON d.dept_no = de.dept_no

#	dept_no 	| 	gender	| calendar_year(salaries.from_date) |    
#		1		|	  M		|				1999				|
#		2		|	  F		|				2001				|		
GROUP BY d.dept_no , e.gender , calendar_year
	
# Mempunyai tahun yang lebih kecil dari tahun 2002 
#					ATAU 
#			sama dengan tahun 2002
# 1998 < 2002 , 1999 < 2002 , 2002 = 2002
HAVING calendar_year <= 2002 

# Yang diurutkan kode department 1....n
ORDER BY d.dept_no;
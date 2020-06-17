use employees_mod;

/* 
Create a visualization that provides a breakdown between the male and female employees working 
(Buat visualisasi yang memberikan rincian antara karyawan pria dan wanita yang bekerja )

in the company each year, starting from 1990. 
(di perusahaan setiap tahun, mulai dari tahun 1990)
*/

SELECT 
    YEAR(td.from_date) AS Calender_Year ,
    te.gender,
    COUNT(te.emp_no) AS Num_Employees
	-- Pilih Column (from_date) 	Gender		  emp_no
       -- te.emp = t_employees te	=	te.emp = t_dept_emp td
       --					   GROUP BY	
       -- Data type year()	    <---->			Data Type count()
       -- 	  HAVING >= 1990   =  (>)1998 , (=)1990 , (>) 1992  
FROM
    t_employees te
        JOIN
    t_dept_emp td ON te.emp_no = td.emp_no
GROUP BY Calender_Year , te.gender
having Calender_Year >= 1990;

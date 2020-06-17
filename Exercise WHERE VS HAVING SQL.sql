/* 

Select the employee numbers of all individuals who have signed more than 1 contract after the 1st of January 2000.
(Pilih nomor karyawan semua individu yang telah menandatangani lebih dari 1 kontrak setelah 1 Januari 2000) 

*/

SELECT 
    emp_no, COUNT(emp_no)
FROM
    employees
WHERE
    hire_date = '2000-01-01'
GROUP BY emp_no
HAVING COUNT(emp_no) 
ORDER BY emp_no;

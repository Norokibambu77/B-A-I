/* This will be a slightly more sophisticated task
   (Ini akan menjadi tugas yang sedikit lebih canggih)
   
   Write a query that obtains an output whose first column must contain annual 
   (Tulis kueri yang memperoleh output yang kolom pertamanya harus berisi gaji tahunan)
   
   salaries higher than 80,000 dollars.
   (lebih tinggi dari 80.000 dolar)
   
   The second column, renamed to “emps_with_same_salary”, 
   (Kolom kedua, berganti nama menjadi "emps_with_same_salary",) 
   
   must show the number of employee contracts signed with this salary
   (harus menunjukkan jumlah kontrak karyawan yang ditandatangani dengan gaji ini)
   
   */
   
   SELECT 
    salary, COUNT(emp_no) as emps_with_same_salary
FROM
    salaries
WHERE
    salary > 80000
GROUP BY salary
ORDER BY salary; 
   
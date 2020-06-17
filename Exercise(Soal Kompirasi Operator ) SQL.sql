/* Retrieve a list with data about all female employees who were hired in the year 2000 or after.
   (Ambil daftar dengan data tentang semua karyawan wanita yang dipekerjakan pada tahun 2000 atau setelahnya)
   Hint: If you solve the task correctly, SQL should return 7 rows.
   (jika Anda menyelesaikan tugas dengan benar, SQL harus mengembalikan 7 baris)
   Extract a list with all employees’ salaries higher than $150,000 per annum
   (Ekstrak daftar dengan gaji semua karyawan lebih tinggi dari $ 150.000 per tahun)

*/

SELECT 
    *
FROM
    employees
    where hire_date > '2000-01-01' AND gender = 'F';
    
    
SELECT 
    *
FROM
    salaries
WHERE
    salary > 150000;
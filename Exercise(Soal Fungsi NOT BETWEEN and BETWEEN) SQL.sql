/* 
  Select all the information from the “salaries” table regarding contracts from 66,000 to 70,000 dollars per year.
  (Pilih semua informasi dari tabel "gaji" mengenai kontrak mulai dari 66.000 hingga 70.000 dolar per tahun).
   
   Retrieve a list with all individuals whose employee number is not between ‘10004’ and ‘10012’.
  (Ambil daftar dengan semua individu yang jumlah karyawannya tidak antara '10004' dan '10012').
   
   Select the names of all departments with numbers between ‘d003’ and ‘d006’
  (Pilih nama semua departemen dengan angka antara ‘d003’ dan ‘d006’)
  
*/

SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN 66000 AND 70000;
    
/* 10004' dan '10012 */;

SELECT 
    *
FROM
    employees
WHERE
    emp_no NOT BETWEEN 10004 AND 10012;

/* ‘d003’ dan ‘d006’ */
SELECT 
    *
FROM
    departments
WHERE
    dept_no BETWEEN 'd003' AND 'd006';
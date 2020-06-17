/* Use the IN operator to select all individuals from the 
   “employees” table, whose first name is either “Denis”, or “Elvis”.
*/
/*
 Gunakan operator IN untuk memilih semua individu dari tabel "karyawan", 
 yang nama depannya adalah "Denis", atau "Elvis".
*/

use employees;

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Denis' , 'Elvis');
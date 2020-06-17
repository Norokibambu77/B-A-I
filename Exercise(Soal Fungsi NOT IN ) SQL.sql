/* Extract all records from the ‘employees’ table, 
   aside from those with employees named John, Mark, or Jacob
   (Ekstrak semua catatan dari tabel 'karyawan', 
    selain dari mereka yang memiliki karyawan bernama John, Mark, atau Jacob)

*/

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('John' , 'Mark', 'Jacob');
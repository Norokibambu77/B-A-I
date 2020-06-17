/* Extract all individuals from the ‘employees’ table whose first name contains “Jack”.
   Once you have done that, extract another list containing the names of employees that
   do not contain “Jack”.
   (Ekstrak semua individu dari tabel 'karyawan' yang nama depannya berisi "Jack".
    Setelah Anda melakukannya, ekstrak daftar lain yang berisi nama-nama karyawan 
    yang tidak mengandung "Jack".)
*/

SELECT 
    *
FROM
    employees
WHERE
    FIRST_NAME LIKE('%Jack%');
    
SELECT 
    *
FROM
    employees
WHERE
    FIRST_NAME NOT LIKE('Jack%');
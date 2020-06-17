/*
How many annual contracts with a value higher than or equal to $100,000 have been registered in the salaries table?
(Berapa banyak kontrak tahunan dengan nilai lebih tinggi dari atau sama dengan $ 100.000 telah terdaftar di tabel gaji?)

How many managers do we have in the “employees” database? Use the star symbol (*) in your code to solve this exercise
(Berapa banyak manajer yang kita miliki dalam database "karyawan"? Gunakan simbol bintang (*) 
 dalam kode Anda untuk menyelesaikan latihan ini)

*/
use employees;
SELECT 
    COUNT(*)
FROM
    salaries
WHERE
    salary >= 100000;

SELECT 
    COUNT(*)
FROM
    dept_manager;
    
SELECT 
    COUNT(DISTINCT dept_name)
FROM
    departments;
/*
 How many departments are there in the “employees” database? Use the ‘dept_emp’ table to answer the question.
(Berapa banyak departemen yang ada di database "karyawan"? Gunakan tabel ‘dept_emp’ untuk menjawab pertanyaan)

*/

SELECT 
    COUNT(distinct dept_no)
FROM
    dept_emp; 
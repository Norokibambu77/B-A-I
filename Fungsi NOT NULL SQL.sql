/* Select the names of all departments whose department number value is not null
   (Pilih nama semua departemen yang nilai nomor departemennya tidak nol)

 */
 
 SELECT 
    *
FROM
    departments
WHERE
    dept_name IS NOT NULL;
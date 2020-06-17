/* Select all employees whose average salary is higher than $120,000 per annum
Pilih semua karyawan yang gajinya rata-rata lebih tinggi dari $ 120.000 per tahun

Hint: You should obtain 101 records.
Petunjuk : anda harus memperoleh 101 catatan.
*/
SELECT 
    *, AVG(salary)
FROM
    salaries
WHERE
    salary > 120000
GROUP BY emp_no
ORDER BY emp_no;

SELECT 
    *, AVG(salary), COUNT(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000

/*
What is the average annual salary paid to employees who started after the 1st of January 1997?

Berapa gaji tahunan rata-rata yang dibayarkan kepada karyawan yang dimulai setelah 1 Januari 1997?

*/
SELECT 
    AVG(salary)
FROM
    salaries
WHERE
    from_date < '1997-01-01';
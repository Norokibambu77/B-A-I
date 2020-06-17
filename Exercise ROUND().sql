/*
Round the average amount of money spent on salaries for all contracts that started after the 1st of January 1997 to a precision of cents.

Bulatkan jumlah rata-rata uang yang dihabiskan untuk gaji untuk semua kontrak yang dimulai setelah tanggal 1 Januari 1997 hingga ketepatan sen.

*/
SELECT 
    ROUND(AVG(salary))
FROM
    salaries
WHERE
    from_date < '1997-01-01';
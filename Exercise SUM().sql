/* What is the total amount of money spent on salaries for all contracts starting after the 1st of January 1997?

Berapa jumlah total uang yang dihabiskan untuk gaji untuk semua kontrak yang dimulai setelah 1 Januari 1997?
*/

SELECT 
    SUM(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01'; 
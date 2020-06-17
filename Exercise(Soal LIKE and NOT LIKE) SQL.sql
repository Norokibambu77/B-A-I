/*
Working with the “employees” table, use the LIKE operator to select the data about all individuals, 
whose first name starts with “Mark”; 
specify that the name can be succeeded by any sequence of characters.
(Bekerja dengan tabel "karyawan", gunakan operator LIKE untuk memilih data tentang semua individu, 
yang nama depannya dimulai dengan "Mark"; 
 tentukan bahwa nama tersebut dapat digantikan oleh urutan karakter apa pun)

Retrieve a list with all employees who have been hired in the year 2000.
(Ambil kembali daftar dengan semua karyawan yang telah dipekerjakan pada tahun 2000.)

Retrieve a list with all employees whose employee number is written with 5 characters, and starts with “1000”. 
(Ambil daftar dengan semua karyawan yang jumlah karyawannya ditulis dengan 5 karakter, 
 dan dimulai dengan "1000".)
*/

SELECT 
    *
FROM
    employees
WHERE
    first_name like ('Mark%');
    
SELECT 
    *
FROM
    employees
WHERE
	hire_date like ('%2000%');
    
SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_');
use employees;
SELECT 
    dm.emp_no, dm.dept_no, dm.to_date, e.emp_no, e.first_name
FROM
    dept_manager dm
        LEFT JOIN
    employees e ON e.emp_no = dm.emp_no;
    
/*
Join the 'employees' and the 'dept_manager' 
tables to return a subset of all the employees whose last name is Markovitch. 
See if the output contains a manager with that name
(Bergabunglah dengan tabel 'karyawan' dan 'dept_manager' 
untuk mengembalikan sebagian dari semua karyawan yang nama belakangnya adalah Markovitch. 
Lihat apakah output berisi manajer dengan nama itu)

/*
Hint: Create an output containing information corresponding to the following fields: 
‘emp_no’, ‘first_name’, ‘last_name’, ‘dept_no’, ‘from_date’. 
Order by 'dept_no' descending, and then by 'emp_no'

(Petunjuk: Buat output yang berisi informasi yang berkaitan dengan bidang-bidang berikut:
 ‘emp_no’, ‘first_name’, ‘last_name’, ‘dept_no’, ‘from_date’. 
 Dipesan dengan 'dept_no' turun, dan kemudian oleh 'emp_no'.
*/

SELECT 
    e.emp_no, e.last_name, e.last_name, dm.dept_no, dm.from_date
FROM
    employees e
        LEFT JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
WHERE
    e.last_name = 'Markovitch'
ORDER BY dept_no DESC;


#RIGHT JOIN 
SELECT 
    dm.emp_no,
    dm.dept_no,
    dm.from_date,
    e.emp_no,
    e.first_name,
    e.last_name
    
FROM
    employees e
        RIGHT JOIN
    dept_manager dm ON e.emp_no = dm.emp_no;

#INNER JOIN
SELECT 
    dm.emp_no,
    dm.dept_no,
    dm.from_date,
    e.emp_no,
    e.first_name,
    e.last_name
    
FROM
    employees e
        INNER JOIN
    dept_manager dm ON e.emp_no = dm.emp_no;

#CROSS JOIN
SELECT 
    e.*, dm.*
FROM
    employees e
        CROSS JOIN
    dept_manager dm
WHERE
    dm.to_date < '1999-01-01'
ORDER BY dm.emp_no , e.emp_no;


/*
Exercise 1
Use a CROSS JOIN to return a list with all possible combinations
between managers from the dept_manager table and department number 9
(Gunakan CROSS JOIN untuk mengembalikan daftar dengan semua kemungkinan kombinasi
 antara manajer dari tabel dept_manager dan nomor departemen 9)

*/
SELECT 
    dm.*, d.*
FROM
    departments d
        CROSS JOIN
    dept_manager dm
WHERE
    d.dept_no = 'd009'
ORDER BY d.dept_no;

/*
Exercise 2
Return a list with the first 10 employees with all the departments they can be assigned to.
Hint: Don't use LIMIT; use a WHERE clause.

Kembalikan daftar dengan 10 karyawan pertama dengan semua departemen tempat mereka dapat ditugaskan.
Petunjuk: Jangan gunakan LIMIT; gunakan klausa WHERE
*/

SELECT 
    e.*, d.*
FROM
    employees e
        CROSS JOIN
    departments d
WHERE
    e.emp_no < 10011
ORDER BY e.emp_no , d.dept_name;

/*
Select all managers’ first and last name, hire date, job title, start date, and department name.

Pilih nama depan dan belakang semua manajer, tanggal perekrutan, jabatan, tanggal mulai, dan nama departemen.
*/

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    t.title,
    dm.from_date,
    d.dept_name
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
        JOIN
    departments d ON dm.dept_no = d.dept_no
        JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
    t.title = 'Manager'
ORDER BY e.emp_no;
    
/*
How many male and how many female managers do we have in the ‘employees’ database?
(Berapa banyak pria dan berapa banyak manajer wanita yang kita miliki di database database karyawan ?)

*/

SELECT 
    e.gender, COUNT(e.gender) AS Female_Managers
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
GROUP BY gender;

#UNION AND UNION ALL JOIN
/*

Go forward to the solution and execute the query. What do you think is the meaning of the minus 
sign before subset A in the last row (ORDER BY -a.empid DESC)?
Maju ke solusi dan jalankan query. Menurut Anda, apa arti tanda minus 
sebelum subset A di baris terakhir(ORDER BY -a.empid DESC)?

*/

SELECT 
    *
FROM
    (SELECT 
			e.emp_no,
            e.first_name,
            e.last_name,
            NULL AS dept_no,
            NULL AS from_date
    FROM
        employees e
    WHERE
        last_name = 'Denis' UNION SELECT 
        NULL AS emp_no,
            NULL AS first_name,
            NULL AS last_name,
            dm.dept_no,
            dm.from_date
    FROM
        dept_manager dm) AS a
ORDER BY a.emp_no DESC;


-- example

SELECT 
    dm.dept_no
FROM
    dept_emp dm
UNION SELECT 
    d.dept_name
FROM
    departments d;

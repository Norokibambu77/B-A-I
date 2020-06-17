use employees;
SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    CASE			# Fungsi Kasus Dimana
					# no_emp (no pegawai tidak NULL maka ia manager
                    # Lainnya adalah pegawai
        WHEN 
			dm.emp_no IS NOT NULL THEN 'Manager'
        ELSE 
			'Employee'
    END AS is_manager	# Memberikan Akhiran Alias dalam Kasus
						# Yang memiliki no pegawai adalah pegawai
                        # tidak memiliki no pegawai adalah manager
FROM
    employees e
						#
        LEFT JOIN
    dept_manager dm ON dm.emp_no = e.emp_no
WHERE
    e.emp_no > 109990 
    limit 10;
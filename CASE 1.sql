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
    END AS is_manager		# Memberikan Akhiran Alias dalam Kasus
				# Yang memiliki no pegawai adalah pegawai
                        	# tidak memiliki no pegawai adalah manager
FROM
    employees e
				#Example
				# 	 table employees        | table dept_manger
				# emp_no|first_name|last_name|	| emp_no|    
        			#    1  |  Am	   |  Ba        |   1
LEFT JOIN
    dept_manager dm ON dm.emp_no = e.emp_no
WHERE
    e.emp_no > 109990  #  109990 , 109991 , 109992 , 109993 , 109994 , 109995 , 109996 , 109997 , 109998 , 109999 ,
    limit 10;	       #  Fungsi Membatasi yang dapat dipilh

/* Write and execute a SQL query to list the school names, 
community names and average attendance for communities with a 
hardship index of 98. */
select sc.name_of_school, sc.community_area_name, 
	sc.average_student_attendance
	from CHICAGO_PUBLIC_SCHOOLS sc 
	left join CENSUS_DATA cn 
	on sc.COMMUNITY_AREA_NUMBER=cn.COMMUNITY_AREA_NUMBER
	where cn.hardship_index=98;
/* Write and execute a SQL query to list all crimes that 
took place at a school. Include case number, crime type 
and community name. */
select cr.case_number, cr.primary_type, cn.community_area_name 
	from CHICAGO_CRIME_DATA cr 
	left join CENSUS_DATA cn 
	on cr.COMMUNITY_AREA_NUMBER=cn.COMMUNITY_AREA_NUMBER
	where UPPER(cr.location_description) like '%SCHOOL%';
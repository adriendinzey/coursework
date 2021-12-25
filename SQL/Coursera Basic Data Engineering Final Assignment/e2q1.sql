/* Write and execute a SQL statement that returns just the 
school name and leaders’ icon from the view. */

CREATE OR REPLACE VIEW SCHOOL_LEADERS (School_Name,Safety_Rating,Family_Rating,
	Environment_Rating,Instruction_Rating,Leaders_Rating,Teachers_Rating)
	as SELECT NAME_OF_SCHOOL,Safety_Icon,Family_Involvement_Icon,
	Environment_Icon,Instruction_Icon,Leaders_Icon,Teachers_Icon
	FROM CHICAGO_PUBLIC_SCHOOLS;

SELECT School_Name, Leaders_Rating from SCHOOL_LEADERS;


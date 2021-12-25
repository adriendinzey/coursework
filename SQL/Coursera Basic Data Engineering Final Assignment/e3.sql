-- Creating an SQL Stored Procedure that updates scores based 
-- On given parameters and conditions
--#SET TERMINATOR @
CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_SCORE 
(IN in_School_ID integer, IN in_Leader_Score integer)      
-- Name of this stored procedure routine

LANGUAGE SQL                        
-- Language used in this routine 
MODIFIES SQL DATA                      
-- This routine will modify data from the table

BEGIN 
	UPDATE CHICAGO_PUBLIC_SCHOOLS
	SET Leaders_Score = in_Leader_Score
	WHERE SCHOOL_ID=in_School_ID;
	
	IF in_Leader_Score > 0 AND in_Leader_Score < 20 THEN
	UPDATE CHICAGO_PUBLIC_SCHOOLS
	SET Safety_Icon = 'Very Weak';
	
	ELSEIF in_Leader_Score < 40 THEN
	UPDATE CHICAGO_PUBLIC_SCHOOLS
	SET Safety_Icon = 'Weak';
	
	ELSEIF in_Leader_Score < 60 THEN
	UPDATE CHICAGO_PUBLIC_SCHOOLS
	SET Safety_Icon = 'Average';
	
	ELSEIF in_Leader_Score < 80 THEN
	UPDATE CHICAGO_PUBLIC_SCHOOLS
	SET Safety_Icon = 'Strong';
	
	ELSEIF in_Leader_Score < 100 THEN
	UPDATE CHICAGO_PUBLIC_SCHOOLS
	SET Safety_Icon = 'Very Strong';	
	ELSE
	ROLLBACK WORK;
	END IF;
	COMMIT WORK;
END
@-- Routine termination character
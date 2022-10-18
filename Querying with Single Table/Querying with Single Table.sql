# Provide a list of students whose first name starts with ‘B’ or who live in Seattle
SELECT * FROM students 
WHERE Studcity = 'Seattle' OR StudFirstName like 'B%'
ORDER BY StudFirstName;

# Show me an alphabetical list of all the staff members and their salaries if they make between $40,000 and $50,000 a year
SELECT concat(StfFirstName,'  ',StfLastname) AS 'Full Name', Salary FROM staff 
WHERE Salary BETWEEN 40000 AND 50000 
ORDER BY ‘StfFirstName’;

# Show me the engagements that run for at least 3 days
SELECT * FROM engagements 
WHERE EndDate-StartDate >=3 
AND StopTime>=StartTime
ORDER BY EngagementNumber;

# Provide a list of staff members and their salaries if they make at least $35000 a year
SELECT StaffID, StfFirstName, Stflastname, Salary 
FROM staff 
WHERE Salary >= 35000 
ORDER BY StfFirstName;

# Provide a list of recipes that contain eggs in their preparation
SELECT RecipeID, RecipeTitle 
FROM recipes 
WHERE upper(Preparation) LIKE ("%EGGS%");
# Display all tournaments and any matches that have been played.
USE bowlingleaguedb;
SELECT DISTINCT  TG.MatchID, T.TourneyID, T.TourneyDate, T.TourneyLocation
FROM tournaments T JOIN tourney_matches TG ON T.TourneyID = TG.TourneyID
ORDER BY 1;

# Produce a list of customers who like contemporary music together with a list of entertainers who play contemporary music.
USE entertainmentagencydb;
SELECT MP.CustomerID, MS.StyleID, E.EntStageName, C.CustFirstName
FROM musical_styles MS 
JOIN musical_preferences MP ON MS.StyleID = MP.StyleID
JOIN customers C ON MP.CustomerID = C.CustomerID 
JOIN entertainer_styles ES ON ES.StyleID = MS.StyleID
JOIN entertainers E ON E.EntertainerID = ES.EntertainerID
WHERE MS.StyleID = 10
ORDER BY 4, 3, 2, 1;

# List customers who have booked entertainers who play country or country rock.
USE entertainmentagencydb;
SELECT DISTINCT CONCAT (C.CustFirstName, ' ', C.CustLastName) CustName
FROM musical_styles MS JOIN musical_preferences MP ON MS.StyleID = MP.StyleID
JOIN customers C ON MP.CustomerID = C.CustomerID
JOIN engagements E ON E.CustomerID = C.CustomerID
JOIN entertainer_styles ES ON ES.EntertainerID = E.EntertainerID
WHERE MS.StyleID = 6 OR 11;

# Display students enrolled in a class on Tuesday.
USE schoolschedulingdb;
SELECT DISTINCT S.StudentID, CONCAT (S.StudFirstName, ' ', S.StudLastName) StudName
FROM students S JOIN student_schedules SS ON S.StudentID = SS.StudentID
JOIN classes C ON C.ClassID = SS.ClassID
WHERE C.TuesdaySchedule = 1;

# List the ingredients that are used in some recipe where the measurement amount in the recipe is not the default measurement amount
USE recipedb;


# List each staff member and the count of classes each is scheduled to teach.
USE schoolschedulingdb;


# Show me the subject categories that have fewer than three full professors teaching that subject.
USE schoolschedulingdb;


# List the last name and first name of every bowler whose average raw score is greater than or equal to the overall average score.
USE bowlingleaguedb;


# For what class of recipe do I have two or more recipes
USE recipedb;




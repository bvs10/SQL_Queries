# Show me the vendors and the products they supply to us for products that cost less than $100
USE salesordersdb;
SELECT V.VendName, P.ProductName
FROM vendors V JOIN product_vendors PV ON V.VendorID = PV.VendorID
JOIN products P ON P.ProductNumber = PV. ProductNumber
WHERE PV.WholeSalePrice < 100
ORDER BY ProductName, VendName;

# Find the agents and entertainers who live in the same postal code.
USE entertainmentagencydb;
SELECT E.EntStageName, CONCAT (AgtFirstName, ' ', AgtLastName) AgtName
FROM agents A JOIN entertainers E ON E.EntZipCode = A.AgtZipCode
ORDER BY EntStageName, AgtName;

# Display all recipe classes and any recipes that might be associated with them.
USE recipedb;
SELECT RC.RecipeClassDescription, R.RecipeTitle
FROM recipe_classes RC LEFT OUTER JOIN recipes R ON RC.RecipeClassID = R.RecipeClassID
ORDER BY 1, 2;

# What products have never been ordered?
USE salesordersdb;
SELECT P.ProductName
FROM products P LEFT OUTER JOIN order_details OD ON P.ProductNumber= OD.ProductNumber
WHERE OD.ProductNumber IS NULL;

USE salesordersdb;
SELECT 	DISTINCT P.ProductName, P.ProductNumber
FROM products P LEFT OUTER JOIN order_details OD ON P.ProductNumber= OD.ProductNumber

# List the subjects taught on Wednesday.;
USE schoolschedulingdb;
SELECT DISTINCT S.SubjectID, S.SubjectName
FROM subjects S JOIN classes C ON S.SubjectID = C.SubjectID
WHERE C.WednesdaySchedule = 1
ORDER BY 1, 2;

# Find the entertainers who played engagements for customers Berg or Hallmark
USE entertainmentagencydb;
SELECT DISTINCT Ent.EntertainerID, Ent.EntStageName
FROM entertainers Ent JOIN engagements E ON Ent.EntertainerID = E.EntertainerID
ORDER BY 1;


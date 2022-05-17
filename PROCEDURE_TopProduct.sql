CREATE PROCEDURE TopProduct_PROCEDURE
--ALTER PROCEDURE TopProduct_PROCEDURE
AS
SELECT TOP 10 P.Product_Name, P.Category, SUM(SD.Total_Cost) AS Total_Cost
FROM [staj].[dbo].[Product] P

LEFT JOIN [staj].[dbo].[Sales_Detail] SD ON SD.Product_ID= P.ID


GROUP BY P.Product_Name, P.Category ORDER BY Total_Cost DESC

--TopProduct_PROCEDURE
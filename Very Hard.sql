USE GI;

INSERT INTO cars2 (Year, Make, Model) VALUES
	(2022, 'RAM','Laramie'),
    (2020, 'Toyota','Camry'),
    (2018, 'Chevy','Malibu')
;
ALTER TABLE cars2
ADD COLUMN Color VARCHAR(20),
ADD COLUMN Price DECIMAL(10,2);

UPDATE cars2
SET Color = "White", Price = 65000.00
WHERE Id = 1;
UPDATE cars2
SET Color = "Black", Price = 40000.00
WHERE Id = 2;
UPDATE cars2
SET Color = "Silver", Price = 15000.00
WHERE Id = 3;
-- Write a query to put the Make and Model together in one column
SELECT CONCAT(Make, ' ', Model) AS "Make and Model", Year, Color, Price FROM cars2;
-- Create a new query that adds an additional column to the results to show how many cars have the same Make.
SELECT Make, COUNT(*)
FROM cars2
GROUP BY Make
HAVING COUNT(*) > 0;

INSERT INTO cars2 (Year, Make, Model) VALUES
	(2022, 'RAM','Laramie'),
    (2020, 'Toyota','Camry'),
    (2018, 'Chevy','Malibu')
   
   -- Create a new query that adds an additional column to the results to show how many cars have the same Make.
   SELECT Make, COUNT(*)
FROM cars2
GROUP BY Make
HAVING COUNT(*) > 1;

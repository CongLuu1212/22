USE AdventureWorks2019
GO

--Lay Ra Du Lieu Cua Bang Contact Co ContactID >= 100 va ContactID <= 200
SELECT *
FROM Person.Person
WHERE BusinessEntityID >= 100 AND BusinessEntityID <= 200

--Lay Ra Du Lieu Cua Bang ContactID Trong Khoang [100, 200]
SELECT * FROM Person
WHERE BusinessEntityID BETWEEN 100 AND 200

SELECT *
FROM Person.Person
WHERE BusinessEntityID BETWEEN 10 AND 20

--Lay Ra Du Lieu Cua Bang Contact Co ContactID Trong Tap Hop (100, 107, 200)
SELECT * FROM Person.Person
WHERE BusinessEntityID IN (100, 107, 200, 2210)

SELECT *
FROM Person.Person
WHERE MiddleName IN ('B','M','T')

--Lay Ra Nhung Contact Co LastName Ket Thuc Boi Ky Tu e (WILDCARD LIKE  SQL Microsoft)
SELECT * FROM Person.Person
WHERE LastName LIKE '%e'
--Lay Ra Nhung Contact Co LastName Bat Dau Boi Ky Tu R Hoac A Ket Thuc Boi Ky Tu e
WHERE LastName LIKE '[RA]%e'
--Lay Ra Nhung Cotact Co LastName Co 4 Ky Tu Bat Dau Boi Ky Tu R Hoac A Ket Thuc Boi Ky Tu e
SELECT * FROM Person.Person
WHERE LastName LIKE '[RA]_e'

--Su dung DISTINCT cac du lieu trung lap bi loai bo
SELECT DISTINCT Title FROM Person.Person

--Su dung GROUP BY cac du lieu trung lap duoc gop thanh nhom
-- aggregate function : sum, max, min, count, avg ..
SELECT Count(BusinessEntityID) as TotalID, Title
FROM Person.Person
GROUP BY Title

SELECT Title, COUNT(*) [Title Number]
FROM Person.Person
GROUP BY Title

SELECT * FROM Sales.SalesPerson
SELECT * FROM Person.Person

SELECT * FROM Person.Person
WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM Sales.SalesPerson)

SELECT * FROM Person.Person INNER JOIN Sales.SalesPerson
ON Person.BusinessENtityID = SalesPerson.BusinessEntityID

SELECT * FROM Person.Person LEFT OUTER JOIN Sales.SalesPerson
ON Person.BusinessENtityID = SalesPerson.BusinessEntityID

SELECT * FROM Person.Person RIGHT OUTER JOIN Sales.SalesPerson
ON Person.BusinessENtityID = SalesPerson.BusinessEntityID
--Ta co the su dung  menh de WHERE de thoa man dieu kien tim kiem
SELECT Title, COUNT(*)
FROM Person.Person
GROUP BY Title

SELECT Count(BusinessEntityID) AS CountBUS, Title
FROM Person.Person
WHERE EmailPromotion IN (1,2)
GROUP BY Title
HAVING COUNT(BusinessEntity


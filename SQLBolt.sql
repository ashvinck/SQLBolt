-- Tasks of SQLBolt Series

-- Exercise 1 Commands
1. SELECT TITLE FROM movies;
2. SELECT Director FROM movies;
3. SELECT TITLE, DIRECTOR FROM movies;
4. SELECT title,year FROM Movies;
5. SELECT * FROM Movies;

-- Exercise 2 Commands
1. SELECT * FROM movies where id = 6;
2. SELECT * FROM movies where YEAR BETWEEN 2000 AND 2010;
3. SELECT * FROM movies where YEAR NOT BETWEEN 2000 AND 2010;
4. SELECT TITLE,YEAR FROM movies where id <6;

-- Exercise 3 Commands
1. SELECT * FROM movies where title LIKE"Toy Story%" ;
2. SELECT * FROM movies where Director LIKE "John Lasseter" ;
3. SELECT * FROM movies where Director NOT LIKE "John Lasseter" ;
4. SELECT * FROM movies where Title LIKE "WALL%" ;

-- Exercise 4 Commands
1. SELECT DISTINCT Director FROM movies ORDER BY Director ASC ;
2. SELECT * FROM movies ORDER BY Year DESC  LIMIT 4;
3. SELECT * FROM movies ORDER BY title ASC LIMIT 5;
4. SELECT * FROM movies ORDER BY title ASC LIMIT 5 OFFSET 5;


-- Review 1 - TASKS
1. SELECT City,Population FROM north_american_cities WHERE country LIKE "Canada";
2. SELECT * FROM north_american_cities WHERE Country like "United States" ORDER BY Latitude DESC;
3. SELECT * FROM north_american_cities WHERE Longitude < -87.629798  ORDER BY Longitude ASC 
4. SELECT City FROM north_american_cities WHERE Country="Mexico"  ORDER BY Population DESC LIMIT 2;
5. SELECT City, Population FROM north_american_cities WHERE Country="United States"  ORDER BY Population DESC LIMIT 2 OFFSET 2;

-- Exercise 6 Commands
1. SELECT * FROM movies INNER JOIN Boxoffice ON Movies.Id = Movie_id;
2. SELECT * FROM movies INNER JOIN Boxoffice ON Movies.Id = Movie_id where Domestic_sales < International_sales;
3. SELECT * FROM movies INNER JOIN Boxoffice ON Movies.Id = Movie_id ORDER BY Rating DESC;

-- Exercise 7 Commands
1. SELECT DISTINCT Building FROM employees LEFT JOIN Buildings ON Building_name = Role;
2. SELECT * FROM Buildings
3. SELECT DISTINCT Role,Building_name FROM Buildings LEFT JOIN Employees ON  Building_name = Building ;

-- Exercise 8 Commands
1. SELECT * FROM employees where Building is NULL;
2. SELECT * FROM buildings LEFT JOIN Employees ON Building_name =  Building Where Role is NULL ;

-- Exercise 9 Commands
1. SELECT title,(Domestic_sales + International_sales)/ 1000000 as TotalGross FROM movies INNER JOIN Boxoffice ON Id = Movie_id;
2. SELECT Title , rating*10 as Rating_In_Percent FROM movies INNER JOIN Boxoffice ON Id = Movie_id;
3. SELECT * FROM movies where year % 2 = 0;

-- Exercise 10 Commands
1. SELECT  MAX(Years_employed) FROM employees;
2. SELECT *, AVG(Years_employed) as AverageYears FROM employees GROUP BY Role;
3. SELECT *, SUM(Years_employed) as AverageYears FROM employees GROUP BY Building;

-- Exercise 11 Commands
1. SELECT Role, count(Role) FROM employees where Role="Artist";
2. SELECT Role, count(Role) FROM employees group by Role;
3. SELECT Role, SUM(Years_employed) as Total_Years FROM employees where Role="Engineer";

-- Exercise 12 Commands
1. SELECT Director, count(Director) as Count FROM movies Group by Director;
2. SELECT Director, SUM(Domestic_sales + International_sales)  as TotalCollection FROM movies INNER JOIN Boxoffice ON Id = Movie_id group by director;

-- Exercise 13 Commands
1. INSERT INTO Movies
(Title, Director, Year, Length_minutes)
VALUES ("Toy Story 4", "John Lasseter", 2010, 120);
2. INSERT INTO Boxoffice
(Movie_id,Rating,Domestic_sales,International_sales)
VALUES ( 4, 8.7, 340000000, 270000000 );
Select * from Movies

-- Exercise 14 Commands
1. UPDATE Movies
SET Director = "John Lasseter"
WHERE Id = 2;
2. UPDATE Movies
SET Year = 1999
WHERE Id = 3;
3. UPDATE Movies
SET Title = "Toy Story 3", Director = "Lee Unkrich"
WHERE Id = 11;

-- Exercise 15 Commands
1. SELECT * FROM movies;
DELETE From Movies
WHERE Year < 2005;
2. SELECT * FROM movies;
DELETE From Movies
WHERE Director = "Andrew Stanton";

-- Exercise 16 Commands
1. CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    title TEXT,
    director TEXT,
    year INTEGER, 
    length_minutes INTEGER
);

-- Exercise 17 Commands
1. SELECT * FROM movies;
ALTER TABLE Movies
ADD Aspect_ratio FLOAT
;
2. SELECT * FROM movies;
ALTER TABLE Movies
ADD Language TEXT
DEFAULT English
;

-- Exercise 18 Commands
1. DROP TABLE Movies;
2. DROP TABLE Boxoffice;

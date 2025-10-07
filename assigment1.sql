/*Name: Hebatallah
Assignment 1*/
/*Query 1*/
Select * from Courses -- the * means all
/*Query 2*/ --use semicolon to make sure its done, this is just good practise to get into
Select CourseNumber, CourseDescription, CourseUnits --the specfic three are listed instead of using a *
from Courses
Order By CourseNumber ASC; --learned this from a video as well after trying to find how to do is from ascending order, saw in the book that it wasnt needed but I just wanna be safe

--Query 3
Select LastName + ', ' + FirstName as FullName --found it in the book!
from Students
where LastName like '[A-M]%' --learnt this from a youtube short and saw in the book in chap 3 page 89
order by LastName ASC; --learned this from a video as well after trying to find how to do is from ascending order

--Query 4
Select LastName, FirstName, AnnualSalary --the specific 3
From Instructors --from the instructors table
where AnnualSalary >= 60000 -- the annual salary must be equal to or greater than 60,000
Order by AnnualSalary DESC; --order by descending sequence using the annual salary 

--Query 5
Select LastName, FirstName, HireDate --the specific three
From Instructors --from the table
Where Year(HireDate) = 2019 --from the specific year row
Order by HireDate ASC; --order by ascending order

--Query 6
Select FirstName, LastName, EnrollmentDate,
GETDATE() as CurrentDate,  --actual current date
DATEDIFF(Month, EnrollmentDate, GETDATE()) AS MonthsAttended  --months attended using the datediff!!
from Students
order by MonthsAttended ASC;  -- in ascending order

--Query 7
Select top 20 percent --select the top 20 percent 
FirstName, LastName, AnnualSalary --the three specific 
From Instructors --from the intruct table
Order by AnnualSalary DESC; --order by salary use desc to get the top 20

--Query 8
Select FirstName, LastName --selct the specifc two
from Students --from the student table 
where LastName like 'G%' --using the like just like the other query! this will be last name that start with g
order by LastName ASC; --order by ascending order

--Query 9
Select LastName, FirstName, EnrollmentDate, GraduationDate --select the specifc
From Students --from the student table 
Where EnrollmentDate > '12-01-2019'  -- the enrollment date must be greater then the specific date 
and GraduationDate is Null --where the grade date must be null 

-- Query 10
Select FullTimeCost, PerUnitCost, --select the specific 
12 as Units,  -- units are eq to 12
(PerUnitCost * 12) AS TotalPerUnitCost,  -- the calculation
(FullTimeCost + (PerUnitCost * 12)) as TotalTuition  -- the calculation
from Tuition; --from the tuition table





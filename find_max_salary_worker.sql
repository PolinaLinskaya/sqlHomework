SELECT Name, Salary
FROM Worker
WHERE Salary = (SELECT MAX(Salary) FROM Worker);
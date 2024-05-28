SELECT 
    Project.Name, 
    SUM(Worker.Salary) * DATEDIFF(MONTH, Project.START_DATE, Project.FINISH_DATE) AS PRICE
FROM 
    Project
JOIN 
    Project_Worker ON Project.ID = Project_Worker.ProjectId
JOIN 
    Worker ON Project_Worker.WorkerId = Worker.ID
GROUP BY 
    Project.Name, 
    Project.START_DATE, 
    Project.FINISH_DATE
ORDER BY 
    PRICE DESC;
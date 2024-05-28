SELECT Client.Name, COUNT(Project.ProjectId) AS Project_Count
FROM Client
JOIN Project ON Client.ClientId = Project.ClientId
GROUP BY Client.Name
HAVING COUNT(Project.ProjectId) = (
    SELECT MAX(Project_Count)
    FROM (
        SELECT COUNT(Project.ProjectId) AS Project_Count
        FROM Client
        JOIN Project ON Client.ClientId = Project.ClientId
        GROUP BY Client.ClientId
    ) AS ProjectCounts
)
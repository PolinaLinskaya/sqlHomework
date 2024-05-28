SELECT 'YOUNGEST' AS TYPE, Name, Birthday
FROM Worker
WHERE Birthday = (SELECT MAX(Birthday) FROM Worker)

SELECT 'ELDEST' AS TYPE, Name, Birthday
FROM Worker
WHERE Birthday = (SELECT MIN(Birthday) FROM Worker);
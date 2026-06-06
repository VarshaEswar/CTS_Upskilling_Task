SELECT 
    event_id,
    COUNT(session_id) AS session_count
FROM Sessions
GROUP BY event_id
HAVING COUNT(session_id) = (
    SELECT COUNT(session_id) 
    FROM Sessions 
    GROUP BY event_id 
    ORDER BY COUNT(session_id) DESC 
    LIMIT 1
);
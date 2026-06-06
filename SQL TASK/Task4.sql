SELECT 
    event_id,
    COUNT(session_id) AS total_sessions_10am_12pm
FROM Sessions
WHERE TIME(start_time) >= '10:00:00' 
  AND TIME(end_time) <= '12:00:00'
GROUP BY event_id;
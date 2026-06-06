SELECT 
	u.full_name AS User_Name,
    u.city AS User_City,
    e.title AS Event_Name,
    e.city AS Event_City,
    e.start_date AS Event_Date
FROM 
	Users u
JOIN
	Registrations r ON u.user_id = r.user_id
JOIN
	Events e ON r.event_id = e.event_id
WHERE 
	e.status= 'upcoming' AND e.city = u.city 
ORDER BY
	e.start_date;
    
    
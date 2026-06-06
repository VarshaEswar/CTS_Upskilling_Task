SELECT 
    u.user_id,
    u.full_name,
    (SELECT COUNT(r.registration_id) FROM Registrations r WHERE r.user_id = u.user_id) AS events_registered,
    (SELECT COUNT(f.feedback_id) FROM Feedback f WHERE f.user_id = u.user_id) AS feedbacks_submitted
FROM Users u;
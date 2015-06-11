-- SELECT HOUR(joined_datetime) AS date_hour, joined_datetime FROM clients;
-- SELECT DAYNAME(joined_datetime) AS day_of_week, joined_datetime FROM clients;
-- SELECT MONTH(joined_datetime) AS month_only, joined_datetime FROM clients;
-- SELECT NOW() AS right_now;

SELECT DATE_FORMAT(joined_datetime, "%W %M %e, %Y") FROM clients;
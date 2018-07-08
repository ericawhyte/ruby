SELECT * FROM patients WHERE last_name LIKE '%mit%'

SELECT * FROM discharged_at WHERE dtm >= CAST((NOW()) AS DATE) AND dtm < CAST((NOW() + INTERVAL 1 DAY) AS DATE)

SELECT * FROM encounters WHERE admitted_at BETWEEN '07/05/2014 00:00:00' AND '08/20/2014 00:00:00'
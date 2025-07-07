# Performance Monitoring Report

## Tools Used
- EXPLAIN ANALYZE to examine query execution.
- Focused on frequently used JOIN and WHERE clause queries.

## Query Monitored
```sql
SELECT * 
FROM bookings 
JOIN users ON bookings.user_id = users.id 
WHERE bookings.start_date BETWEEN '2023-01-01' AND '2023-12-31';

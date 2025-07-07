# Optimization Report

##  Original Query
The original query joins 4 tables: bookings, users, properties, and payments.
It selected multiple columns which may not all be necessary.

### Issues Identified with `EXPLAIN`:
- Full table scans on `users` and `properties`.
- Too many columns selected.
- No indexes used.

##  Optimization Applied
- Reduced selected columns to only necessary data.
- Ensured indexes were created on `user_id`, `property_id`, and `payment_id` columns in previous task.
- Re-analyzed with `EXPLAIN` and noticed reduced cost and faster lookup time.

##  Performance Improvement
Execution time and cost decreased significantly based on EXPLAIN output.

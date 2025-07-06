# Index Performance Report

## Objective

Create indexes on frequently queried columns to improve performance of JOINs, WHERE, and ORDER BY queries.

---

## Created Indexes

| Table       | Column        | Index Name                  |
|-------------|---------------|-----------------------------|
| users       | email         | idx_users_email             |
| bookings    | user_id       | idx_bookings_user_id        |
| bookings    | property_id   | idx_bookings_property_id    |
| properties  | city          | idx_properties_city         |
| properties  | price         | idx_properties_price        |

---

## Performance Analysis

### Sample Query: Before Index

```sql
EXPLAIN SELECT * FROM users WHERE email = 'test@example.com';

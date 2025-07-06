# SQL Join Queries – Airbnb Clone

This script demonstrates SQL join operations for the backend database.

## 1. INNER JOIN – Bookings and Users
Retrieves all bookings along with the user who made the booking.

## 2. LEFT JOIN – Properties and Reviews
Retrieves all properties, even those that don't have reviews.

## 3. FULL OUTER JOIN – Users and Bookings
Retrieves all users and bookings, including unmatched records using `UNION`.


# Advanced SQL Queries – Subqueries

## File: subqueries.sql

This file contains:
- A subquery to find properties with an average rating greater than 4.0
- A correlated subquery to identify users who have made more than 3 bookings


# Aggregation and Window Functions in SQL

## File: aggregations_and_window_functions.sql

This file contains two advanced SQL queries:

1. **Aggregation with COUNT and GROUP BY**  
   - Finds the total number of bookings made by each user.

2. **Window Function with RANK()**  
   - Ranks properties based on the total number of bookings they have received.



# Partitioning Performance Report

## Goal:
Optimize the performance of querying a large `bookings` table by partitioning it by `start_date`.

## Steps Taken:
- Created a partitioned version of the `bookings` table.
- Partitioned data by year (2022, 2023, 2024).
- Ran a query using `EXPLAIN ANALYZE` to measure performance on a specific date range.

## Results:
- Before partitioning: Query scanned the entire bookings table.
- After partitioning: Query only scanned the relevant partition.
- Observed reduction in execution time for queries using date range.

## Conclusion:
Partitioning significantly improves performance when filtering by `start_date`.

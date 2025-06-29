# Database Normalization to 3NF

This document explains how the Airbnb Clone database schema has been normalized to achieve **Third Normal Form (3NF)**.

---

## First Normal Form (1NF)

**Rule**: Eliminate repeating groups and ensure each field contains only atomic (indivisible) values.

✅ All tables follow 1NF.  
Each column contains atomic values only (e.g., `first_name`, `price_per_night`, `email`, etc.).

---

##  Second Normal Form (2NF)

**Rule**: Be in 1NF and remove partial dependencies (i.e., no attribute should depend only on part of a composite key).

✅ All tables have primary keys using a **single unique identifier (UUID)**.  
There are no partial dependencies.

---

##  Third Normal Form (3NF)

**Rule**: Be in 2NF and remove transitive dependencies (i.e., non-key attributes must not depend on other non-key attributes).

✅ The design has been checked for transitive dependencies. Examples:

- In the `User` table, `role`, `email`, `password_hash` all depend only on `user_id`.
- In `Property`, fields like `location`, `price_per_night` all depend directly on `property_id`.
- `Booking`, `Payment`, `Review`, and `Message` are correctly referencing foreign keys without duplication or derived data.

---

## ✅ Conclusion

The schema is designed in such a way that it complies with **3NF**, ensuring:
- No redundancy
- No partial or transitive dependency
- High data integrity and efficiency

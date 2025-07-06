-- Create index on users.email
CREATE INDEX idx_users_email ON users(email);

-- Create index on bookings.user_id
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create index on bookings.property_id
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Create index on properties.city
CREATE INDEX idx_properties_city ON properties(city);

-- Create index on properties.price
CREATE INDEX idx_properties_price ON properties(price);

-- Use EXPLAIN ANALYZE to demonstrate performance
EXPLAIN ANALYZE SELECT * FROM users WHERE email = 'test@example.com';

EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 5;

EXPLAIN ANALYZE
SELECT p.*
FROM properties p
JOIN bookings b ON p.id = b.property_id
WHERE p.city = 'Nairobi';


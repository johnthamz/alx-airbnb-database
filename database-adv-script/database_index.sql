-- Create index on users.email to speed up login or search by email
CREATE INDEX idx_users_email ON users(email);

-- Create index on bookings.user_id to speed up joins
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create index on bookings.property_id to speed up joins with properties
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Create index on properties.city for quick search by location
CREATE INDEX idx_properties_city ON properties(city);

-- Create index on properties.price for sorting or filtering by price
CREATE INDEX idx_properties_price ON properties(price);

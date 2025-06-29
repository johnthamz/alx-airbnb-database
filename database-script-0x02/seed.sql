-- Sample Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('333f7890-g34b-34s2-q123-624423462002', 'Mark', 'Mesok', 'mesomark43@gmail.com', 'hashedpassword1', '07227563423', 'guest'),
('555e2345-e76b-34d4-a789-123414174001', 'Bob', 'Smith', 'smithbob12@gmail.com', 'hashedpassword2', '07345678434', 'host');

-- Sample Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
('prop-001', '555e2345-e76b-34d4-a789-123414174001', 'Oceanview Apartment', '2-bedroom near the beach', 'Mombasa, Kenya', 120.00),
  ('prop-002', '555e2345-e76b-34d4-a789-123414174001', 'City Loft', '3-Bedroom master n suit', 'Malindi, Kenya', 355.00);

-- Sample Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('book-001', 'prop-001', '333f7890-g34b-34s2-q123-624423462002', '2025-07-01', '2025-07-10', 3550.00, 'confirmed');

-- Sample Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
('pay-001', 'book-001', 3550.00, 'credit_card');

-- Sample Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
('rev-001', 'prop-001', '333f7890-g34b-34s2-q123-624423462002', 5, 'Amazing stay with a great view!');

-- Sample Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
('msg-001', '333f7890-g34b-34s2-q123-624423462002', '555e2345-e76b-34d4-a789-123414174001', 'Hi Bob, is the property available from 1st to 10th of July ?');

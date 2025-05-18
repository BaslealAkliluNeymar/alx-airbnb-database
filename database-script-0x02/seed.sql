INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES 
('11111111-1111-1111-1111-111111111111', 'Alice', 'Smith', 'alice@example.com', 'hashed_pw1', '1234567890', 'guest', NOW()),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Johnson', 'bob@example.com', 'hashed_pw2', '0987654321', 'host', NOW());


INSERT INTO Properties (property_id, host_id, name, description, location, price_per_night, created_at, updated_at)
VALUES 
('33333333-3333-3333-3333-333333333333', '22222222-2222-2222-2222-222222222222', 'Sea View Apartment', 'Nice view of the sea', 'Miami, FL', 150.00, NOW(), NOW());

INSERT INTO Bookings (booking_id, property_id, user_id, start_date, end_date, total_price, created_at)
VALUES 
('44444444-4444-4444-4444-444444444444', '33333333-3333-3333-3333-333333333333', '11111111-1111-1111-1111-111111111111', '2025-06-01', '2025-06-05', 600.00, NOW());


INSERT INTO Reviews (review_id, property_id, user_id, rating, comment, created_at)
VALUES 
('55555555-5555-5555-5555-555555555555', '33333333-3333-3333-3333-333333333333', '11111111-1111-1111-1111-111111111111', 5, 'Fantastic stay!', NOW());


INSERT INTO Payments (payment_id, booking_id, amount, payment_date, status)
VALUES 
('66666666-6666-6666-6666-666666666666', '44444444-4444-4444-4444-444444444444', 600.00, NOW(), 'completed');


INSERT INTO Messages (message_id, sender_id, receiver_id, property_id, content, sent_at)
VALUES 
('77777777-7777-7777-7777-777777777777', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', '33333333-3333-3333-3333-333333333333', 'Hi, is the apartment available?', NOW());

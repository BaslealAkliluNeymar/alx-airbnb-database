
EXPLAIN ANALYZE
SELECT 
    user_id, 
    COUNT(*) AS total_bookings
FROM
    bookings
GROUP BY
    user_id;

CREATE INDEX idx_user_id ON bookings(user_id);
CREATE INDEX idx_property_id ON bookings(property_id);
CREATE INDEX idx_created_at ON bookings(created_at);


EXPLAIN ANALYZE
SELECT 
    user_id, 
    COUNT(*) AS total_bookings
FROM
    bookings
GROUP BY
    user_id


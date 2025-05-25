SELECT 
    *
FROM 
    user as user 
FULL OUTER JOIN 
    bookings as booking
ON
    user.user_id = booking.user_id
FULL OUTER JOIN 
    properties as property
ON
    booking.property_id = property.property_id
FULL OUTER JOIN
    Payments as payment
ON
    booking.booking_id = payment.booking_id


EXPLAIN ANALYZE
    SELECT 
        *
    FROM 
        user as user 
    FULL OUTER JOIN 
        bookings as booking
    ON
        user.user_id = booking.user_id
    FULL OUTER JOIN 
        properties as property
    ON
        booking.property_id = property.property_id
    FULL OUTER JOIN
        Payments as payment
    ON
        booking.booking_id = payment.booking_id

create index idx_user_id on user(user_id);
create index idx_booking_id on bookings(booking_id);
create index idx_property_id on properties(property_id);
create index idx_payment_id on payments(payment_id);



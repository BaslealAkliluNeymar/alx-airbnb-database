Select 
    *
from 
    user as user 
full outer join 
    bookings as booking
on 
    user.user_id = booking.user_id
full outer join 
    properties as property
on 
    booking.property_id = property.property_id
full outer join 
    Payments as payment
on 
    booking.booking_id = payment.booking_id


EXPLAIN ANALYZE
    Select 
        *
    from 
        user as user 
    full outer join 
        bookings as booking
    on 
        user.user_id = booking.user_id
    full outer join 
        properties as property
    on 
        booking.property_id = property.property_id
    full outer join 
        Payments as payment
    on 
        booking.booking_id = payment.booking_id


create index idx_user_id on user(user_id);
create index idx_booking_id on bookings(booking_id);
create index idx_property_id on properties(property_id);
create index idx_payment_id on payments(payment_id);



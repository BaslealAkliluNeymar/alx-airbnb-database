SELECT
    *
FROM
    (
        SELECT 
            property.property_id, 
            AVG(review.rating) as average_rating
        FROM
            Reviews as review 
        WHERE
            average_rating > 4.0
        GROUP BY
            property.property_id;
    ) as avg_ratings
where
    avg_ratings.average_rating > 4.0;





select  
    *
from 
    bookings as booking
Join (
    SELECT
        user_id,
        count(booking_id) as total_bookings
    from
        Bookings
    group by    
        user_id 
    )as user_bookings

on booking.user_id = user_bookings.user_id
where
    user_bookings.total_bookings > 2;









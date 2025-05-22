SELECT 
    booking_id.booking_id,
    booking_id.property_id,
    user_id.first_name
FROM
    Bookings as booking_id
INNER JOIN
    USER as user_id
ON
    booking_id.user_id = user_id.user_id



SELECT 
    *
FROM
    Properties as property 
LEFT JOIN 
    Review as review
ON 
    property.property_id = review.property_id




SELECT 
    *
FROM
    Users as user
FULL OUTER JOIN 
    Bookings as booking
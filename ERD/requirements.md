1. Users ↔ Bookings
✔ One-to-Many: One user (guest) can make many bookings.

✔ One-to-Many: One user (host) can own many properties.

❗ Booking needs a reference to both guest and indirectly to host (via Property).

2. Users ↔ Properties
✔ One-to-Many: One host (user) can own many properties.

3. Properties ↔ Bookings
✔ One-to-Many: One property can have many bookings over time.

✔ Each booking is for one property.

4. Users ↔ Messages
❗ One-to-Many (as sender) + One-to-Many (as receiver)
Each user can send and receive many messages → You need both sender_id and receiver_id in the Messages table.

5. Bookings ↔ Payments
✔ One-to-One: One booking has one payment.

6. Properties ↔ Reviews
✔ One-to-Many: One property can have many reviews.

7. Users ↔ Reviews
❗ One-to-Many (not one-to-one):
One user can review many different properties, but only once per property.
So:

One user → many reviews

One property → many reviews

But (user_id, property_id) should be unique together to enforce "one review per user per property".

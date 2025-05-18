CREATE TABLE User(
    user_id Primary Key UUID DEFAULT uuid_generate_v4(),
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(100) NOT NULL,
    phone_number VARCHAR(100) NULL,
    role ENUM('guest','host','admin') NOT NULL,
    created_at TIMESTAMP
)


CREATE TABLE Property (
    property_id   UUID DEFAULT uuid_generate_v4() Primary Key,
    FOREIGN KEY(user_id) host_id  REFERENCES User(user_id),
    name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(100) NOT NULL,
    pricepernight DECIMAL NOT NULL,
    created_at TIMESTAMP,
    updated_at TIMESTAMP

)

CREATE TABLE Booking (
    booking_id UUID DEFAULT uuid_generate_v4() Primary Key,
    property_id FOREIGN KEY(property_id) REFERENCES Property(property_id),
    user_id FOREIGN KEY(user_id) REFERENCES User(user_id),
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    total_price DECIMAL NOT NULL,
    created_at TIMESTAMP,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL
)

CREATE TABLE Review (
    review_id UUID DEFAULT uuid_generate_v4() Primary Key,
    property_id FOREIGN KEY(property_id) REFERENCES Property(property_id),
    user_id FOREIGN KEY(user_id) REFERENCES User(user_id),
    rating INT CHECK (rating >= 1 AND rating <= 5),
    comment TEXT,
    created_at TIMESTAMP,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL
)
CREATE TABLE Payment (
    payment_id UUID DEFAULT uuid_generate_v4() Primary Key,
    booking_id FOREIGN KEY(booking_id) REFERENCES Booking(booking_id),
    amount DECIMAL NOT NULL,
    payment_date TIMESTAMP NOT NULL,
    status ENUM('pending', 'completed', 'failed') NOT NULL
    booking_id UUID NOT NULL
)


CREATE TABLE Message (
    message_id UUID DEFAULT uuid_generate_v4() Primary Key,
    sender_id FOREIGN KEY(user_id) REFERENCES User(user_id),
    receiver_id FOREIGN KEY(user_id) REFERENCES User(user_id),
    property_id FOREIGN KEY(property_id) REFERENCES Property(property_id),
    content TEXT NOT NULL,
    sent_at TIMESTAMP
    sender_id UUID NOT NULL
    receiver_id UUID NOT NULL
    property_id UUID NOT NULL
)
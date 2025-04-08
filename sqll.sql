CREATE DATABASE TicketBookingSystem;
USE TicketBookingSystem;


CREATE TABLE Venue (
    venue_id INT AUTO_INCREMENT PRIMARY KEY,
    venue_name VARCHAR(100),
    address VARCHAR(255)
);
CREATE TABLE Event (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(100),
    event_date DATE,
    event_time TIME,
    venue_id INT,
    total_seats INT,
    available_seats INT,
    ticket_price DECIMAL(10,2),
    event_type ENUM('Movie', 'Sports', 'Concert'),
    FOREIGN KEY (venue_id) REFERENCES Venue(venue_id)
);
CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(20)
);


CREATE TABLE Booking (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    event_id INT,
    num_tickets INT,
    total_cost DECIMAL(10,2),
    booking_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (event_id) REFERENCES Event(event_id)
);
select * from event

-- Insert into Venue
INSERT INTO Venue (venue_name, address) VALUES
('Arena One', 'New York'),
('Stadium Alpha', 'Los Angeles'),
('Grand Hall', 'Chicago'),
('Civic Center', 'Houston'),
('City Dome', 'Miami'),
('Sunset Grounds', 'San Diego'),
('Metro Arena', 'Dallas'),
('Epic Stage', 'Las Vegas'),
('Skyline Venue', 'Seattle'),
('Downtown Expo', 'Boston');


-- Insert into Customer
INSERT INTO Customer (customer_name, email, phone_number) VALUES
('Alice', 'alice@example.com', '123456000'),
('Bob', 'bob@example.com', '9876543210'),
('Charlie', 'charlie@example.com', '999990000'),
('David', 'david@example.com', '8888812345'),
('Eva', 'eva@example.com', '777770000'),
('Frank', 'frank@example.com', '6666677777'),
('Grace', 'grace@example.com', '5555566666'),
('Henry', 'henry@example.com', '4444433333'),
('Isabel', 'isabel@example.com', '3333322222'),
('John', 'john@example.com', '2222211111');

-- Insert into Event
INSERT INTO Event (event_name, event_date, event_time, venue_id, total_seats, available_seats, ticket_price, event_type) VALUES
('World Cup Final', '2025-11-20', '18:00:00', 1, 20000, 5000, 1500.00, 'Sports'),
('Jazz Concert Night', '2025-07-15', '20:00:00', 2, 10000, 2000, 2200.00, 'Concert'),
('Tech Expo 2025', '2025-09-10', '09:00:00', 3, 15000, 500, 500.00, 'Movie'),
('Comedy Show', '2025-06-05', '19:00:00', 4, 8000, 0, 1200.00, 'Concert'),
('Champions Cup', '2025-10-05', '17:30:00', 5, 25000, 15000, 2000.00, 'Sports'),
('Summer Beats Concert', '2025-08-01', '21:00:00', 6, 12000, 3000, 1800.00, 'Concert'),
('Cinema Gala', '2025-05-25', '14:00:00', 7, 5000, 1000, 900.00, 'Movie'),
('Rock n Roll Concert', '2025-12-12', '20:30:00', 8, 16000, 7000, 2500.00, 'Concert'),
('City Movie Fest', '2025-04-20', '16:00:00', 9, 9000, 9000, 750.00, 'Movie'),
('National Sports Day', '2025-11-10', '15:00:00', 10, 18000, 8000, 1700.00, 'Sports');

-- Insert into Booking
INSERT INTO Booking (customer_id, event_id, num_tickets, total_cost, booking_date) VALUES
(1, 1, 2, 3000.00, '2025-03-15'),
(2, 2, 5, 11000.00, '2025-03-16'),
(3, 3, 1, 500.00, '2025-03-17'),
(4, 4, 2, 2400.00, '2025-03-18'),
(5, 5, 6, 12000.00, '2025-03-19'),
(6, 6, 3, 5400.00, '2025-03-20'),
(7, 7, 2, 1800.00, '2025-03-21'),
(8, 8, 4, 10000.00, '2025-03-22'),
(9, 9, 2, 1500.00, '2025-03-23'),
(10, 10, 1, 1700.00, '2025-03-24');

select * from event

SELECT * FROM Event
WHERE available_seats > 0;

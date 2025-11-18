INSERT INTO subscription_plans (plan, duration, price) VALUES
('Free',            1,   0.00),
('Premium Hi-Fi',   3,  14.99),
('Dolby Surround',  6,  19.99),
('Ultra HD',       12,  24.99),
('Family Plan',    12,  29.99),
('Weekend Special', 1,   4.99);

INSERT INTO devices (device) VALUES
('iPhone 14 Pro'),
('Samsung Galaxy S24'),
('Google Pixel 9'),
('iPad Mini'),
('Windows Laptop'),
('MacBook Air'),
('Smart TV'),
('Android Tablet');

INSERT INTO app_version (app_version, access_level) VALUES
('1.0.0', 'Music'),
('1.1.0', 'Music + Podcasts'),
('1.2.0', 'Music + Podcasts + Music Videos'),
('2.0.0', 'Music + HD Sound + Podcasts'),
('2.1.0', 'Music + Dolby Surround + Music Videos');

INSERT INTO date (date, year, month, day)
SELECT
    d::date AS date,
    EXTRACT(YEAR FROM d)::int AS year,
    EXTRACT(MONTH FROM d)::int AS month,
    EXTRACT(DAY FROM d)::int AS day
FROM generate_series(
    '2024-01-01'::date,
    '2024-12-31'::date,
    '1 day'::interval
) d;


INSERT INTO users (user_name, user_email) VALUES
('Alex Johnson',      'alex.johnson@email.com'),
('Maria Lopez',       'maria.lopez@email.com'),
('David Chen',        'david.chen@email.com'),
('Emma Williams',     'emma.williams@email.com'),
('Tommy Andersen',    'tommy.andersen@email.com'),
('Lucas Zimmerman',   'lucas.zimmerman@email.com');

INSERT INTO subscriptions (user_id, plan_id, device_id, start_date, version_id) VALUES
(1, 1, 1, '2024-01-01', 1), 
(2, 2, 2, '2024-02-15', 2), 
(3, 3, 5, '2024-03-12', 3), 
(4, 4, 6, '2024-05-15', 4), 
(5, 5, 7, '2024-06-01', 5), 
(6, 6, 3, '2024-07-10', 2); 

/*=== More Data ===*/

INSERT INTO users (user_name, user_email) VALUES
('John Smith', 'john.smith@email.com'),
('Alice Brown', 'alice.brown@email.com'),
('Michael Davis', 'mike.davis@email.com'),
('Sophia Taylor', 'sophia.taylor@email.com'),
('Oliver King', 'oliver.king@email.com'),
('Isabella Moore', 'isabella.moore@email.com'),
('William Clark', 'will.clark@email.com'),
('Ava Harris', 'ava.harris@email.com'),
('James Miller', 'james.miller@email.com'),
('Mia Thompson', 'mia.thompson@email.com');

INSERT INTO app_version (app_version, access_level) VALUES
('2.2.0', 'Music + Dolby Surround'),
('3.0.0', 'Music + AI Playlist Generator'),
('3.1.0', 'Full Premium Access + 4K Video'),
('3.2.0', 'Premium + Offline Mode');

INSERT INTO devices (device) VALUES
('Xbox Series X'),
('PlayStation 5'),
('Tesla Infotainment'),
('Amazon Echo Show'),
('Smart Speaker'),
('Linux Desktop'),
('Car Infotainment System');

INSERT INTO subscription_plans (plan, duration, price) VALUES
('Premium Annual', 12, 49.99),
('Hi-Fi Monthly', 1, 9.99),
('Dolby Cinema Experience', 12, 59.99),
('Family Ultimate + 4K', 12, 69.99),
('Student Discount', 6, 7.99);

INSERT INTO subscriptions (user_id, plan_id, device_id, start_date, version_id) VALUES
-- John Smith (upgrade over time)
(7, 1, 2, '2024-01-01', 1), -- Free
(7, 2, 2, '2024-03-01', 2), -- Premium Hi-Fi
(7, 4, 6, '2024-06-01', 4), -- Ultra HD

-- Alice Brown
(8, 3, 5, '2024-02-15', 5),  -- Dolby Surround
(8, 9, 8, '2024-06-10', 7),  -- Dolby Cinema Experience on Tesla

-- Michael Davis
(9, 7, 9, '2024-04-01', 6),  -- Premium Annual
(9, 10, 9, '2024-07-01', 8), -- Student Discount

-- Sophia Taylor
(10, 6, 10, '2024-05-20', 3), -- Weekend Special
(10, 8, 11, '2024-08-01', 9), -- Family Ultimate + 4K

-- Existing users (repeat subscriptions)
(1, 4, 1, '2024-08-01', 9), -- Alex → Ultra upgrade
(2, 7, 2, '2024-04-01', 5), -- Maria → Premium Annual
(5, 3, 7, '2024-09-01', 4), -- Tommy → Dolby
(6, 2, 3, '2024-10-01', 6); -- Lucas → Hi-Fi Monthly

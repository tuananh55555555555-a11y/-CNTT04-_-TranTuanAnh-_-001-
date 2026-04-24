CREATE DATABASE Creator;
USE Creator;

CREATE TABLE Creator (
	creator_id VARCHAR(5) not NULL Primary Key,
	creator_name VARCHAR(100) not NULL,
	creator_email VARCHAR(100) not NULL UNIQUE,
	creator_phone VARCHAR(15) not NULL UNIQUE,
	creator_platform VARCHAR(50)
	);

CREATE TABLE studio (
	studio_id VARCHAR(5) not NULL Primary Key,
	studio_name VARCHAR(100) not NULL,
	studio_location VARCHAR(100) not NULL,
	hoerly_price DECIMAL(10,2) not NULL,
	studio_status VARCHAR(20) not NULL
	);

CREATE TABLE LiveSession (
	session_id INT Primary Key not NULL AUTO_INCREMENT,
	creator_id VARCHAR(5) not NULL,
	studio_id VARCHAR(5) not NULL,
	session_date DATE not NULL,
	duration_hours INT not NULL
	);

CREATE TABLE Payment (
	payment_id INT Primary Key not NULL AUTO_INCREMENT,
	session_id INT not NULL,
	payment_method VARCHAR(50) not NULL,
	payment_amount DECIMAL(10,2) not NULL,
	payment_date DATE not NULL
	);

INSERT INTO Creator (creator_id, creator_name, creator_email, creator_phone, creator_platform) VALUES
	('CR01', 'Nguyen Van A', 'a@live.com', '0901111111', 'Tiktok'),
	('CR02', 'Tran Thi B', 'b@live.com', '0902222222', 'Youtube'),
	('CR03', 'Le Minh C', 'c@live.com', '0903333333', 'Facebook'),
	('CR04', 'Pham Thi D', 'd@live.com', '0904444444', 'Tiktok'),
    ('CR05', 'Vu Hoang E', 'e@live.com', '0905555555', 'Shopee live');
    
INSERT INTO studio (studio_id, studio_name, studio_location, hoerly_price, studio_status) VALUES
	('ST01', 'Studio A', 'Ha Noi', '20.00', 'Available'),
    ('ST02', 'Studio B', 'HCM', '25.00', 'Available'),
    ('ST03', 'Studio C', 'Danang', '30.00', 'Booked'),
    ('ST04', 'Studio D', 'Ha Noi', '22.00', 'Available'),
    ('ST05', 'Studio E', 'Can Tho', '18.00', 'Maintenance');

INSERT INTO LiveSession (session_id, creator_id, studio_id, session_date, duration_hours) VALUES
	('1', 'CR01', 'ST01', '2025-05-01', '3'),
    ('2', 'CR02', 'ST02', '2025-05-02', '4'),
    ('3', 'CR03', 'ST03', '2025-05-03', '2'),
    ('4', 'CR04', 'ST04', '2025-05-04', '5'),
    ('5', 'CR05', 'ST05', '2025-05-05', '1');
    
INSERT INTO Payment (payment_id, session_id, payment_method, payment_amount, payment_date) VALUES
	('1', '1', 'Cash', '60.00', '2025-05-01'),
    ('2', '2', 'Credit Card', '100.00', '2025-05-02'),
    ('3', '3', 'Bank Transfer', '60.00', '2025-05-03'),
    ('4', '4', 'Credit Card', '110.00', '2025-05-04'),
    ('5', '5', 'Cash', '25.00', '2025-05-05');

UPDATE  Creator
	SET  creator_platform = "YouTube"
	WHERE creator_id = 'CR03';
    

-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS test;
USE test;

-- Set up environment
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Create table books
CREATE TABLE IF NOT EXISTS books (
  id INT(11) NOT NULL AUTO_INCREMENT,
  title VARCHAR(300) NOT NULL,
  `desc` VARCHAR(500) NOT NULL,
  price FLOAT NOT NULL,
  cover VARCHAR(500) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Insert sample data
INSERT INTO books (title, `desc`, price, cover) VALUES
('MultiCloud', 'This is a multicloud with DevOps course by Veera Sir at NareshIT.', 2343.2, 'https://docs.multy.dev/assets/images/multi-cloud-314609adeec670988dff0882a93fdcb0.png'),
('DevOps', 'If you understand DevOps, it is very easy.', 2342.3, 'https://media.licdn.com/dms/image/v2/D5612AQHsA9dJVtZRdw/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1730826289071?e=2147483647&v=beta&t=JGr0gJH6RE9b1Dk7nHAYF14Kmv96Gm519UOy_rSa3xE');

-- Commit the transaction
COMMIT;


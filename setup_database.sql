-- Create database and user
CREATE DATABASE IF NOT EXISTS pump_pilot;
USE pump_pilot;

-- Create users table
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    role ENUM('admin', 'manager', 'employee') DEFAULT 'employee',
    phone VARCHAR(20),
    avatar TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Insert demo users with hashed passwords (password: "password")
INSERT IGNORE INTO users (name, email, password_hash, role) VALUES
('Admin User', 'admin@pumppilot.com', '$2b$12$LQv3c1yqBwEHxE03uBJAuOVVnwg8g3rJJX3uyT4P/6LenAiTEBrHK', 'admin'),
('Manager User', 'manager@pumppilot.com', '$2b$12$LQv3c1yqBwEHxE03uBJAuOVVnwg8g3rJJX3uyT4P/6LenAiTEBrHK', 'manager');
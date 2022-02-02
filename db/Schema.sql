-- Drop DB if exists and recreate clean version and use it.
DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;
USE employees;


-- create department key
Create Table department (
    id: INT AUTO_INCREMENT PRIMARY KEY,
    name: VARCHAR(30),
);


--create roll table
Create Table role (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) 
    REFERENCES department(id) 
    ON DELETE CASCADE
);

-- Create Employee table
Create Table employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name UNIQUE NOT NULL,
    FOREIGN KEY role_id,
    REFERENCES manager_id INT NOT NULL,
     (roll_id) 
    ON DELETE SET NULL
);


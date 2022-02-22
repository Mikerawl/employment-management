-- Drop DB if exists and recreate clean version and use it.
DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;
USE employees;


-- Department table
CREATE Table department (
    id: INT AUTO_INCREMENT, 
    PRIMARY KEY (id),
    name: VARCHAR(30) NOT NULL
);


--Roles table
CREATE Table roles (
    id INT AUTO_INCREMENT,
     PRIMARY KEY (id),
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES department(id)   
);

-- Employee table
CREATE Table employee (
    id INT AUTO_INCREMENT,
     PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT
    FOREIGN KEY (role_id) REFERENCES role(id),
    manager_id INT REFERENCES id   
);

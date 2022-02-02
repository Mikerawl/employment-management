use employees;


-- insert data into department table
INSERT INTO department
    (name)
VALUES
    ('IT'), ('Finance'), ('Human Resources'), ('Operations');


-- insert data into role table
INSERT INTO role
    (title, salary, department_id)
VALUES
    ('Lead Developer ', 150000, 1), ('Developer', 100000, 1),
    ('Lead Test Engineer', 150000, 2), ('Test Engineer', 100000, 2),
    ('HR Manager', 110000, 3), ('HR Representive', 80000, 3),
    ('Operations Manager', 140000, 4), ('Operations Coordinator ', 90000, 4);


-- insert data into employee table
INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ('Debbie', 'Harry', 1, NULL), ('Dan', 'Steely', 2, 1), ('Billy', 'Idol', 3, NULL),
    ('Brian', 'May', 4, 3), ('Eric', 'Clapton', 5, NULL), ('Bruce', 'Springsteen', 6, 5),
    ('David', 'Bowie', 7, NULL), ('Beyonce', 'Knowles', 8, 7);
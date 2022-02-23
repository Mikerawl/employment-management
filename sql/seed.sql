
SELECT * FROM department;
-- insert data into department table
INSERT INTO department (name)
VALUES ('Boss'), ('Finance'), ('Labor');

SELECT * FROM role;
-- insert  role 
INSERT INTO role (title, salary, department_id)
VALUES('Lead', 0, 1), ('Developer', 100000, 2), ('Laborer', 50000, 3), 
SELECT
    CONCAT(first_name, ' ', last_name) AS 'name'
    FROM employee;
SELECT * FROM employee;


INSERT INTO employee (first_name, last_name, role_id)
VALUES('Debbie', 'Harry', 1,)
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Dan', 'Steely', 2, 1), ('Billy', 'Idol', 3, 1),
    

-- view the departments 
SELECT
    department.name AS 'Department',
    id
FROM department;

-- view employee roles
SELECT
    role.id
    role.title AS 'Title',
    department.name AS 'Department',
    role.salary AS 'Salary'
FROM department;
INNER JOIN role ON department.id = role.department_id;

-- view employees and Managers
SELECT
    c1.id AS 'ID'
    c1.first_name AS 'First Name',
    c1.last_name AS 'Last Name',
    CONCAT(c2.first_name, ' ' c2.last_name) AS 'Manager' 
    FROM department
    INNER JOIN role ON department.id = role.department_id
    INNER JOIN employee c1 ON role.id =c1.role_id
    LEFT JOIN employee c2 ON c1.manager_id = c2.id;

    -- View employee by manager
    SELECT
        employee.id  AS 'ID',
        employee.first_name AS 'First Name',
        employee.last_name AS 'Last Name',
        department.name AS 'Department'
        role.title AS 'Role',
        role.salary AS 'Salary',
    FROM department
    INNER JOIN role ON department.id = role.department.id
    INNER JOIN employee ON role.id = employee.role_id
    WHERE manager_id = 1;

    -- view by employee id.
    SELECT id
        FROM employee
        WHERE id = 1;
    -- view employee with departmetn and mangager
    SELECT
        c1.id As 'ID',
        c1.first_name AS 'First Name',
        c1.last_name AS 'Last Name',
        department.name AS 'Department',
        role.title AS 'Role',
        role.salary AS 'Salary',
        CONCAT(c2.first_name, ' ',) AS 'Manager'
        From department
        INNER JOIN role ON department.id = role.department_id
        INNER JOIN employee c1 ON role.id = c1.role_id
        LEFT JOIN employee c2 ON c1.manager_id =c2.id;

        SELECT
        *
        FROM employee
        GROUP BY id;

        SELECT * FROM role;
        DELETE FROM role WHERE ID =7;

        -- View employee by department and manager
        SELECT
        c1.id AS 'ID',
	    c1.first_name AS 'First Name',
        c1.last_name AS 'Last Name',
	    department.name AS 'Department',
        role.title AS 'Role',
        role.salary AS 'Salary',
        CONCAT(c2.first_name, ' '). c2 last_name) AS 'Manager',
        FROM department
        INNER JOIN role ON department.id = role.department_id
        LEFT JOIN employee c1 ON role.id = c1.role_id
        LEFT JOIN employee c2 ON c1.manager_id = c2.id
        WHERE department.id = 2

       
        SELECT SUM(role.salary) FROM role;
        -- budget
        SELECT
            department.name
            SUM(role.salary) AS 'Department Budget'
        FROM department
        INNER JOIN role ON department.id = role.department_id
        LEFT JOIN employee c1 ON role.id = c1.role_id
        LEFT JOIN employee c2 ON c1.manager_id = c2.id;
        GROUP BY department.id;

        SELECT
            SUM(role.salary)
        FROM role
        INNER JOIN departmetn ON department.id = role.department_id
        LEFT JOIN  employee ON role.id = empoyee.role_id;
        

    -- upDATE employee role and magager
    UPDATE FROM employee WHERE ID =2
    SET role_id = 2
        manager_id = 1
        WHERE id = 2;

        -- delete emoloree, role, department
    DELETE FROM employee WHERE id = 2;
    DELETE FROM role WHERE id = 2;
    DELETE FROM department WHERE id = 2;

    ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '123';

    SELECT id, title FROM role;
    SELECT id,
        CONCAT(first_name, ' ', last_name) AS 'name'
        FROM employee;

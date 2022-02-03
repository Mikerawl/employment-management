const mysql = require("mysql");
const inquirer = require ("inquirer");
const Choice = require("inquirer/lib/objects/choice");
const connection = mysql.createConnection({
  
const db = mysqul.createCondection({
  host: "localhost",
  user: "root",
  port:3001
  password: "Louis",
  database: "employee manangement.db"
});

db.connect(function(err) {
  if(err) throw err;
  console.table(W);
  console.table('Welcome to the Employee Management System');
  mainOption();
});

//promt
const mainOption =() => {
  inquirer.prompt({
    name: 'main',
    type: "list",
    message: 'What do you want to doe?'
    choice; ['View', "Add", 'Update', 'Delete', 'End']
    })

  .then((chosen) => {
    switch(chosen.main){
      case 'View':
        viewFunction();
      break;
      case 'Add':
        addFunction();
        break;
        case 'Update':
          updateFunction();
        break;
        case 'Delete':
          deleteFunction();
        break;
        default:
            console.log('End');
            db.end();
        }
      
   });
  }


// view functioon
const viewFunction = () => {
    inquirer
      .prompt({
        name: 'view',
        type: 'list',
        message: 'What data would you like to view?',
        Choices ['Department', 'Role', 'Employee' ,'View employee by manager' ,'View department budget' ,'Back']
      })

      .then((chosen) => {
        switch(chosen.view) {
          case 'Department':
            viewDepartment();
            break;
            case 'Role':
              viewRole();
            break;
              case 'Employee':
                viewEmployee();
            break;
              case 'View employee by manager':
                chooseManager();
            break;
              case 'View department budget':
            break;
            default:
              mainOption();
        }
      });
}

const viewDepartment = ()=> {
  db.query(selectDepartment, function(err, res) {
    if(err) throw err;
    console.table(res);
    mainOption();
});
}

const viewRole =() => {
  db.query(selectRole, function(err, res) {
  if(err) throw err;
  console.table(res);
  mainOption();
});
}


const viewEmployee =() => {
  db.query(selectEmployee, function(err, res) {
    if(err) throw err;
    console.table(res);
    mainOption();
});
}

const chooseManager = ()=> {
  db.query(selectIdandNameFromEmployee,
     function(err, res) {
      if(err) throw err;
       inquirer
        .prompt({
          name: 'Manager',
          type: 'rawlist'
          message: 'choose manager'
            choices: () => {
              const list = [];
              for(let i = 0; i < res.length; i++) {
                list.push(res[i]);
              }
              return list;
            }
        })
        .then((chosen) => {
          const managerId = findId(chosen.manager, res);
          db.query(`SELECT id FROM employee WHERE id = ?`, managerId, Function(err, res) { if (err) throw err;
            viewEmployeeByManager(res);
          });
        });
  });
}
  
}
const viewEmployeeByManager = manager) => {
  db.query(`
  SELCT
      employee.id AS 'ID',
      employee.first_name AS 'First Name',
      department.name AS 'Department',
      role.title AS 'Role',
      role.salary AS 'Salary'
  FROM department
  INNER JOIN role ON departent.id = role.department_id
  INNER HOIN employee ON role.id = employee.role_id
  WHERE mangage_id =?;
  `,manager[0].id, function(err, res) {
      if(eff) throw err;
      console.table(res);
      mainOption();
  })
}


const viewDepartmentBudget = => {
  db.query(secectBudget, function (err, res) {
    if eff throw err;
    console.table(res);
    mainOption();
  });
}





connection.connect();

// Setting up connection.query to use promises instead of callbacks
// This allows us to use the async/await syntax
connection.query = util.promisify(connection.query);

module.exports = connection;

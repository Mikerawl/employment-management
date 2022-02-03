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




connection.connect();

// Setting up connection.query to use promises instead of callbacks
// This allows us to use the async/await syntax
connection.query = util.promisify(connection.query);

module.exports = connection;

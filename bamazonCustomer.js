var mysql = require("mysql");
var inquirer = require("inquirer");

// object variable containing settings for connecting to the MySQL DB
var connection = mysql.createConnection({
  host : "localhost",
  port: 3306,
  user : "root",
  password : "", //replace with your own password
  database : "bamazon"
});

showInventory();

function showInventory() {
    connection.query("SELECT ItemID, ProductName, Price FROM products", function(err, rows) {
      if (err) throw err;
      console.log("Available products:");
      for(var i = 0; i < rows.length; i++) {
        console.log("Item ID: " + rows[i].ItemID + "   Product Name: " + rows[i].ProductName + "   Price: $" + rows[i].Price);
      }
      shopping();
    });
  };

  function shopping() {

    inquirer.prompt([{
        type: "input",
        name: "id",
        message: "Select the product ID number for the item you wish to purchase"
    },
    {
        type: "input",
        name: "quantity",
        message: "Quantity?"    
    }]).then(function(answer){
        var purchaseID = answer.id;
        var itemQuantity = answer.quantity;
        processOrder(purchaseID, itemQuantity)
    });
  }

  function processOrder(id, quantity) {
    connection.query("SELECT * FROM products WHERE ItemID = " + id, function(err, rows) {
      if(err) throw err;

      if (quantity <= rows[0].StockQuantity) {
          var totals = rows[0].Price + quantity;
          console.log("Total Due: $" + totals);
          connection.query("UPDATE Products SET StockQuantity = StockQuantity - " + quantity + " WHERE ItemID = " + id);
          console.log("Inventory has been updated");
          showInventory();

      } else {
            console.log("There is not enough stock to fulfill your request, please try again");
            connection.end();
      }
    });
  }


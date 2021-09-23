# Tokens: 500
# Ruby chatbot

# You: Create a configuration class for the person table with the fields, First Name, Last Name and Date of Birth and three rows of sample data

class Configuration

  table :person do

    columns [:first_name, :last_name, :date_of_birth]

    row "David", "Cruwys", 17/01/1972
    row "Sean", "Wallace", 29/05/1967
    row "Lisa", "Cudro", 01/12/1974

  end
end

# You: Create a configuration class for the products table with the fields, Product Name, Quantity, Stock on Hand and five rows of sample data

class Configuration

  table :products do

    columns [:product_name, :quantity, :stock_on_hand]

    row "Coffee", 10, 100
    row "Tea", 20, 200
    row "Cake", 30, 300
    row "Bread", 40, 400
    row "Milk", 50, 500

  end
end

# You: Create a configuration class for the sales table with the fields, Product Name, Quantity, Price and three rows of sample data

class Configuration

  table :sales do

    columns [:product_name, :quantity, :price]

    row "Coffee", 10, 5
    row "Tea", 20, 10
    row "Cake", 30, 15

  end
end

# You: Create a configuration class for the customers table with the fields, First Name, Last Name and Date of Birth and three rows of sample data

class Configuration

  table :customers do

    columns [:first_name, last_name, :date_of_birth]

    row "David", "Cruwys", 17/01/1972
    row "Sean", "Wallace", 29/05/1967
    row "Lisa", "Cudro", 01/12/1974

  end
end

# You: Create a configuration class for the orders table with the fields, Product Name, Quantity, Price and three rows of sample data

class Configuration

  table :orders do

    columns [:product_name, :quantity, :price]

    row "Coffee", 10, 5
    row "Tea", 20, 10
    row "Cake", 30, 15

  end
end

# You: Create a configuration class for the order_items table with the fields, Product Name, Quantity, Price and three rows of sample data

class Configuration

  table :order_items do

    columns [:product_name, :quantity, :price]

    row "Coffee", 10, 5
    row "Tea", 20, 10
    row "Cake", 30, 15

  end
end

# You: Create a configuration class for the order_payments table with the fields, Order ID, Payment Method and three
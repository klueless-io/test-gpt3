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

# You: Create a configuration class for the products table for our restaurant with the fields, Product Name, Quantity, Ingredients and five rows of sample data

class Configuration

  table :products do

    columns [:product_name, :quantity, :ingredients]

    row "Pizza", 10, "Flour, Tomato Sauce, Cheese"
    row "Pasta", 5, "Tomato Sauce, Cheese"
    row "Salad", 3, "Lettuce, Tomato, Carrot"
    row "Soup", 2, "Water, Potato"
    row "Sandwich", 1, "Bread, Cheese, Ham"

  end
end

# You: Create a configuration class for the orders table for our restaurant with the fields, Order Number, Product Name, Quantity, Customer Name and Date of Order and five rows of sample data

class Configuration

  table :orders do

    columns [:order_number, :product_name, :quantity, :customer_name, :date_of_order]

    row 1, "Pizza", 1, "David Cruwys", "17/01/1972"
    row 2, "Pasta", 1, "David Cruwys", "17/01/1972"
    row 3, "Salad", 1, "David Cruwys", "17/01/1972"
    row 4, "Soup", 1, "David Cruwys", "17/01/1972"
    row 5, "Sandwich", 1, "David Cruwys", "17/01/1972"

  end
end

# You: Create a configuration class for the customers table for our restaurant with the fields, Customer Name, Address, Phone Number and Date of Birth and five rows of sample data

class Configuration

  table :customers do

    columns [:customer_name, :address, :phone_number, :date_of_birth]

    row "David Cruwys", "123 Fake Street", "07715551234", "17/01/1972"
    row "Sean Wallace", "456 Fake Street", "07715551234", "29/05/1967"
    row "Lisa Cudro", "789 Fake Street", "07715551234", "01/12/1974"
    row "David Cruwys", "123 Fake Street", "07715551234", "17/01/1972"
    row

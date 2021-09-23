# Tokens: 256
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

# You: Create a configuration class for the products table for our automobile shop with the fields, Product Name, Quantity, Options and five rows of sample data

class Configuration

  table :product do

    columns [:product_name, :quantity, :options]

    row "Ford Mustang", 5, "Red, Blue, Black"
    row "Toyota Prius", 10, "Blue, Green, Yellow"
    row "Honda Civic", 15, "Red, Green, Blue"
    row "Dodge Ram", 20, "Red, Blue, Black"
    row "Toyota Camry", 25, "Blue, Green, Yellow"

  end
end

# You: Create a configuration class for the orders table for our online store with the fields, Product Name, Quantity, Options and three rows of sample data

class Configuration

  table :order do
    columns [:product_name, :quantity, :options]

    row "Ford Mustang", 1, "Red"
    row "Toyota Prius", 2, "Blue"
    row "Honda Civic", 3, "Red"
  end
end

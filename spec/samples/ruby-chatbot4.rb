Tokens: 500
Ruby chatbot

You: Create a configuration class for the person table with the fields, First Name, Last Name and Date of Birth and three rows of sample data

class Configuration

  table :person do

    columns [:first_name, last_name, :date_of_birth]

    row "David", "Cruwys", 17/01/1972
    row "Sean", "Wallace", 29/05/1967
    row "Lisa", "Cudro", 01/12/1974

  end
end

You: Create a configuration class for the products table with the fields, Product Name, Quantity, Stock on Hand and five rows of sample data


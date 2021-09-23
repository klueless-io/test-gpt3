FactoryBot.define do
  factory :company do
    name                                     { nil } # { "Name" }
    stock_code                               { nil } # { "StockCode" }
    location                                 { nil } # { "Location" }
    employee_count                           { nil } # { "EmployeeCount"}
  end
end

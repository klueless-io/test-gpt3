# frozen_string_literal: true

FactoryBot.define do
  factory :company do
    name                                     { nil } # { "Name" }
    stock_code                               { nil } # { "StockCode" }
    location                                 { nil } # { "Location" }
    employee_count                           { nil } # { "EmployeeCount"}

    trait :trait1 do
      name                                   { "A-Name" }
      stock_code                             { "A-StockCode" }
      location                               { "A-Location" }
      employee_count                         { 1111 }
    end

    trait :trait2 do
      name                                   { "B-Name" }
      stock_code                             { "B-StockCode" }
      location                               { "B-Location" }
      employee_count                         { 2222 }
    end

    trait :trait3 do
      name                                   { "C-Name" }
      stock_code                             { "C-StockCode" }
      location                               { "C-Location" }
      employee_count                         { 3333 }
    end
  end
end

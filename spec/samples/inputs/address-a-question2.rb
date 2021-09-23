YOU: Create empty table called address with the following fields city, country, state, state_name, street1, street2, zip and set the values to nil

FactoryBot.define do
  factory :address do
    city                                     { nil } # { "City" }
    country                                  { nil } # { "Country" }
    state                                    { nil } # { "State" }
    state_name                               { nil } # { "StateName" }
    street1                                  { nil } # { "Street1" }
    street2                                  { nil } # { "Street2" }
    zip                                      { nil } # { "Zip" }

    trait :trait1 do
      city                                   { "A-City" }
      country                                { "A-Country" }
      state                                  { "A-State" }
      state_name                             { "A-StateName" }
      street1                                { "A-Street1" }
      street2                                { "A-Street2" }
      zip                                    { 1111 }
    end

    trait :trait2 do
      city                                   { "B-City" }
      country                                { "B-Country" }
      state                                  { "B-State" }
      state_name                             { "B-StateName" }
      street1                                { "B-Street1" }
      street2                                { "B-Street2" }
      zip                                    { 2222 }
    end

    trait :trait3 do
      city                                   { "C-City" }
      country                                { "C-Country" }
      state                                  { "C-State" }
      state_name                             { "C-StateName" }
      street1                                { "C-Street1" }
      street2                                { "C-Street2" }
      zip                                    { 3333 }
    end
  end
end

FactoryBot.define do
  factory :address do
    city                                     { nil } # { "City" }
    country                                  { nil } # { "Country" }
    state                                    { nil } # { "State" }
    state_name                               { nil } # { "StateName" }
    street1                                  { nil } # { "Street1" }
    street2                                  { nil } # { "Street2" }
    zip                                      { nil } # { "Zip" }
  end
end

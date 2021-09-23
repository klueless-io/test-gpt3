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
      city                                   { "Torndirrup" }
      country                                { "Australia" }
      state                                  { "WA" }
      state_name                             { "Western Australia" }
      street1                                { "139 Baker Street" }
      street2                                { "" }
      zip                                    { 6330 }
    end

    trait :trait2 do    
      city                                   { "Hobart" }
      country                                { "Australia" }
      state                                  { "TAS" }
      state_name                             { "Tasmania" }
      street1                                { "57 Barnett Street" }
      street2                                { "" }
      zip                                    { 7231 }
    end

    trait :trait3 do
      city                                   { "Purlewaugh" }
      country                                { "C-Country" }
      state                                  { "NSW" }
      state_name                             { "New South Wales" }
      street1                                { "Apartment 3" }
      street2                                { "109 Noalimba Avenue" }
      zip                                    { 2357 }
    end
  end
end

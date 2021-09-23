FactoryBot.define do
  factory :address do
    city                                     { nil } # { "City" }
    country                                  { nil } # { "Country" }
    state                                    { nil } # { "State" }
    street1                                  { nil } # { "Street1" }
    street2                                  { nil } # { "Street2" }
    zip                                      { nil } # { "Zip" }

    trait :trait1 do
      city                                   { "TORNDIRRUP" }
      country                                { "Australia" }
      state                                  { "Western Australia" }
      street1                                { "139 Baker Street" }
      street2                                { "" }
      zip                                    { "6330" }
    end

    trait :trait2 do    
      city                                   { "Hobart" }
      country                                { "Australia" }
      state                                  { "TAS" }
      street1                                { "57 Barnett Street" }
      street2                                { "" }
      zip                                    { "7231" }
    end

    trait :trait3 do
      city                                   { "PURLEWAUGH" }
      country                                { "C-Country" }
      state                                  { "New South Wales" }
      street1                                { "Appartment 3" }
      street2                                { "109 Noalimba Avenue" }
      zip                                    { "2357" }
    end
  end
end

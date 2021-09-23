# frozen_string_literal: true

FactoryBot.define do
  factory :event do
    # initialize_with { Event.find_or_create_by(status: status) }

    # Default column values
    # TODO: this needs to take into consideration the required flag
    #       default columns should be nil, unless they are required and in that scenario
    #       the value can be uncommented
    # TODO: This needs work from the data dictionary and use the faker gem
    # TODO: This needs to put created_at, updated_at and deleted_at in own traits
    event_type                               { nil } # { "Event Type" }
    status                                   { nil } # { "Status" }
    data                                     { nil } # { { a: "data" } }
    schedule_date                            { nil } # { Date.parse "09 Jan 2017" }
    source                                   { nil } # { "Source" }


    trait :trait1 do
      event_type                             { "A-Event Type" }
      status                                 { "A-Status" }
      data                                   { { a: "A-data" } }
      schedule_date                          { Date.parse "01 Jan 2017" }
      source                                 { "A-Source" }
    end

    trait :trait2 do
      event_type                             { "B-Event Type" }
      status                                 { "B-Status" }
      data                                   { { a: "B-data" } }
      schedule_date                          { Date.parse "02 Jan 2017" }
      source                                 { "B-Source" }
    end

    trait :trait3 do
      event_type                             { "C-Event Type" }
      status                                 { "C-Status" }
      data                                   { { a: "C-data" } }
      schedule_date                          { Date.parse "03 Jan 2017" }
      source                                 { "C-Source" }
    end
  end
end

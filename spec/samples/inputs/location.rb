# frozen_string_literal: true

FactoryBot.define do
  factory :location do
    # initialize_with { Location.find_or_create_by(name: name) }

    # Default column values
    # TODO: this needs to take into consideration the required flag
    #       default columns should be nil, unless they are required and in that scenario
    #       the value can be uncommented
    # TODO: This needs work from the data dictionary and use the faker gem
    # TODO: This needs to put created_at, updated_at and deleted_at in own traits
    name                                     { nil } # { "Name" }
    default                                  { nil } # { true }


    trait :trait1 do
      name                                   { "A-Name" }
      default                                { true }
    end

    trait :trait2 do
      name                                   { "B-Name" }
      default                                { false }
    end

    trait :trait3 do
      name                                   { "C-Name" }
      default                                { true }
    end
  end
end

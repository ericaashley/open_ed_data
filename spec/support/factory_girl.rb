require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    name 'My Name'
    password 'password'
    password_confirmation 'password'
  end

  factory :identity do
    association :user

    provider 'facebook'
    sequence(:uid) { |n| n.to_s }
  end

  factory :school do
    sequence(:ncessch) { |n| "NCESSCH#{n}" }
    sequence(:district_id) { |n| n }
    sequence(:city_id) { |n| n }
    sequence(:state_id) { |n| n }
  end

  factory :district do
    association :state

    sequence(:nces_id) { |n| "ID#{n}" }
    sequence(:district_name) { |n| "District#{n}" }

    # factory :district_with_school do
    #   after(:create) do |district|
    #     district.schools << FactoryGirl.create(:school)
    #   end
    # end
  end

  factory :city do
    association :state

    sequence(:city_name) { |n| "City#{n}" }
  end

  factory :state do
    sequence(:ansi_id) { |n| "ansi#{n}" }
    sequence(:state_name) { |n| "State#{n}" }
    sequence(:state_abbrev) { |n| "ST#{n}" }

    # factory :state_with_districts do
    #   transient do
    #     districts_count = 1
    #   end
    #
    #   after(:create) do |state, evaluator|
    #     create_list(:district, evaluator.districts_count, state: state)
    #   end
    # end
    #
    # factory :state_with_district_schools do
    #   after(:create) do |state, evaluator|
    #   end
    # end
  end

  factory :school_level do
    sequence(:nces_id) { |n| "NCESID#{n}" }
    sequence(:school_level_name) { |n| "SchoolLevel#{n}" }
  end
end

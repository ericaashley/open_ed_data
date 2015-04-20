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

  factory :state do
    sequence(:ansi_id) { |n| "ansi#{n}" }
    sequence(:state_name) { |n| "State#{n}" }
    sequence(:state_abbrev) { |n| "ST#{n}" }
  end

  factory :district do
    association :state

    sequence(:nces_id) { |n| "ID#{n}"}
    sequence(:district_name) { |n| "District#{n}" }
  end

  factory :city do
    association :state

    sequence(:city_name) { |n| "City#{n}" }
  end

  factory :school do
    association :district
    association :city
    association :state

    sequence(:ncessch) { |n| "NCESSCH#{n}" }
  end
end

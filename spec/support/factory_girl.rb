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
end

FactoryGirl.define do
  factory :student do
    sequence(:first_name) { |n| "evis#{n}"}
    sequence(:last_name) { |n| "gru#{n}"}
  end
end

FactoryGirl.define do
  factory :student do
    sequence(:first_name) { |n| "evis#{n}"}
    sequence(:last_name) { |n| "gru#{n}"}
  end

  factory :teacher do
    sequence(:first_name) { |n| "jolanta#{n}"}
    sequence(:last_name) { |n| "zibu#{n}"}
  end
end

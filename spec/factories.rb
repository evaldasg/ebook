FactoryGirl.define do
  factory :student do
    sequence(:first_name) { |n| "evis#{n}"}
    sequence(:last_name) { |n| "gru#{n}"}
    klass 3
    age 10
    speciality 'Chorinis dainavimas'
  end

  factory :teacher do
    sequence(:first_name) { |n| "jolanta#{n}"}
    sequence(:last_name) { |n| "zibu#{n}"}
    age 45
    experience 20
    speciality 'Akordeonas'
  end
end

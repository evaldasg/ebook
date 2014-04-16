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

  factory :discipline do
    sequence(:name) { |n| "discipline#{n}"}
    speciality 'Fortepijonas'
    klass 2
    duration 1.5
    variant 'Individuali pamoka'
    syllabus 'Pradinio ugdymo'
  end

  factory :group do
    teacher
    sequence(:name) { |n| "name#{n}" }
    description 'Grupė'
  end
end

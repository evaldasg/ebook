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
    klass_1 2
    klass_2 2
    klass_3 2
    klass_4 2
    klass_5 2
    klass_6 2
    klass_7 2
    klass_8 2
  end

  factory :group do
    teacher
    sequence(:name) { |n| "name#{n}" }
    description 'Grupė'
  end
end

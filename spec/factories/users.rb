FactoryGirl.define do
  factory :user do |f|
    f.user_name { Faker::Name.first_name}
    f.first_name { Faker::Name.first_name }
    f.last_name { Faker::Name.last_name }
    f.email "paula@email.com"
    f.password "secret123"
  end
end
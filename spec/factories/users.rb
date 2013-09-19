# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first_name "MyString"
    last_name "MyString"
    password_digest "MyString"
    user_type "MyString"
    email "MyString"
    phone_number "MyString"
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :restaurant do
    name "MyString"
    phone_number "MyString"
    summary "MyText"
    address "MyString"
    city "MyString"
    province "MyString"
    postal_code "MyString"
    email "deepak@email.com"
    website "www.nba.com"
  end
end

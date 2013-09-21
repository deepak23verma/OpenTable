# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reservation do
    user_id 1
    restaurant_id 1
    reservation_time "2013-09-19 16:17:48"
    party_size 1
  end
end

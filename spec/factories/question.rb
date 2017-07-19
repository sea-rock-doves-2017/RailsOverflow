require 'faker'

FactoryGirl.define do

  factory :question do
    title { Faker::Pokemon.name }
    text { Faker::Pokemon.location + '?' }
    user_id { 1 }
  end

end

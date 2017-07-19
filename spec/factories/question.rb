require 'faker'

FactoryGirl.define do

  factory :question do
    title { Faker::Pokemon.name }
    content { Faker::Pokemon.location + '?' }
    user_id { 1 }
  end

end

require 'faker'

FactoryGirl.define do

  factory :question do
    title { "Pokemon #{Faker::Pokemon.name}" }
    content { "Lives in #{Faker::Pokemon.location}?" }
    user_id { 1 }
  end

end

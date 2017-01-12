require 'faker'

description = ""
8.times do
  description += Faker::StarWars.quote
  description += " "
end
puts description

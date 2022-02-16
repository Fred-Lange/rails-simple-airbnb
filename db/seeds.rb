# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating 6 fake flats...'

6.times do
  flat = Flat.create!(
    name: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4),
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::Lorem.sentence(word_count: 8),
    price_per_night: rand(70..200),
    number_of_guests: rand(2..6)
  )
end

puts 'Finished!'

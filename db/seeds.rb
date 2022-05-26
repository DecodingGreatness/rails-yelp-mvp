require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
5.times do | |
  rest = Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.cell_phone, category: Faker::Restaurant.type )
  r = Review.create(rating: rand(0..5), content: Faker::Restaurant.review)

  puts "Restaurant name:#{rest.name}"
  puts "Rating:#{r.rating}"
end
puts "Finished!"

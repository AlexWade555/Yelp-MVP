# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
# puts "Cleaning database..."
# Restaurant.destroy_all if Rails.env == "development"

# 5.times do
#   Restaurant.create(
#     name: Faker::Restaurant.name

#     category: ["chinese", "italian", "japanese", "french", "belgian"].sample

#     # Faker::Restaurant.review        #=> "Brand new. Great design. Odd to hear pop music in a Mexican establishment. Music is a bit loud. It should be background."
#   )
#   p "**Created #{Restaurant.count} restaurants**"

# end

# puts "Creating restaurants..."
# dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "555 623", category: "chinese" }
# pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "555 623", category: "chinese" }
# mcdonalds = { name: "Mcdonalds", address: "5 High St, Melbourne E1 6PQ", phone_number: "555 623", category: "chinese" }
# resty = { name: "resty", address: "56 ShoreditchSt, Paris", phone_number: "555 623", category: "chinese" }
# bob = { name: "Bob's burgers", address: "5 Bob street", phone_number: "555 623", category: "chinese" }

# [dishoom, pizza_east, mcdonalds, resty, bob].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"
# end
# puts "Finished!"
Restaurant.destroy_all if Rails.env == 'development'
5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
end

p "**Created #{Restaurant.count} restaurants**"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'french', phone_number: 1234567 }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'belgian', phone_number: 1234567 }
pizza_hut = { name: "Pizza Hut", address: "69 LeWagon Bvd, Melbourne", category: 'italian', phone_number: 1234567 }
toms_curry_house = { name: "Toms Curry House", address: "1 Tom St, Mumbai", category: 'belgian', phone_number: 1234567 }
mcdonalds = { name: "McDonalds", address: "123 Ronald Rd, Richmond", category: 'japanese', phone_number: 1234567 }


[dishoom, pizza_east, pizza_hut, toms_curry_house, mcdonalds].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5 }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4 }
bistrot = { name: "bistrot", address: "7 rue de paris,75003 Paris", stars: 2 }
paradis_du_fruit =  { name: "Paradis du fruit", address: "56 rue Jean Jaures, 92110 clichy", stars: 4 }
pedra_alta =  { name: "Pedra Alta", address: "6 rue de Rome, 75003 Paris", stars: 3 }

[ dishoom, pizza_east,bistrot,paradis_du_fruit,pedra_alta ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

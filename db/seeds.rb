# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Favourite.destroy.all
Review.destroy.all
Car.destroy.all
Owner.destroy.all


owner1 = Owner.create(nickname: "Mat")
owner2 = Owner.create(nickname: "Greg")

puts "creating cars"
Car.create(brand: 'Renault', model: 'Clio', year: 2007, fuel: 'petrol', owner: owner1)
Car.create(brand: 'Ford', model: 'Fiesta', year: 2009, fuel: 'diesel', owner: owner2)
puts "cars created"

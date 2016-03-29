# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
jordan = Vendor.create(first_name: "Jordan", last_name: "Zapata", num_spots: 3)

jzspot = Spot.create(address: "bladsfasdfasd", zipcode: "12311", available: true, price: 15, description: "blahadsfas asdf")

jordan.spots << jzspot

sam = Customer.create(first_name: "Sam", last_name: "Langford", make: "Ford", model: "Mustang")

sam.spots << jzspot

josh = Customer.create(first_name: "Josh", last_name: "Davis", make: "Toyota", model: "Camry")

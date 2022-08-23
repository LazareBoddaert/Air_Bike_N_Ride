# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "making bicycle"
bicycle = Bicycle.new(
  title: "Test",
  category: 'enfant',
  description: "A Test bicycle",
  price_per_day: 50,
  size: 20,
  photo: "https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
)

puts "adding user"
u = User.find(1)
bicycle.user = u

puts "saving bicycle"
bicycle.save!

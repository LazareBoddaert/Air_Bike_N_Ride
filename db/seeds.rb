# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Bicycle.destroy_all
User.destroy_all
user1 = User.create!(username: "user1", email: "test@test.fr", password: '123456')
user2 = User.create!(username: "user2", email: "test1@test.fr", password: '123456')

bike1 = Bicycle.new(title: "vélo tout chemin", category: "VTC", description: "Vélo tout chemin en très bonne état.", price_per_day: "10", size: "60", photo: 'vtc_image.jpg')
bike1.user = user1
bike1.save!

bike2 = Bicycle.new(title: "tandem", category: "tandem", description: "Parfait pour toutes vos ballades à deux !", price_per_day: "20", size: "55", photo: 'tandem_image.jpg')
bike2.user = user2
bike2.save!

#   title: "vélo tout chemin",
#   category: "VTC",
#   price_per_day: "10",
#   size: "60"
# },
# {
#   title: "vélo utiltaire",
#   category: "cargo",
#   price_per_day: "20",
#   size: "54"
# },
# {
#   title: "vélo de ville",
#   category: "ville",
#   price_per_day: "10",
#   size: "56"
# },

# {
#   title: "vélo enfant",
#   category: "enfant",
#   price_per_day: "5",
#   size: ""
# }])

# test

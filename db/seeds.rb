# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Booking.destroy_all
Bicycle.destroy_all
User.destroy_all
user1 = User.create!(username: "user1", email: "test@test.fr", password: '123456')
user2 = User.create!(username: "user2", email: "test1@test.fr", password: '123456')
user3 = User.create!(username: "user3", email: "test2@test.fr", password: '123456')
user4 = User.create!(username: "user4", email: "test3@test.fr", password: '123456')
user5 = User.create!(username: "user5", email: "test4@test.fr", password: '123456')

bike1 = Bicycle.new(title: "Vélo tout chemin", category: "VTC", description: "Vélo tout chemin en très bonne état.", price_per_day: "10", size: "60", photo: 'vtc_image.jpg')
bike1.user = user1
bike1.save!

bike2 = Bicycle.new(title: "Tandem", category: "tandem", description: "Parfait pour toutes vos ballades à deux !", price_per_day: "20", size: "55", photo: 'tandem_image.jpg')
bike2.user = user2
bike2.save!

bike3 = Bicycle.new(title: "Vélo tout terrain", category: "VTC", description: "Vélo tout terrain en bonne état.", price_per_day: "15", size: "50", photo: 'vtt1.jpg')
bike3.user = user3
bike3.save!

bike4 = Bicycle.new(title: "Vélo pour enfant", category: "enfant", description: "Magnifique vélo rose !", price_per_day: "5", size: "30", photo: 'velo_enfant.jpg')
bike4.user = user4
bike4.save!

bike5 = Bicycle.new(title: "Vélo", category: "ville", description: "Un vélo.", price_per_day: "30", size: "60", photo: 'bike1.jpg')
bike5.user = user5
bike5.save!

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

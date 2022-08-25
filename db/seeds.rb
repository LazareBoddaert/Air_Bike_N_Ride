# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "destroying bookings"
Booking.destroy_all
puts "destroying bicycles"
Bicycle.destroy_all
puts "destroying users"
User.destroy_all

puts "creating users"
user1 = User.create!(username: "Wout van Aert", email: "test@test.fr", password: '123456')
user2 = User.create!(username: "Geraint Thomas", email: "test1@test.fr", password: '123456')
user3 = User.create!(username: "Sepp Kuss", email: "test2@test.fr", password: '123456')
user4 = User.create!(username: "Nairo Quintana", email: "test3@test.fr", password: '123456')
user5 = User.create!(username: "Jonas Vingegaard", email: "test4@test.fr", password: '123456')
user6 = User.create!(username: "Annemiek van Vleuten", email: "test5@test.fr", password: '123456')
user7 = User.create!(username: "Pierrette Pinneau", email: "test6@test.fr", password: '123456')
user8 = User.create!(username: "Pierreau Pinnette", email: "test7@test.fr", password: '123456')
user9 = User.create!(username: "Felicienne Jodion", email: "test8@test.fr", password: '123456')
user10 = User.create!(username: "Brier Paimboeuf", email: "test9@test.fr", password: '123456')

puts "creating bicycles"
bike1 = Bicycle.new(
  title: "City Rider",
  category: "City",
  description: "The perfect bike for all paths",
  price_per_day: "10",
  size: "60",
  address: "34 Rue de la Lune, 75002 Paris"
)
file = URI.open("https://res.cloudinary.com/dnid9bwsx/image/upload/v1661423286/vtc_image_ctisqq.jpg")
bike1.photo.attach(io: file, filename: "vtc_image.jpg", content_type: "image/jpg")
bike1.user = user1
bike1.save!

bike2 = Bicycle.new(
  title: "Tandem for Two",
  category: "Tandem",
  description: "Perfect for two - get yourself a buddy and get out there!",
  price_per_day: "20",
  size: "55",
  address: '9 Rue de Hauteville, 75010 Paris'
)
file = URI.open("https://res.cloudinary.com/dnid9bwsx/image/upload/v1661423286/tandem_image_adxxh2.jpg")
bike2.photo.attach(io: file, filename: "tandem_image.jpg", content_type: "image/jpg")
bike2.user = user2
bike2.save!

bike3 = Bicycle.new(
  title: "Mountain Bike",
  category: "Mountain",
  description: "You'll have no worries tackling rugged terrain on this one",
  price_per_day: "15",
  size: "50",
  address: "16 Villa Gaudelet, 75011 Paris"
)
file = URI.open("https://res.cloudinary.com/dnid9bwsx/image/upload/v1661423287/vtt1_psqo7t.jpg")
bike3.photo.attach(io: file, filename: "vtt1.jpg", content_type: "image/jpg")
bike3.user = user3
bike3.save!

bike4 = Bicycle.new(
  title: "The little one's first ride",
  category: "Child",
  description: "A magnificent pink bicycle, complete with stabilisers for a first outing in complete safety.",
  price_per_day: "5",
  size: "30",
  address: "27 Rue de Citeaux, 75012 Paris"
)
file = URI.open("https://res.cloudinary.com/dnid9bwsx/image/upload/v1661423285/velo_enfant_ytimes.jpg")
bike4.photo.attach(io: file, filename: "velo_enfant.jpg", content_type: "image/jpg")
bike4.user = user4
bike4.save!

bike5 = Bicycle.new(
  title: "The Village Bicycle",
  category: "City",
  description: "Everyone should give this ride a go",
  price_per_day: "30",
  size: "60",
  address: "13 Rue Damrémont, 75018 Paris"
)
file = URI.open("https://res.cloudinary.com/dnid9bwsx/image/upload/v1661423287/bike1_hp0n3y.jpg")
bike5.photo.attach(io: file, filename: "bike1.jpg", content_type: "image/jpg")
bike5.user = user5
bike5.save!

bike6 = Bicycle.new(
  title: "The Ride of your Life!",
  category: "Road",
  description: "You won't be same after you've taken this beauty for a spin",
  price_per_day: "500",
  size: "65",
  address: "174 Quai de Jemmapes, 75010 Paris"
)
file = URI.open("https://images.unsplash.com/photo-1576435728678-68d0fbf94e91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1048&q=80")
bike6.photo.attach(io: file, filename: "bike2.jpg", content_type: "image/jpg")
bike6.user = user6
bike6.save!

bike7 = Bicycle.new(
  title: "Pedal-powered Truck",
  category: "Cargo",
  description: "Carry anything, anywhere! Need to make some deliveries or set up a rolling soud system? You've found what you need",
  price_per_day: "55",
  size: "70",
  photo: 'https://bikepacking.com/wp-content/uploads/2022/03/cargo-doggo-omnium-34.jpg',
  address: "45 Avenue René Coty, 75014 Paris"
)
file = URI.open("")
bike7.photo.attach(io: file, filename: "bike1.jpg", content_type: "image/jpg")
bike7.user = user7
bike7.save!


bike8 = Bicycle.new(
  title: "Keepin' it Vintage",
  category: "City",
  description: "A real classic, who doesn't want to ride this blast from the past.",
  price_per_day: "35",
  size: "70",
  photo: 'https://images.unsplash.com/photo-1595726504173-29ed8ce3bce0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8b2xkJTIwYmljeWNsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60',
  address: "20 Rue Cujas, 75005 Paris"
)
file = URI.open("")
bike8.photo.attach(io: file, filename: "bike1.jpg", content_type: "image/jpg")
bike8.user = user8
bike8.save!

bike9 = Bicycle.new(
  title: "One for all the family", category: "Cargo",
  description: "Take the whole family out on one set of wheels with this spacious bakfiets style bicycle",
  price_per_day: "75",
  size: "50",
  photo: 'https://images.unsplash.com/photo-1556538628-451736d0e2c3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
  address: "37 Rue des Archives, 75004"
)
file = URI.open("")
bike9.photo.attach(io: file, filename: "bike1.jpg", content_type: "image/jpg")
bike9.user = user9
bike9.save!

bike10 = Bicycle.new(
  title: "Bring your own Wheels",
  category: "Road",
  description: "ATTENTION: I operate on a bring your own wheels policy. Saddle available on request (supplement 10 eur)",
  price_per_day: "60",
  size: "40",
  photo: 'https://images.unsplash.com/photo-1528732942118-fcc0881d7ba7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
  address: "55 Rue du Faubourg Saint-Honoré, 75008 Paris"
)
file = URI.open("")
bike10.photo.attach(io: file, filename: "bike1.jpg", content_type: "image/jpg")
bike10.user = user10
bike10.save!

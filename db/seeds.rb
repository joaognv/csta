# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Spot.all.delete_all
User.all.delete_all

user1 = User.create(email: "test@gmail.com", password: '123456')
user2 = User.create(email: "test2@gmail.com", password: '123456')

spot1 = Spot.create(user: user1, description: "Nice chill spot near city center", city: "Barcelona", address: "Carrer de Mallorca, 401", price: 8, capacity: 3, shower: true, wifi: true, pets: false)
spot1.remote_photo_url = "https://images.pexels.com/photos/269141/pexels-photo-269141.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb"
spot1.save

spot2 = Spot.create(user: user1, description: "Stylish cozy spot in Gracia", city: "Barcelona", address: "Carrer de l'Escorial, 171", price: 20, capacity: 2, shower: true, wifi: true, pets: false)
spot2.remote_photo_url = "https://images.pexels.com/photos/275484/pexels-photo-275484.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb"
spot2.save

spot3 = Spot.create(user: user2, description: "Feel at home in El Born", city: "Barcelona", address: "Carrer de Montcada, 22", price: 22, capacity: 3, shower: true, wifi: true, pets: true)
spot3.remote_photo_url = "https://images.pexels.com/photos/276686/pexels-photo-276686.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb"
spot3.save

spot4 = Spot.create(user: user2, description: "Best nap time of your life", city: "Barcelona", address: "Carrer de l'Escorial, 44", price: 30, capacity: 1, shower: false, wifi: true, pets: false)
spot4.remote_photo_url = "https://res.cloudinary.com/twenty20/private_images/t_watermark-criss-cross-10/v1448854790000/photosp/184aa205-1bcb-4a01-bc21-f3706b361e41/stock-photo-store-shopping-california-vintage-interior-shoes-bookshelf-los-angeles-design-184aa205-1bcb-4a01-bc21-f3706b361e41.jpg"
spot4.save

spot5 = Spot.create(user: user1, description: "Relax & enjoy your ciesta ", city: "Barcelona", address: "Carrer de Biada, 11", price: 18, capacity: 2, shower: true, wifi: true, pets: true)
spot5.remote_photo_url = "http://homestylediary.com/wp-content/uploads/2016/06/Cozy-Living-Room-Interior.jpg"
spot5.save

spot6 = Spot.create(user: user1, description: "Ciesta with style", city: "Barcelona", address: "Carrer de les Guilleries, 10", price: 35, capacity: 2, shower: true, wifi: true, pets: true)
spot6.remote_photo_url = "https://images.pexels.com/photos/584399/living-room-couch-interior-room-584399.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb"
spot6.save

user1.spots << spot5
user1.spots << spot6
user1.spots << spot4
user1.spots << spot3

user1.rented_out_spots << spot1
user1.rented_out_spots << spot2




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(email: "test@gmail.com", password: '123456')

user2 = User.create(email: "test2@gmail.com", password: '123456')

spot1 = Spot.create(user: user1, description: "Nice chill spot near city center", city: "barcelona", price: 8, capacity: 3, shower: true, wifi: true, pets: false)

spot2 = Spot.create(user: user1, description: "Nice chill spot near city center", city: "Gracia", price: 15, capacity: 3, shower: true, wifi: true, pets: false)
spot2.photo.url = ""
spot2.save
spot3 = Spot.create(user: user1, description: "Nice chill spot near city center", city: "Born", price: 22, capacity: 3, shower: true, wifi: true, pets: false)

# spot2 = Spot.create()


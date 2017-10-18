# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user  = User.create(username: "hui", password: "123", email: "h.h.com")
user2 = User.create(username: "person2", password: "123", email: "2.h.com")
user3 = User.create(username: "person3", password: "123", email: "3.h.com")
user4 = User.create(username: "person4", password: "123", email: "4.h.com")
user5 = User.create(username: "person5", password: "123", email: "5.h.com")
user6 = User.create(username: "person6", password: "123", email: "6.h.com")



ps = ParkingSpot.create(title: "Great Place Near The Beach", address: "11 broadway", city: "manhattan", state: "NY", zip: 11002, description: "The garage is almost as beautiful as me", owner_id: 1, price: 45.00, photo: "http://pointmetotheplane.boardingarea.com/wp-content/uploads/2016/03/parking-spot.jpg")
ps2 = ParkingSpot.create(title: "5 Minutes From Central Park", address: "p2 garage", city: "queens", state: "NY", zip: 76445, description: "This is my house", owner_id: 2, price: 15.00, photo: "https://www.goodnewsnetwork.org/wp-content/uploads/2016/10/Monster-Garage-Door-Facebook.jpg")
ps3 = ParkingSpot.create(title: "Nice Clean Lot For Your Car", address: "person3 garage", city: "bronx", state: "NY", zip: 24575, description: "I am hungry", owner_id: 3, price: 5.00, photo: "https://www.garageliving.com/blog/wp-content/uploads/2015/03/Garage-Rend_03_A.jpg")
ps4 = ParkingSpot.create(title: "Free Sandwich If You Park Here", address: "this.garage", city: "staten island", state: "NY", zip: 25754, description: "This is Sparta", owner_id: 4, price: 25.00, photo: "http://www.garaga.com/uploadedImages/Corpo_-_wwwgaragacom/Content/Knowledge_Center/FAQ/Porte_croche(1).jpg")


res = Reservation.create(startDate: "11/20/2017", endDate: "11/21/2017",  guest_id: 1, parking_spot_id: 2)
res2 = Reservation.create(startDate: "10/20/2017", endDate: "10/21/2017", guest_id: 2, parking_spot_id: 1)
res3 = Reservation.create(startDate: "10/23/2017", endDate: "10/30/2017", guest_id: 2, parking_spot_id: 4)
res4 = Reservation.create(startDate: "11/2/2017", endDate: "11/6/2017", guest_id: 3, parking_spot_id: 1)
res5 = Reservation.create(startDate: "11/10/2017", endDate: "11/14/2017",  guest_id: 4, parking_spot_id: 2)

rev = Review.create(review: "It was a nice spot", guest_id: 1, parking_spot_id: 1)
rev2 = Review.create(review: "Nice and clean", guest_id: 2, parking_spot_id: 2)
rev3 = Review.create(review: "Terrible host", guest_id: 3, parking_spot_id: 4)
rev4 = Review.create(review: "This is not Sparta", guest_id: 2, parking_spot_id: 3)

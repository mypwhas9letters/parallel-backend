# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "hui", password: "123", email: "h.h.com")
User.create(username: "person2", password: "123", email: "2.h.com")
User.create(username: "person3", password: "123", email: "3.h.com")
User.create(username: "person4", password: "123", email: "4.h.com")
User.create(username: "person5", password: "123", email: "5.h.com")
User.create(username: "person6", password: "123", email: "6.h.com")



ParkingSpot.create(title: "Great Place Near The Beach", address: "11 broadway", city: "manhattan", state: "NY", zip: 11002, description: "The garage is almost as beautiful as me", owner_id: 1, price: 45.00, photo: "http://pointmetotheplane.boardingarea.com/wp-content/uploads/2016/03/parking-spot.jpg")
ParkingSpot.create(title: "5 Minutes From Central Park", address: "p2 garage", city: "queens", state: "NY", zip: 76445, description: "This is my house", owner_id: 2, price: 15.00, photo: "https://www.goodnewsnetwork.org/wp-content/uploads/2016/10/Monster-Garage-Door-Facebook.jpg")
ParkingSpot.create(title: "Nice Clean Lot For Your Car", address: "person3 garage", city: "bronx", state: "NY", zip: 24575, description: "I am hungry", owner_id: 3, price: 5.00, photo: "https://www.garageliving.com/blog/wp-content/uploads/2015/03/Garage-Rend_03_A.jpg")
ParkingSpot.create(title: "Free Sandwich If You Park Here", address: "this.garage", city: "staten island", state: "NY", zip: 25754, description: "This is Sparta", owner_id: 4, price: 25.00, photo: "http://www.garaga.com/uploadedImages/Corpo_-_wwwgaragacom/Content/Knowledge_Center/FAQ/Porte_croche(1).jpg")
ParkingSpot.create(title: "Best place to park", address: "1134 main street", city: "queens", state: "NY", zip: 19330, description: "Newly renovated garage", owner_id: 1, price: 145.00, photo: "http://i.imgur.com/mYoeeIL.jpg")
ParkingSpot.create(title: "Near the Mexican place that gives you gas", address: "234 broom street", city: "brooklyn", state: "NY", zip: 76445, description: "I promise I won't eat your car", owner_id: 6, price: 5.00, photo: "http://www.wayne-dalton.com/PublishingImages/Fiberglass-Garage-Door-9800-Sonoma-Natural-Oak-home.jpg")
ParkingSpot.create(title: "Sun of a beach", address: "69 big street", city: "bronx", state: "NY", zip: 24575, description: "High tech", owner_id: 1, price: 15.00, photo: "https://www.designboom.com/wp-content/uploads/2016/04/yoshiaki-yamashita-transparent-garage-kyoto-home-designboom-1800.jpg")
ParkingSpot.create(title: "Please pick me, no one likes me", address: "bad itch ave", city: "staten island", state: "NY", zip: 25754, description: "just park here", owner_id: 5, price: 1.00, photo: "http://manhattan-nest.com/blog/wp-content/uploads/2015/07/garagebeforebefore1.jpg")


Reservation.create(date: "Fri Oct 27 2017",  guest_id: 1, parking_spot_id: 2, status: "approved")
Reservation.create(date: "Mon Nov 6 2017", guest_id: 2, parking_spot_id: 1, status: "denied")
Reservation.create(date: "Wed Nov 15 2017", guest_id: 2, parking_spot_id: 4, status: "pending")
Reservation.create(date: "Fri Nov 24 2017", guest_id: 3, parking_spot_id: 1, status: "approved")
Reservation.create(date: "Tue Nov 21 2017",  guest_id: 4, parking_spot_id: 2, status: "approved")
Reservation.create(date: "Sun Oct 29 2017",  guest_id: 5, parking_spot_id: 1, status: "approved")
Reservation.create(date: "Wed Nov 8 2017", guest_id: 6, parking_spot_id: 1, status: "denied")
Reservation.create(date: "Fri Nov 17 2017", guest_id: 4, parking_spot_id: 1, status: "pending")
Reservation.create(date: "Sat Nov 25 2017", guest_id: 2, parking_spot_id: 1, status: "pending")
Reservation.create(date: "Mon Nov 20 2017",  guest_id: 2, parking_spot_id: 2, status: "pending")



Review.create(review: "It was a nice spot", guest_id: 3, parking_spot_id: 1)
Review.create(review: "Nice and clean", guest_id: 2, parking_spot_id: 2)
Review.create(review: "Terrible host", guest_id: 3, parking_spot_id: 4)
Review.create(review: "This is not Sparta", guest_id: 2, parking_spot_id: 3)
Review.create(review: "I found sewards cleaner than this", guest_id: 2, parking_spot_id: 1)
Review.create(review: "Mine is too big for it", guest_id: 4, parking_spot_id: 1)



UnavailableDate.create(parking_spot_id: 1, unavailable_dates: "Mon Nov 6 2017")
UnavailableDate.create(parking_spot_id: 1, unavailable_dates: "Wed Nov 22 2017")
UnavailableDate.create(parking_spot_id: 1, unavailable_dates: "Sat Oct 28 2017")

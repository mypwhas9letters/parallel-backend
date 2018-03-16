# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
include Geokit::Geocoders


User.create(username: "hui", password: "123", email: "h.h.com", profile_pic: "https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/18738749_10154908376488369_4016707938573692042_o.jpg?_nc_cat=0&oh=7063b764eb38be0f9d75529e90cb079f&oe=5B02BFBA", bio: "Hi, my name is Hui.")
User.create(username: "person2", password: "123", email: "2.h.com", profile_pic: "http://dwgyu36up6iuz.cloudfront.net/heru80fdn/image/upload/c_fill,d_placeholder_thescene.jpg,fl_progressive,g_face,h_470,q_80,w_265/v1459538777/glamour_glamour-cover-stars-emilia-clarke-has-lost-her-spankx.jpg", bio: "MY SPACE IS BIGGER THAN YOUR'S")
User.create(username: "person3", password: "123", email: "3.h.com", profile_pic: "https://pbs.twimg.com/profile_images/822547732376207360/5g0FC8XX.jpg", bio: "Take me to your leader")
User.create(username: "person4", password: "123", email: "4.h.com", profile_pic: "https://www.heyuguys.com/images/2017/07/Who-Fears-Death-George-R.R.-Martin.jpg", bio: "I like pie")
User.create(username: "person5", password: "123", email: "5.h.com", profile_pic: "http://www.goldenglobes.com/sites/default/files/styles/portrait_medium/public/people/cover_images/leonardo_dicaprio-gt.jpg?itok=uZBLZv3X", bio: "I'm watching you")
User.create(username: "person6", password: "123", email: "6.h.com", profile_pic: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Jordan_Lipofsky.jpg/170px-Jordan_Lipofsky.jpg", bio: "Balling")


a = ParkingSpot.create(title: "Great Place Near The Beach", address: "11 broadway", city: "manhattan", state: "NY", zip: 10004, description: "The garage is almost as beautiful as me", owner_id: 1, price: 45.00, photo: "http://pointmetotheplane.boardingarea.com/wp-content/uploads/2016/03/parking-spot.jpg", type_of_space: "driveway", rating: 5)
  address = ("#{a.address}, #{a.city}, #{a.state} #{a.zip}")
  res = MultiGeocoder.geocode(address)
  a.lat = res.lat
  a.lng = res.lng
  a.save
a = ParkingSpot.create(title: "5 Minutes From Central Park", address: "620 Atlantic Ave", city: "brooklyn", state: "NY", zip: 11217, description: "This is my house", owner_id: 2, price: 15.00, photo: "https://www.goodnewsnetwork.org/wp-content/uploads/2016/10/Monster-Garage-Door-Facebook.jpg", type_of_space: "garage", rating: 2.5)
  address = ("#{a.address}, #{a.city}, #{a.state} #{a.zip}")
  res = MultiGeocoder.geocode(address)
  a.lat = res.lat
  a.lng = res.lng
  a.save
a = ParkingSpot.create(title: "Nice Clean Lot For Your Car", address: "1000 5th Ave,", city: "New York", state: "NY", zip: 10028, description: "I am hungry", owner_id: 3, price: 5.00, photo: "https://www.garageliving.com/blog/wp-content/uploads/2015/03/Garage-Rend_03_A.jpg", type_of_space: "driveway", rating: 3.5)
address = ("#{a.address}, #{a.city}, #{a.state} #{a.zip}")
res = MultiGeocoder.geocode(address)
a.lat = res.lat
a.lng = res.lng
a.save
a = ParkingSpot.create(title: "Free Sandwich If You Park Here", address: "1 E 161st St", city: "Bronx", state: "NY", zip: 10451, description: "This is Sparta", owner_id: 4, price: 25.00, photo: "https://theskunkpot.com/wp-content/uploads/2017/05/detached-garage-scovellwolfe-com.jpg", type_of_space: "garage", rating: 4.5)
address = ("#{a.address}, #{a.city}, #{a.state} #{a.zip}")
res = MultiGeocoder.geocode(address)
a.lat = res.lat
a.lng = res.lng
a.save
a = ParkingSpot.create(title: "Best place to park", address: "90 15 Queens Blvd", city: "queens", state: "NY", zip: 11373, description: "Newly renovated garage", owner_id: 1, price: 145.00, photo: "http://i.imgur.com/mYoeeIL.jpg", type_of_space: "driveway", rating: 2)
address = ("#{a.address}, #{a.city}, #{a.state} #{a.zip}")
res = MultiGeocoder.geocode(address)
a.lat = res.lat
a.lng = res.lng
a.save
a = ParkingSpot.create(title: "Near the Mexican place that gives you gas", address: "1 Beard St", city: "brooklyn", state: "NY", zip: 11231, description: "I promise I won't eat your car", owner_id: 6, price: 5.00, photo: "http://www.wayne-dalton.com/PublishingImages/Fiberglass-Garage-Door-9800-Sonoma-Natural-Oak-home.jpg", type_of_space: "driveway", rating: 5)
address = ("#{a.address}, #{a.city}, #{a.state} #{a.zip}")
res = MultiGeocoder.geocode(address)
a.lat = res.lat
a.lng = res.lng
a.save
a = ParkingSpot.create(title: "Sun of a beach", address: "11 W 53rd St", city: "New York", state: "NY", zip: 10019, description: "High tech", owner_id: 1, price: 15.00, photo: "https://www.designboom.com/wp-content/uploads/2016/04/yoshiaki-yamashita-transparent-garage-kyoto-home-designboom-1800.jpg", type_of_space: "driveway", rating: 4.5)
address = ("#{a.address}, #{a.city}, #{a.state} #{a.zip}")
res = MultiGeocoder.geocode(address)
a.lat = res.lat
a.lng = res.lng
a.save
a = ParkingSpot.create(title: "Please pick me, no one likes me", address: "614 Broadway", city: "staten island", state: "NY", zip: 10310, description: "just park here", owner_id: 5, price: 1.00, photo: "http://manhattan-nest.com/blog/wp-content/uploads/2015/07/garagebeforebefore1.jpg", type_of_space: "garage", rating: 3.5)
address = ("#{a.address}, #{a.city}, #{a.state} #{a.zip}")
res = MultiGeocoder.geocode(address)
a.lat = res.lat
a.lng = res.lng
a.save
a = ParkingSpot.create(title: "Just a parking space", address: "50 NJ-120", city: "East Rutherford", state: "NJ", zip: 07073, description: "Best space in NJ", owner_id: 6, price: 91.00, photo: "https://i.pinimg.com/736x/55/9b/16/559b1674ce421d7e5df9af3752a8c8cb--parking-notes-bad-parking.jpg", type_of_space: "garage", rating: 4.5)
address = ("#{a.address}, #{a.city}, #{a.state} #{a.zip}")
res = MultiGeocoder.geocode(address)
a.lat = res.lat
a.lng = res.lng
a.save
a = ParkingSpot.create(title: "I swear Im not creepy", address: "4802 10th Ave", city: "Brooklyn", state: "NY", zip: 11219, description: "Best space in NJ", owner_id: 5, price: 9.00, photo: "https://i2.wp.com/irisharoundtheworld.com/wp-content/uploads/2016/06/Car-park-short-irish-jokes-1.jpg?resize=671%2C363", type_of_space: "driveway", rating: 1.5)
address = ("#{a.address}, #{a.city}, #{a.state} #{a.zip}")
res = MultiGeocoder.geocode(address)
a.lat = res.lat
a.lng = res.lng
a.save







Reservation.create(date: "Fri Oct 27 2017",  guest_id: 1, parking_spot_id: 2, status: "approved")
Reservation.create(date: "Mon Nov 6 2017", guest_id: 2, parking_spot_id: 1, status: "denied")
Reservation.create(date: "Wed Nov 15 2017", guest_id: 2, parking_spot_id: 4, status: "pending")
Reservation.create(date: "Wed Nov 15 2017", guest_id: 2, parking_spot_id: 5, status: "pending")

Reservation.create(date: "Fri Nov 24 2017", guest_id: 3, parking_spot_id: 1, status: "approved")
Reservation.create(date: "Tue Nov 21 2017",  guest_id: 4, parking_spot_id: 2, status: "approved")
Reservation.create(date: "Sun Oct 29 2017",  guest_id: 5, parking_spot_id: 1, status: "approved")
Reservation.create(date: "Wed Nov 8 2017", guest_id: 6, parking_spot_id: 1, status: "denied")
Reservation.create(date: "Fri Nov 17 2017", guest_id: 4, parking_spot_id: 1, status: "pending")
Reservation.create(date: "Sat Nov 25 2017", guest_id: 2, parking_spot_id: 5, status: "pending")
Reservation.create(date: "Mon Nov 20 2017",  guest_id: 2, parking_spot_id: 5, status: "denied")

Reservation.create(date: "Sun Nov 26 2017", guest_id: 3, parking_spot_id: 1, status: "approved")
Reservation.create(date: "Sun Nov 26 2017",  guest_id: 4, parking_spot_id: 2, status: "approved")
Reservation.create(date: "Sat Dec 2 2017",  guest_id: 5, parking_spot_id: 1, status: "approved")

Reservation.create(date: "Wed Nov 8 2017", guest_id: 6, parking_spot_id: 2, status: "denied")
Reservation.create(date: "Fri Nov 14 2017", guest_id: 4, parking_spot_id: 2, status: "pending")
Reservation.create(date: "Fri Oct 24 2017", guest_id: 2, parking_spot_id: 5, status: "pending")
Reservation.create(date: "Sat Oct 28 2017",  guest_id: 2, parking_spot_id: 5, status: "denied")








Review.create(review: "It was a nice spot", guest_id: 3, parking_spot_id: 1)
Review.create(review: "Nice and clean", guest_id: 2, parking_spot_id: 2)
Review.create(review: "Terrible host", guest_id: 3, parking_spot_id: 4)
Review.create(review: "This is not Sparta", guest_id: 2, parking_spot_id: 3)
Review.create(review: "I found sewards cleaner than this", guest_id: 2, parking_spot_id: 1)
Review.create(review: "Mine is too big for it", guest_id: 4, parking_spot_id: 1)
Review.create(review: "It was a nice spot", guest_id: 4, parking_spot_id: 6)
Review.create(review: "Nice and clean", guest_id: 1, parking_spot_id: 3)
Review.create(review: "Terrible host", guest_id: 2, parking_spot_id: 1)
Review.create(review: "This is not Sparta", guest_id: 3, parking_spot_id: 1)
Review.create(review: "I found sewards cleaner than this", guest_id: 2, parking_spot_id: 2)
Review.create(review: "Mine is too big for it", guest_id: 1, parking_spot_id: 2)

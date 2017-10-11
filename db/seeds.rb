# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create(firstName: "hui", lastName: "wang", email: "h.h.com")
user = User.create(firstName: "person", lastName: "two", email: "h.h.com")

ps = ParkingSpot.create(address: "11 broadway", city: "manhattan", state: "NY", zip: 11002, description: "hello world", owner_id: 1)
res = Reservation.create(startDate: "11/20/2017", endDate: "11/21/2017", startTime: "12:00:00", endTime: "15:00:00", guest_id: 1, parking_spot_id: 1)
rev = Review.create(review: "It was a nice spot", guest_id: 1, reservation_id: 1)

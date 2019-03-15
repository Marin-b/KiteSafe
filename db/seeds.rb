# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User
# Advice
# Photo
# Review
# Spot
# Weather condition
#

puts "Running seed .. "

puts "Destroying all users"
Advice.destroy_all
Photo.destroy_all
Review.destroy_all
WeatherCondition.destroy_all
Spot.destroy_all
User.destroy_all

#New User
user = User.create(email: "chris@chris.com", password: "123456", level: 2)
#Leaves Review - Spot One
user_two = User.create(email: "avalon@avalon.com", password: "123456", level: 1)

#New User
user_three = User.create(email: "paulus@paulus.com", password: "123456", level: 5)
#Leaves Review - Spot Two
user_four = User.create(email: "marin@marin.com", password: "123456", level: 3)

#New User
user_five = User.create(email: "ellyn@ellyn.com", password: "123456", level: 4)
#Leaves Review - Spot Three
user_six = User.create(email: "example@example.com", password: "123456", level: 2)



puts "Users created"

#Spots New
spot = Spot.create(
  description: "Awesome spot",
  name: "Rodrigues Island",
  spot_type: "wavey",
  latitude: 46.227638,
  longitude: 2.213749,
  user: user)

spot_two = Spot.create(
  description: "Cool spot",
  name: "Tarifa, Spain",
  spot_type: "wavey",
  latitude: 52.373169,
  longitude: 4.890660,
  user: user_two)

spot_three = Spot.create(
  description: "Nice spot",
  name: "Combuco, Brazil",
  spot_type: "medium",
  latitude: 37.774929,
  longitude: -122.419418,
  user: user_three)

spot_four = Spot.create(
  description: "Its an ok spot",
  name: "Taveuni Island",
  spot_type: "flat",
  latitude: 51.165691,
  longitude: 10.451526,
  user: user_four)

#photos
  photo_one = Photo.create(

    )
#Advice
advice = Advice.create(
  description: "Cool spot go here when its not raining",
  kind: true,
  spot: spot)

advice = Advice.create(
  description: "Don't setup your kite too close to the water",
  kind: false,
  spot: spot)

advice = Advice.create(
  description: "Go here when its very windy",
  kind: true,
  spot: spot)

advice = Advice.create(
  description: "Don't go here when the waves are high",
  kind: false,
  spot: spot)

advice_two = Advice.create(
  description: "Be aware of sharks",
  kind: false,
  spot: spot_two)

advice_three = Advice.create(
  description: "Too many rocks",
  kind: false,
  spot: spot_three)

advice_four = Advice.create(
  description: "This is the best place to kitesurf",
  kind: true,
  spot: spot_four)

#Reviews
review = Review.create(
  rating: 5,
  description: "Awesome",
  date: Date.today,
  user: user_two,
  spot: spot)

review_five = Review.create(
  rating: 3,
  description: "Bit too to walk",
  date: Date.today,
  user: user_four,
  spot: spot)

review_six = Review.create(
  rating: 4,
  description: "Wind was perfect here!",
  date: Date.today,
  user: user_three,
  spot: spot)

review_two = Review.create(
  rating: 3,
  description: "It was ok",
  date: Date.today,
  user: user_four,
  spot: spot_two)

review_three = Review.create(
  rating: 4,
  description: "Fun times",
  date: Date.today,
  user: user_six,
  spot: spot_three)

review_four = Review.create(
  rating: 2,
  description: "Fun times...not!",
  date: Date.today,
  user: user_three,
  spot: spot_four)

difficulty_level = DifficultyLevel.create(
  optimal_wind_direction: 295,
  minimum_level: 4,
  spot: spot_4)

difficulty_level = DifficultyLevel.create(
  optimal_wind_direction: 155,
  minimum_level: 2,
  spot: spot_3)

difficulty_level = DifficultyLevel.create(
  optimal_wind_direction: 264,
  minimum_level: 1,
  spot: spot_two)

difficulty_level = DifficultyLevel.create(
  optimal_wind_direction: 255,
  minimum_level: 2,
  spot: spot)


puts "Seeds done"

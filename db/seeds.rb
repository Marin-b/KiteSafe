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


puts "Running seed .. "

puts "Destroying all users"
User.destroy_all
Spot.destroy_all
Advice.destroy_all
Photo.destroy_all
Review.destroy_all
WeatherCondition.destroy_all

#New User
user = User.create(email: "chris@chris.com", password: "123456")
#Leaves Review - Spot One
user_two = User.create(email: "avalon@avalon.com", password: "123456")

#New User
user_three = User.create(email: "paulus@paulus.com", password: "123456")
#Leaves Review - Spot Two
user_four = User.create(email: "marin@marin.com", password: "123456")

#New User
user_five = User.create(email: "ellyn@ellyn.com", password: "123456")
#Leaves Review - Spot Three
user_six = User.create(email: "example@example.com", password: "123456")



puts "Users created"

#Spots New
spot = Spot.create(
  description: "Awesome spot",
  spot_type: "wavey",
  latitude: 46.227638,
  longitude: 2.213749,
  user: user)

spot_two = Spot.create(
  description: "Cool spot",
  spot_type: "wavey",
  latitude: 52.373169,
  longitude: 4.890660,
  user: user_two)

spot_three = Spot.create(
  description: "Nice spot",
  spot_type: "medium",
  latitude: 37.774929,
  longitude: -122.419418,
  user: user_three)

spot_four = Spot.create(
  description: "Its an ok spot",
  spot_type: "flat",
  latitude: 51.165691,
  longitude: 10.451526,
  user: user_four)


#Advice
advice = Advice.create(
  description: "Cool spot go here when its not raining",
  kind: true,
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

#Weather Conditionq
weather_conditions = WeatherCondition.create(
  wind_direction: "offshore",
  wind_speed: "100k/h",
  wave_condition: "medium",
  date: Date.today,
  spot: spot)

weather_conditions = WeatherCondition.create(
  wind_direction: "offshore",
  wind_speed: "10k/h",
  wave_condition: "flat",
  date: Date.today,
  spot: spot_two)

weather_conditions = WeatherCondition.create(
  wind_direction: "offshore",
  wind_speed: "20k/h",
  wave_condition: "wavey",
  date: Date.today,
  spot: spot_three)

weather_conditions = WeatherCondition.create(
  wind_direction: "offshore",
  wind_speed: "50k/h",
  wave_condition: "flat",
  date: Date.today,
  spot: spot_four)

puts "Seeds done"

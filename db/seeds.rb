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
DifficultyLevel.destroy_all
Spot.destroy_all
User.destroy_all


#New User
user = User.create(email: "chris@chris.com", password: "123456", level: 2, age: "30", description: "Started kite surfing last year and love to explore new spots.", username: "Ratsuns", remote_avatar_url: "https://res.cloudinary.com/dwg18rj8x/image/upload/v1553177385/newnew.jpg" )
#Leaves Review - Spot One
user_two = User.create(email: "avalon@avalon.com", password: "123456", level: 1, age: "18", description: "Kitesurfing por vida!", username: "Avanava", remote_avatar_url: "https://res.cloudinary.com/dwg18rj8x/image/upload/v1553177281/avalon.jpg" )

#New User
user_three = User.create(email: "paulus@paulus.com", password: "123456", level: 5, age: "24", description: "I'm a pro...not really I just try new things and hope for the best :)", username: "PaulyShore1", remote_avatar_url: "https://res.cloudinary.com/dwg18rj8x/image/upload/v1553177285/paulus.jpg" )
#Leaves Review - Spot Two
user_four = User.create(email: "marin@marin.com", password: "123456", level: 5, age: "21", description: "Let's go kitesurfing together!", username: "BeiberFan100", remote_avatar_url: "https://res.cloudinary.com/dwg18rj8x/image/upload/v1553177284/marin.jpg" )

#New User
user_five = User.create(email: "ellyn@ellyn.com", password: "123456", level: 4, age: "21", description: "I am one with my board and kite :o. Much Zen!", username: "BonjourGal", remote_avatar_url: "https://res.cloudinary.com/dwg18rj8x/image/upload/v1553177283/ellyn.jpg" )
#Leaves Review - Spot Three
user_six = User.create(email: "mate@mate.com", password: "123456", level: 2, age: "18", description: "Started kite surfing last year. Let's explore new spots mate!", username: "Mate", remote_avatar_url: "https://res.cloudinary.com/dwg18rj8x/image/upload/v1553177281/augustin.jpg" )



puts "Users created"



#Spots New
spot = Spot.create(
  description: "This spot really had a great vibe from the start the waves were perfect and the wind wasn't too strong. It was just right!",
  name: "Rodrigues Island",
  spot_type: "Wavey",
  latitude: -19.7394581,
  longitude: 63.4634496,
  user: user
  )

spot_two = Spot.create(
  description: "These spots are always crowded whenever there are waves. Barcelona’s most popular kitesurfing spot has a beach break, and waves break on the sandy seabed. This is the type of wave amateurs would like to kitesurf in. The shifting sandbars at this spot cause the waves to form to the right as well as to the left.",
  name: "San Sebastia",
  spot_type: "Wavey",
  latitude: 43.31283,
  longitude: -1.97499,
  user: user_two
  )

spot_three = Spot.create(
  description: "This small bay is one of the most picturesque kitesurfing spots, the old fishermen’s huts on the beach and houses scattered all over the cliff have shaped its unique appearance. During winter, spring and autumn, Garraf is just the spot for the wave-riders that like more quiet beaches",
  name: "Garraf",
  spot_type: "Wavey",
  latitude: 41.252570,
  longitude: 1.900570,
  user: user_three
  )

spot_four = Spot.create(
  description: "El Prat’s beach break offers waves for the right and left handed. The spot is situated in the delta of the Llobregat river, with waves up to two meters for kitesurfers at any level. Catalonian kitesurfers favor this spot, and when the conditions are just right",
  name: "El Prat",
  spot_type: "Choppy",
  latitude: 41.269803,
  longitude: 2.041520,
  user: user_four
  )

spot_five = Spot.create(
  description: "Awesome spot! Sitges has a long kitesurfing tradition. It’s one of the favorite spots for Catalan longboarders as well! The spot gets it's name since it's close to the Sitges cemetery",
  name: "The Cemetary, Sitges",
  spot_type: "Flat",
  latitude: 41.234780,
  longitude: 1.811220,
  user: user_five
  )

spot_six = Spot.create(
  description: "This is a secret gem among the Catalonian spots for the more advanced kitesurfers. At Río Besos waves break onto a rocky point to the right, meaning that it’s a point break",
  name: "Sant Adrià de Besòs",
  spot_type: "Wavey",
  latitude: 41.420831,
  longitude: 2.233640,
  user: user_six
  )

spot_seven = Spot.create(
  description: "Here, you will find the longest waves of the area just up north from Barcelona. Great spot to hang out as well seeing as it is quite popular wiht the locals",
  name: "Masnou",
  spot_type: "Wavey",
  latitude: 41.479310,
  longitude: 2.319240,
  user: user_three
  )

spot_eight = Spot.create(
  description: "The long stretch at Montgat has plenty of beachs! Whenever the spots near Masnou get too crowded, Catalonian kitesurfers take cover at the variable and changing peaks of Montgat. Be respectful of their secret hide-out and you will have found yourself an enjoyable hang out",
  name: "Montgat",
  spot_type: "Flat",
  latitude: 41.466450,
  longitude: 2.279090,
  user: user_four
  )

spot_nine = Spot.create(
  description: "A one and a half hour’s drive north from Barcelona, you will find Sant Pere Pescador, a town at the Golf de Roses. the coastal area of Sant Pere Pescador is a very relaxing place for a kite-based trip",
  name: "Sant Pere Pescador",
  spot_type: "Flat",
  latitude: 42.187504,
  longitude: 3.110947,
  user: user_three
  )

spot_ten = Spot.create(
  description: "The international Barcelona-based kitesurf school Mojokite offers lessons and rentals at this great spot. Before you start discovering this and other sweet spots along the Catalonian Coast, you should check which zones are forbidden areas during the tourist high season, from June to September.",
  name: "Castelldefels",
  spot_type: "Flat",
  latitude: 41.264070,
  longitude: 1.982070,
  user: user
  )


puts "Spots created"

#Photos
photo_one = Photo.create(
  remote_photo_url: "http://res.cloudinary.com/dwg18rj8x/image/upload/cumbuco-sunset-kitesurf-e1517991750331.jpg",
  spot: spot
  )

photo_two = Photo.create(
  remote_photo_url: "http://res.cloudinary.com/dwg18rj8x/image/upload/v1553178236/kitesurfing-barcelona-spain-1.jpg",
  spot: spot_two
  )

photo_three = Photo.create(
  remote_photo_url: "http://res.cloudinary.com/dwg18rj8x/image/upload/v1553169141/Webp.net-resizeimage_2.jpg",
  spot: spot_three
  )

photo_four = Photo.create(
  remote_photo_url: "http://res.cloudinary.com/dwg18rj8x/image/upload/v1553169049/kitesurf_costanavarino12.jpg",
  spot: spot_four
  )

photo_five = Photo.create(
  remote_photo_url: "http://res.cloudinary.com/dwg18rj8x/image/upload/v1553169052/Webp.net-resizeimage_4.jpg",
  spot: spot_five
  )

photo_six = Photo.create(
  remote_photo_url: "http://res.cloudinary.com/dwg18rj8x/image/upload/v1553169049/kite.jpg",
  spot: spot_six
  )

photo_seven = Photo.create(
  remote_photo_url: "http://res.cloudinary.com/dwg18rj8x/image/upload/v1553169048/d4e82fe3c6d38159151f355a9be95c968bbfc1aa.jpg",
  spot: spot_seven
  )

photo_eight = Photo.create(
  remote_photo_url: "http://res.cloudinary.com/dwg18rj8x/image/upload/v1553169047/9a5e22bc61938af99f2128cbb07e2434.jpg",
  spot: spot_eight
  )

photo_nine = Photo.create(
  remote_photo_url: "http://res.cloudinary.com/dwg18rj8x/image/upload/v1553178308/kitesurfing_Barcelona_Spain.jpg",
  spot: spot_nine
  )

photo_ten = Photo.create(
  remote_photo_url: "http://res.cloudinary.com/dwg18rj8x/image/upload/v1553169052/Webp.net-resizeimage.jpg",
  spot: spot_ten
  )




puts "Photo's created"


#Advice
advice = Advice.create(
  description: "Cool spot go here when its not raining.",
  kind: true,
  spot: spot
  )
advice = Advice.create(
  description: "Don't setup your kite too close to the water.",
  kind: false,
  spot: spot
  )
advice = Advice.create(
  description: "Great when its not windy.",
  kind: true,
  spot: spot
  )
advice = Advice.create(
  description: "Don't go here when the waves are high.",
  kind: false,
  spot: spot
  )

advice_two = Advice.create(
  description: "Parking spots are hard to find in this area.",
  kind: false,
  spot: spot_two
  )
advice_two = Advice.create(
  description: "Don’t leave your valuables on the beach to be grabbed.",
  kind: false,
  spot: spot_two
  )
advice_two = Advice.create(
  description: "Awesome spot! It's just 15 minutes’ walking distance form Las Ramblas.",
  kind: true,
  spot: spot_two
  )
advice_two = Advice.create(
  description: "This is the perfect stress-free kite spot.",
  kind: true,
  spot: spot_two
  )

advice_three = Advice.create(
  description: "Watch out for the slightly rocky bottom.",
  kind: false,
  spot: spot_three
  )
advice_three = Advice.create(
  description: "Parking at this location is fairly easy, except for the summer period.",
  kind: false,
  spot: spot_three
  )
advice_three = Advice.create(
  description: "This is the type of wave beginners would like to kitesurf in",
  kind: true,
  spot: spot_three
  )
advice_three = Advice.create(
  description: "This is just the spot for the wave-riders that like more quiet beaches",
  kind: true,
  spot: spot_three
  )

advice_four = Advice.create(
  description: "El Prat’s beach break offers waves for the right and left handed. Quite strong.",
  kind: false,
  spot: spot_four
  )
advice_four = Advice.create(
  description: "Get there by public transport, especially on nice days.",
  kind: false,
  spot: spot_four
  )
advice_four = Advice.create(
  description: "This spot has a full line-up for great sessions",
  kind: true,
  spot: spot_four
  )
advice_four = Advice.create(
  description: "Waves can shift flat for fun freestyling!",
  kind: true,
  spot: spot_four
  )

advice_five = Advice.create(
  description: "Locals can be quite aggressive in the water.",
  kind: false,
  spot: spot_five
  )
advice_five = Advice.create(
  description: "Don’t leave your valuables around!",
  kind: false,
  spot: spot_five
  )
advice_five = Advice.create(
  description: "Great location and has tasty seafood restaurants and a buzzing nightlife scene",
  kind: true,
  spot: spot_five
  )
advice_five = Advice.create(
  description: "With good conditions, the sweet winds at this beach are totally worth it",
  kind: true,
  spot: spot_five
  )

advice_six = Advice.create(
  description: "Respect the locals!",
  kind: false,
  spot: spot_six
  )
advice_six = Advice.create(
  description: "Rocky at low tide. Be careful!",
  kind: false,
  spot: spot_six
  )
advice_six = Advice.create(
  description: "Amazingly reliable winds blowing with a constant strength of 12 to 24 knots.",
  kind: true,
  spot: spot_six
  )
advice_six = Advice.create(
  description: "That makes it an excellent lower intermediate spot",
  kind: true,
  spot: spot_six
  )

advice_seven = Advice.create(
  description: "The beach can get rocky at times with low tide!",
  kind: false,
  spot: spot_seven
  )
advice_seven = Advice.create(
  description: "Be careful of other surfers.",
  kind: false,
  spot: spot_seven
  )
advice_seven = Advice.create(
  description: "Reliable waves during the spring and summer.",
  kind: true,
  spot: spot_seven
  )
advice_seven = Advice.create(
  description: "Perfect for beginners",
  kind: true,
  spot: spot_seven
  )

advice_eight = Advice.create(
  description: "Parking can get difficult",
  kind: false,
  spot: spot_eight
  )
advice_eight = Advice.create(
  description: "Bring the correct kite for right conditions",
  kind: false,
  spot: spot_eight
  )
advice_eight = Advice.create(
  description: "Great winds and good local scene.",
  kind: true,
  spot: spot_eight
  )
advice_eight = Advice.create(
  description: "Waves get flat easily perfect for freetyling!",
  kind: true,
  spot: spot_eight
  )

advice_nine = Advice.create(
  description: "Mean locals so be weary.",
  kind: false,
  spot: spot_nine
  )
advice_nine = Advice.create(
  description: "Strong winds so be careful.",
  kind: false,
  spot: spot_nine
  )
advice_nine = Advice.create(
  description: "Good time of year to go is in the spring!",
  kind: true,
  spot: spot_nine
  )
advice_nine = Advice.create(
  description: "This spot has great lines to hit on a sunny day.",
  kind: true,
  spot: spot_nine
  )

advice_ten = Advice.create(
  description: "Respect the locals!",
  kind: false,
  spot: spot_ten
  )
advice_ten = Advice.create(
  description: "Rocky at low tide. Be careful!",
  kind: false,
  spot: spot_ten
  )
advice_ten = Advice.create(
  description: "Amazingly reliable winds blowing with a constant strength of 12 to 24 knots.",
  kind: true,
  spot: spot_ten
  )
advice_ten = Advice.create(
  description: "That makes it an excellent advanced spot",
  kind: true,
  spot: spot_ten
  )

puts "Advices created"


#Reviews
review = Review.create(
  rating: 5,
  description: "Awesome spot to go on a nice day!",
  user: user_two,
  spot: spot
  )

review_two = Review.create(
  rating: 3,
  description: "Bit too to far to walk.",
  user: user_four,
  spot: spot
  )

review_three = Review.create(
  rating: 4,
  description: "Wind was perfect here! Pefect!",
  user: user_three,
  spot: spot
  )

review_four = Review.create(
  rating: 3,
  description: "It was windy when I went so the spot was ok.",
  user: user_four,
  spot: spot_two
  )

review_five = Review.create(
  rating: 4,
  description: "Fun times in the water.",
  user: user_six,
  spot: spot_two
  )

review_six = Review.create(
  rating: 2,
  description: "Too rocky!",
  user: user_three,
  spot: spot_two
  )

review_seven = Review.create(
  rating: 3,
  description: "Lots of surfers here so I had to slow down alot.",
  user: user_four,
  spot: spot_three
  )

review_eight = Review.create(
  rating: 4,
  description: "Freestyle mania! But also dangerous if you are inexperienced.",
  user: user_six,
  spot: spot_three
  )

review_nine = Review.create(
  rating: 2,
  description: "Aggressive local scene!",
  user: user_three,
  spot: spot_three
  )

review_ten = Review.create(
  rating: 5,
  description: "Perfect...just perfect for me and my friends. ",
  user: user_four,
  spot: spot_four
  )

review_eleven = Review.create(
  rating: 2,
  description: "No shade to chill out.",
  user: user_six,
  spot: spot_four
  )

review_twelve = Review.create(
  rating: 4,
  description: "Good local food spots and good winds!",
  user: user_three,
  spot: spot_four
  )

review_thirteen = Review.create(
  rating: 3,
  description: "This spot ranges from day to day..scroll for best conditions",
  user: user_four,
  spot: spot_five
  )

review_fourteen = Review.create(
  rating: 4,
  description: "Never disappoints",
  user: user_six,
  spot: spot_five
  )

review_six = Review.create(
  rating: 5,
  description: "Utterly amazing",
  user: user_three,
  spot: spot_five
  )

review_four = Review.create(
  rating: 3,
  description: "It was ok..nothing too special",
  user: user_four,
  spot: spot_six
  )

review_five = Review.create(
  rating: 4,
  description: "Great session even though the waves were a little wavey",
  user: user_six,
  spot: spot_six
  )

review_six = Review.create(
  rating: 2,
  description: "Too many waves so go at an optimal time",
  user: user_three,
  spot: spot_six
  )

review_four = Review.create(
  rating: 3,
  description: "It was ok",
  user: user_four,
  spot: spot_seven
  )

review_five = Review.create(
  rating: 4,
  description: "Everytime I go here I meet new friends :)",
  user: user_six,
  spot: spot_seven
  )

review_six = Review.create(
  rating: 4,
  description: "I was shown this spot from a friend and I would recommend it to anyone!",
  user: user_three,
  spot: spot_seven
  )

review_four = Review.create(
  rating: 4,
  description: "Highly recommended to go!",
  user: user_four,
  spot: spot_eight
  )

review_five = Review.create(
  rating: 5,
  description: "This is must see spot!",
  user: user_six,
  spot: spot_eight
  )

review_six = Review.create(
  rating: 2,
  description: "Fun spot if you're a pro..if not just get better at kitesurfing.",
  user: user_three,
  spot: spot_eight
  )

review_four = Review.create(
  rating: 3,
  description: "The beach was dirty but the waves and wind were nice.",
  user: user_four,
  spot: spot_nine
  )

review_five = Review.create(
  rating: 4,
  description: "Will definately come back with my friends",
  user: user_six,
  spot: spot_nine
  )

review_six = Review.create(
  rating: 2,
  description: "A bit too rocky..must've went at low tide.",
  user: user_three,
  spot: spot_nine
  )

review_four = Review.create(
  rating: 4,
  description: "Windy...just how I like it!",
  user: user_four,
  spot: spot_ten
  )

review_five = Review.create(
  rating: 2,
  description: "I can't park anywhere! They need a parking lot.",
  user: user_six,
  spot: spot_ten
  )

review_six = Review.create(
  rating: 5,
  description: "Bring beers. That is all :)",
  user: user_three,
  spot: spot_ten
  )

puts "Reviews created"

#Difficulty_levels
difficulty_level = DifficultyLevel.create(
  offshore_direction: "N",
  level_0: 4,
  level_90: 2,
  level_180: 3,
  level_270: 2,
  spot: spot
  )

difficulty_level = DifficultyLevel.create(
  offshore_direction: "N",
  level_0: 4,
  level_90: 2,
  level_180: 3,
  level_270: 2,
  spot: spot_four
  )

difficulty_level_one = DifficultyLevel.create(
  offshore_direction: "NW",
  level_0: 5,
  level_90: 3,
  level_180: 4,
  level_270: 4,
  spot: spot_three
  )

difficulty_level_two = DifficultyLevel.create(
  offshore_direction: "S",
  level_0: 3,
  level_90: 1,
  level_180: 2,
  level_270: 1,
  spot: spot_two
  )

difficulty_level_three = DifficultyLevel.create(
  offshore_direction: "SE",
  level_0: 1,
  level_90: 1,
  level_180: 1,
  level_270: 1,
  spot: spot_five
  )

difficulty_level = DifficultyLevel.create(
  offshore_direction: "N",
  level_0: 4,
  level_90: 2,
  level_180: 3,
  level_270: 2,
  spot: spot_six
  )

difficulty_level_one = DifficultyLevel.create(
  offshore_direction: "NW",
  level_0: 5,
  level_90: 3,
  level_180: 4,
  level_270: 4,
  spot: spot_seven
  )

difficulty_level_two = DifficultyLevel.create(
  offshore_direction: "S",
  level_0: 3,
  level_90: 1,
  level_180: 2,
  level_270: 1,
  spot: spot_eight
  )

difficulty_level_three = DifficultyLevel.create(
  offshore_direction: "SE",
  level_0: 1,
  level_90: 1,
  level_180: 1,
  level_270: 1,
  spot: spot_nine
  )
difficulty_level_two = DifficultyLevel.create(
  offshore_direction: "SW",
  level_0: 3,
  level_90: 1,
  level_180: 2,
  level_270: 1,
  spot: spot_ten
  )

puts "Difficulty Level created"
puts "Seeds done"

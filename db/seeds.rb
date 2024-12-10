require "open-uri"

Country.destroy_all
User.destroy_all

user1 = User.create!(email: "user1@example.com", password: "password123", name: "John Doe")
user2 = User.create!(email: "user2@example.com", password: "password123", name: "Jane Smith")
user3 = User.create!(email: "user3@example.com", password: "password123", name: "Michael Johnson")
user4 = User.create!(email: "user4@example.com", password: "password123", name: "Emily Davis")
user5 = User.create!(email: "user5@example.com", password: "password123", name: "Daniel Harris")
user6 = User.create!(email: "user6@example.com", password: "password123", name: "Sarah Clark")


Country.create!(
  name:"Slovenia" ,
  capital_city: "Ljubljana",
  size: 100,
  available_activities: "Hiking, Biking, Archeological Museums",
  continent: "Europe",
  price_per_day: 500,
  availability_start_date: DateTime.now + rand(1..27).days,
  availability_end_date: DateTime.now + rand(28..50).days,
  flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Flag_of_Slovenia.svg/2560px-Flag_of_Slovenia.svg.png",
  user_id: user1.id
)

Country.create!(
  name:"Bhutan" ,
  capital_city: "Thimphou",
  size: 35,
  available_activities: "Reading, Hiking, Praying",
  continent: "Asia",
  price_per_day: 150,
  availability_start_date: DateTime.now + rand(1..27).days,
  availability_end_date: DateTime.now + rand(28..50).days,
  flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Flag_of_Bhutan.svg/2560px-Flag_of_Bhutan.svg.png",
  user_id: user2.id
)
Country.create!(
  name:"United States" ,
  capital_city: "Washington D.C",
  size: 1000,
  available_activities: "Driving, Driking, Shooting",
  continent: "North America",
  price_per_day: 999,
  availability_start_date: DateTime.now + rand(1..27).days,
  availability_end_date: DateTime.now + rand(28..50).days,
  flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Flag_of_the_United_States.svg/2560px-Flag_of_the_United_States.svg.png",
  user_id: user3.id
)
Country.create!(
  name:"Angola" ,
  capital_city: "Luanda",
  size: 250,
  available_activities: "Fishing, Night Markets, Safaris",
  continent: "Africa",
  price_per_day: 320,
  availability_start_date: DateTime.now + rand(1..27).days,
  availability_end_date: DateTime.now + rand(28..50).days,
  flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Flag_of_Angola.svg/1200px-Flag_of_Angola.svg.png",
  user_id: user4.id
)
Country.create!(
  name:"France" ,
  capital_city: "Paris",
  size: 350,
  available_activities: "Eating, Le Louvre, BHV",
  continent: "Europe",
  price_per_day: 1000,
  availability_start_date: DateTime.now + rand(1..27).days,
  availability_end_date: DateTime.now + rand(28..50).days,
  flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Flag_of_France.svg/langfr-225px-Flag_of_France.svg.png",
  user_id: user5.id
)
Country.create!(
  name:"Australia" ,
  capital_city: "Canberra",
  size: 215,
  available_activities: "Sky-diving, Watching Koalas, Surfing",
  continent: "Oceania",
  price_per_day: 1000,
  availability_start_date: DateTime.now + rand(1..27).days,
  availability_end_date: DateTime.now + rand(28..50).days,
  flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Australia_%28converted%29.svg/800px-Flag_of_Australia_%28converted%29.svg.png",
  user_id: user6.id
)

puts "#{Country.count} countries created!"

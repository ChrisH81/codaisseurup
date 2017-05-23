Category.destroy_all
User.destroy_all

web_development = Category.create(name: "Web Development")
fitness = Category.create(name: "Fitness")

miriam = User.create!(email: "miriam@codaisseurbnb.com", password: "abcd1234")

puts "User created"

event = Event.create(name:"JS Meetup", description:"An event for JavaScript enthusiasts to meet up and code.", location:"Colon 58, 1B, 11100 Cadiz (Spain)", price:0.00, capacity:100, includes_food:true, includes_drinks:true, starts_at:(03/02/2017), ends_at:(03/02/2017), active:true, user:miriam, categories: [web_development])

puts "Event Created"

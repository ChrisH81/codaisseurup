User.destroy_all

miriam = User.create!(email: "miriam@codaisseurbnb.com", password: "abcd1234")

puts "User created"

event = Event.create(name:"JS Meetup", description:"An event for JavaScript enthusiasts to meet up and code.", location:"Colon 58, 1B, 11100 Cadiz (Spain)", price:0.00, capacity:100, includes_food:true, includes_drinks:true, starts_at:(2018,2,3,4,5,6), ends_at:(2018,3,3,4,5,6), active:true, user:miriam)

puts "Event Created"

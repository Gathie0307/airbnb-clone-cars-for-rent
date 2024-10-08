# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
puts "Cleaning DB..."

Car.destroy_all
User.destroy_all

puts "Creating users..."

user1 = User.create!(name: "Richard", email: "Richard@gmail.com", password: "123456")
user2 = User.create!(name: "Jennifer", email: "Jennifer@gmail.com", password:"123456")
user3 = User.create!(name: "Michele", email: "Michele@gmail.com", password:"123456")
user4 = User.create!(name: "Zozimo", email: "Zozimo@gmail.com", password:"123456")
user5 = User.create!(name: "Paul", email: "Paul@gmail.com", password:"123456")
user6 = User.create!(name: "Michael", email: "Michael@hotmail.com", password:"123456")
user7 = User.create!(name: "Susan", email: "Susan@hotmail.com", password:"123456")
user8 = User.create!(name: "Robert", email: "Robert@hotmail.com", password:"123456")
user9 = User.create!(name: "Charles", email: "Charles@hotmail.com", password:"123456")
user10 = User.create!(name: "Maria", email: "Maria@hotmail.com", password:"123456")

Car.create!(brand: "Ford", model: "Fiesta", year: 2020, fuel: "petrol", user_id: user1.id)
Car.create!(brand: "Ford", model: "Explorer", year: 2019, fuel: "petrol", user_id: user2.id)
Car.create!(brand: "Ford", model: "Edge", year: 2023, fuel: "petrol", user_id: user3.id)
Car.create!(brand: "Ford", model: "Expedition", year: 2020, fuel: "petrol", user_id: user4.id)
Car.create!(brand: "VW", model: "Golf", year: 2020, fuel: "petrol", user_id: user5.id)
Car.create!(brand: "VW", model: "Passat", year: 2020, fuel: "petrol", user_id: user6.id)
Car.create!(brand: "VW", model: "Jetta", year: 2020, fuel: "petrol", user_id: user7.id)
Car.create!(brand: "VW", model: "Tiguan", year: 2019, fuel: "petrol", user_id: user8.id)
Car.create!(brand: "Fiat", model: "500", year: 2023, fuel: "petrol", user_id: user9.id)
Car.create!(brand: "Fiat", model: "Panda", year: 2020, fuel: "petrol", user_id: user10.id)
Car.create!(brand: "Fiat", model: "Tipo", year: 2020, fuel: "petrol", user_id: user11.id)
Car.create!(brand: "Fiat", model: "500X", year: 2020, fuel: "petrol", user_id: user12.id)
Car.create!(brand: "Audi", model: "A4", year: 2020, fuel: "petrol", user_id: user13.id)
Car.create!(brand: "Audi", model: "Q5", year: 2020, fuel: "petrol", user_id: user14.id)
Car.create!(brand: "Audi", model: "Q7", year: 2020, fuel: "petrol", user_id: user15.id)
Car.create!(brand: "Audi", model: "A5 Sportback", year: 2020, fuel: "petrol", user_id: user16.id)
Car.create!(brand: "Mercedez Benz", model: "C-Class", year: 2019, fuel: "petrol", user_id: user17.id)
Car.create!(brand: "Mercedez Benz", model: "GLC", year: 2023, fuel: "petrol", user_id: user18.id)
Car.create!(brand: "Mercedez Benz", model: "S-Class", year: 2020, fuel: "petrol", user_id: user19.id)
Car.create!(brand: "Mercedez Benz", model: "E-Class", year: 2020, fuel: "petrol", user_id: user20.id)

puts "Seed created! #{User.all.count} users created & #{Car.all.count} cars created"

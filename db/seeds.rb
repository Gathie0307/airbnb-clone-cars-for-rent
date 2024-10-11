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

Car.create!(brand: "Ford", model: "Fiesta", year: 2020, user_id: user1.id, image_url: "https://carwow-uk-wp-3.imgix.net/fordfiestaalternativeslead.jpg")
Car.create!(brand: "Ford", model: "Explorer", year: 2019, user_id: user2.id, image_url: "https://media.ed.edmunds-media.com/ford/explorer/2025/oem/2025_ford_explorer_4dr-suv_platinum_fq_oem_1_1600.jpg")
Car.create!(brand: "Ford", model: "Edge", year: 2023, user_id: user3.id, image_url: "https://www.topgear.com/sites/default/files/cars-car/image/2017/01/fordedge_uklaunch-exteriordynamicroad_34.jpg")
Car.create!(brand: "Ford", model: "Expedition", year: 2020, user_id: user4.id, image_url: "https://www.vdm.ford.com/content/dam/vdm_ford/live/en_us/ford/nameplate/expedition/2024/collections/3-2/24_FRD_FSD_60666_Stealth_White_desktop_fade.jpg/_jcr_content/renditions/cq5dam.web.1440.1440.jpeg")
Car.create!(brand: "VW", model: "Golf", year: 2020, user_id: user5.id, image_url: "https://www.topgear.com/sites/default/files/2022/12/VW%20R%20Brand%20Day_Hardy%20Mutschler%20096%20%28Kopie%29.jpg")
Car.create!(brand: "VW", model: "Passat", year: 2020, user_id: user6.id, image_url:"https://uploads.vw-mms.de/system/production/images/vwn/029/415/images/869424d4159b91be4431c309c1e63f53ea727f0f/DB2019AU00902_web_1600.jpg?1649155074" )
Car.create!(brand: "VW", model: "Jetta", year: 2020, user_id: user7.id, image_url: "https://static0.carbuzzimages.com/wordpress/wp-content/uploads/gallery-images/original/992000/700/992797.jpg")
Car.create!(brand: "VW", model: "Tiguan", year: 2019, user_id: user8.id, image_url: "https://www.motorfinity.uk/photos/vw_tiguan_r_line_v2_1700823458.jpg")
Car.create!(brand: "Fiat", model: "500", year: 2023, user_id: user9.id, image_url: "https://storagegohistorics.blob.core.windows.net/stock/5891-0.jpg?v=63847398285407")
Car.create!(brand: "Fiat", model: "Panda", year: 2020, user_id: user10.id, image_url: "https://images.pistonheads.com/nimg/47540/blobid0.jpg")
Car.create!(brand: "Fiat", model: "Tipo", year: 2020, user_id: user1.id, image_url: "https://car-images.bauersecure.com/wp-images/12039/tipo-001.jpg")
Car.create!(brand: "Fiat", model: "500X", year: 2020, user_id: user2.id, image_url: "https://assets.whichcar.com.au/image/upload/s--zXAhM-St--/c_fill,f_auto,q_auto:good/t_p_16x9/v1/archive/whichcar/2016/05/05/-1/Fiat-500x-side.jpg")
Car.create!(brand: "Audi", model: "A4", year: 2020, user_id: user3.id, image_url: "https://www.topgear.com/sites/default/files/cars-car/image/2021/03/audiuk0002282120audi20a420saloon.jpg")
Car.create!(brand: "Audi", model: "Q5", year: 2020, user_id: user4.id, image_url: "https://hips.hearstapps.com/hmg-prod/images/2025-audi-q5-112-66d1c3a5d34fd.jpg?crop=0.636xw:0.635xh;0.149xw,0.290xh&resize=768:*")
Car.create!(brand: "Audi", model: "Q7", year: 2020, user_id: user5.id, image_url:"https://car-images.bauersecure.com/wp-images/3557/audiq7_057.jpg")
Car.create!(brand: "Audi", model: "A5 Sportback", year: 2020, user_id: user6.id, image_url: "https://d1gymyavdvyjgt.cloudfront.net/drive/images/made/drive/images/remote/https_d2yv47kjv2gmpz.cloudfront.net/filestore/6/5/2_16a47bc5031899f/35d30eead1bace729e63bb0af472677b/256_063a107dfecf156_794_529_70.jpg")
Car.create!(brand: "Mercedez Benz", model: "C-Class", year: 2019, user_id: user7.id, image_url: "https://www.motortrend.com/uploads/2022/09/2024-Mercedes-AMG-C63-S-E-Performance-sedan-38.jpg?w=768&width=768&q=75&format=webp")
Car.create!(brand: "Mercedez Benz", model: "GLC", year: 2023, user_id: user8.id, image_url: "https://images.prismic.io/carwow/041ceb5c-6382-4852-becd-b5af9907b012_2023+Mercedes+GLC+Front+3%3A4+Driving+%60.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1125")
Car.create!(brand: "Mercedez Benz", model: "S-Class", year: 2020, user_id: user9.id, image_url: "https://www.autocar.co.uk/sites/autocar.co.uk/files/1-mercedes-benz-s-class-2022-road-test-review-tracking-front.jpg")
Car.create!(brand: "Mercedez Benz", model: "E-Class", year: 2020, user_id: user2.id, image_url: "https://www.topgear.com/sites/default/files/cars-car/carousel/2021/05/large-38968-e300cabriolet.jpg")

puts "Seed created! #{User.all.count} users created & #{Car.all.count} cars created"

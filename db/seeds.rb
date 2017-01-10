# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed users:
# devin = User.new(email: "devin@shipping-app.com", password: "password", password_confirmation: "password")
# devin.save!

# colin = User.new(email: "colin@shipping-app.com", password: "password", password_confirmation: "password")
# colin.save!

# Syntax for exaxctly that which Devin found online:
# user = User.new(
#  email: 'user@domain.com',
#  password: '123456789',
#  password_confirmation: '123456789'
# )
# user.skip_confirmation!
# user.save!

# Seed boats:
# ports = ["Shanghai", "Singapore", "Shenzhen", "Hong Kong", "Ningbo-Zhoushan", "Busan", "Qingdao", "Guangzhou", "Jebel Ali (Dubai)", "Tianjin", "Rotterdam", "Port Klang", "Kaohsiung", "Dalian", "Hamburg", "Antwerp", "Xiamen", "Los Angeles", "Tanjung Pelepas", "Long Beach"]
# (1..6).each do |i|
# 	boat = Boat.new
# 	boat.name = "S.S. " + Faker::TwinPeaks.character
# 	boat.capacity = Random.rand(2..10) * 50
# 	boat.cargo = 0
# 	boat.location = ports.shuffle.first
# 	boat.user_id = (i%2)+1
# 	boat.save!
# end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying Restaurant DB"
Restaurant.destroy_all
User.destroy_all

users = []
puts 'Creating Users'
5.times do |each|
  email = Faker::Internet.email
  password = 123456
  user = User.create!(email: email, password: password)
  users << user
end

puts 'Creating Restaurants'
10.times do |each|
  name = Faker::Name.name
  address = Faker::Address.full_address
  user = users.sample

  Restaurant.create!(name:name, address:address, user:user)
end

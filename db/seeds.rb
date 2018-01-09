# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating Users'
User.create!([
  { name: Faker::GameOfThrones.character, email: Faker::Internet.email, password: 'qweqwe123',
   birthdate: Faker::Date.birthday(18, 43), phone: Faker::PhoneNumber.cell_phone, status: 'enabled' },
  { name: Faker::GameOfThrones.character, email: Faker::Internet.email, password: 'qweqwe123',
   birthdate: Faker::Date.birthday(18, 43), phone: Faker::PhoneNumber.cell_phone, status: 'enabled' },
  { name: Faker::GameOfThrones.character, email: Faker::Internet.email, password: 'qweqwe123',
   birthdate: Faker::Date.birthday(18, 43), phone: Faker::PhoneNumber.cell_phone, status: 'enabled' },
  { name: Faker::GameOfThrones.character, email: Faker::Internet.email, password: 'qweqwe123',
   birthdate: Faker::Date.birthday(18, 43), phone: Faker::PhoneNumber.cell_phone, status: 'enabled' },
  { name: Faker::GameOfThrones.character, email: Faker::Internet.email, password: 'qweqwe123',
   birthdate: Faker::Date.birthday(18, 43), phone: Faker::PhoneNumber.cell_phone, status: 'enabled' },
 { name: Faker::GameOfThrones.character, email: Faker::Internet.email, password: 'qweqwe123',
   birthdate: Faker::Date.birthday(18, 43), phone: Faker::PhoneNumber.cell_phone, status: 'enabled' }
])

puts 'Creating products'

  puts 'Adding products to users'
  User.each do |user|
    puts "#{user.name} is receiving."
    user.products.create!([
      { user: user, name: Faker::Food.dish, description: Faker::Food.description,  price: "30,50",
      min_price: "30,00", max_price: "35,99", status: 'enabled'},
      { user: user, name: Faker::Food.dish, description: Faker::Food.description,  price: "30,50",
      min_price: "30,00", max_price: "35,99", status: 'enabled'},
      { user: user, name: Faker::Food.dish, description: Faker::Food.description,  price: "30,50",
      min_price: "30,00", max_price: "35,99", status: 'enabled'},
      { user: user, name: Faker::Food.dish, description: Faker::Food.description,  price: "30,50",
      min_price: "30,00", max_price: "35,99", status: 'enabled'},
      { user: user, name: Faker::Food.dish, description: Faker::Food.description,  price: "30,50",
      min_price: "30,00", max_price: "35,99", status: 'enabled'},
      { user: user, name: Faker::Food.dish, description: Faker::Food.description,  price: "30,50",
      min_price: "30,00", max_price: "35,99", status: 'enabled'},
      { user: user, name: Faker::Food.dish, description: Faker::Food.description,  price: "30,50",
      min_price: "30,00", max_price: "35,99", status: 'enabled'},
      { user: user, name: Faker::Food.dish, description: Faker::Food.description,  price: "30,50",
      min_price: "30,00", max_price: "35,99", status: 'enabled'},
      { user: user, name: Faker::Food.dish, description: Faker::Food.description,  price: "30,50",
      min_price: "30,00", max_price: "35,99", status: 'enabled'},
      { user: user, name: Faker::Food.dish, description: Faker::Food.description,  price: "30,50",
      min_price: "30,00", max_price: "35,99", status: 'enabled'},
      { user: user, name: Faker::Food.dish, description: Faker::Food.description,  price: "30,50",
      min_price: "30,00", max_price: "35,99", status: 'enabled'},
      { user: user, name: Faker::Food.dish, description: Faker::Food.description,  price: "30,50",
      min_price: "30,00", max_price: "35,99", status: 'enabled'},
      { user: user, name: Faker::Food.dish, description: Faker::Food.description,  price: "30,50",
      min_price: "30,00", max_price: "35,99", status: 'enabled'},
      { user: user, name: Faker::Food.dish, description: Faker::Food.description,  price: "30,50",
      min_price: "30,00", max_price: "35,99", status: 'enabled'}
    ])
  end

  puts 'Adding pictures to products'
  Product.all.each do |product|
    Picture.create!(url: Faker::Bitcoin.address , description: Faker::Currency.name , hint: Faker::Dog.breed)
  end

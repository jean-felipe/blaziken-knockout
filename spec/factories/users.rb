FactoryBot.define do
  factory :user do
    name Faker::GameOfThrones.character
    email Faker::Internet.email
    password 'qweqwe123'
    birthdate Faker::Date.birthday(18, 43)
    phone Faker::PhoneNumber.cell_phone
    cpf
    status 'enabled'
    age {(birthdate - Date.today)}
  end
end
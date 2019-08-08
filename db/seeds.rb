# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'pry'
require 'faker'

10.times do
  City.create(
    name: Faker::TvShows::GameOfThrones.city,
    zip_code: Faker::Address.zip_code
  )
end

10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name ,
    description: Faker::TvShows::HowIMetYourMother.quote,
    email: Faker::Internet.unique.email,
    age: rand(18..85),
    city: City.all.sample, # rand ao anaty City_id :City.find(rand(first_city_id..last_city_id)),
  )
end

20.times do
  Gossip.create(
    title: Faker::Book.title,
    content: Faker::Quotes::Shakespeare.romeo_and_juliet_quote,
    user: User.find(rand(1..10))
  )
end

10.times do
  Tag.create(title: Faker::Creature::Dog.sound)
end

20.times do
  PrivateMessage.create(
    sender: User.find(rand(1..10)),
    content: Faker::ChuckNorris.fact
  )
end
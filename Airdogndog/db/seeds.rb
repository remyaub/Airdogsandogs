# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

15.times do
    city = City.create!(name: Faker::Address.city)
end

10.times do
    dog = Dog.create!(name: Faker::Dog.name, breed: Faker::Dog.breed, city_id: rand(1..15))
end

20.times do
    dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand(1..15))
end

15.times do
    stroll = Stroll.create!(dog_id: rand(1..10), dogsitter_id: rand(1..20), city_id: rand(1..15))
end



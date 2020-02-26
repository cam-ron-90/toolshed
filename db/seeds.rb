# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Tool.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?


demo_user = User.new(
    email: 'd@no.com',
    password: '111111',
    first_name: 'Dani',
    last_name: 'P',
    bio: "this is a bad ass bio about me.",
    phone_number: "040000000"
  )
demo_user.save!

10.times do
  ref = demo_user.id
  category = (%w[power hand automotive plumbing gardening other]).sample
  price = rand(10000..50000)
  description = Faker::Lorem.sentence(word_count: 4)
  photo = Faker::LoremFlickr.image(size: "700x500", search_terms: ['tools'])
  tool = Tool.new(
    name: Faker::Appliance.equipment,
    category: category,
    price: price,
    description: description,
    photo: photo,
    location: Faker::Address.city,
    user_id: ref
    )
  tool.save!
end


10.times do
  user = User.new(
    email: rand(10..9999).to_s + "@noemail.com",
    password: 'password',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    bio: "this is a bad ass bio about me.",
    phone_number: "041 234 " + rand(1000..9999).to_s
  )
  user.save!
end

5.times do
  users = User.all
  users.each do |user|
    ref = user.id
    category = (%w[power hand automotive plumbing gardening other]).sample
    price = rand(10000..50000)
    description = Faker::Lorem.sentence(word_count: 4)
    photo = Faker::LoremFlickr.image(size: "700x500", search_terms: ['tools'])
    tool = Tool.new(
      name: Faker::Appliance.equipment,
      category: category,
      price: price,
      description: description,
      photo: photo,
      location: Faker::Address.city,
      user_id: ref
    )
    tool.save!
  end
end


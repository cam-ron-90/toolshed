# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'faker'
Booking.destroy_all
Tool.destroy_all
User.destroy_all

demo_user = User.new(
    email: 'user@user.com',
    password: 'password',
    first_name: 'McLovin',
    last_name: 'Fly',
    bio: "this is a bad ass bio about me.",
    phone_number: "040000000"
  )
demo_user.save!


  tool = Tool.new(
    name: 'Drill',
    category: 'Power Tools',
    price: 250,
    description: 'really good tool yo',
    location: '26 Shelley st, Elwood',
    user: demo_user
    )

  file = URI.open('https://images.unsplash.com/photo-1504148455328-c376907d081c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1743&q=80')
  tool.photos.attach(io: file, filename: 'drill.png', content_type: 'image/png')
  tool.save!

  tool = Tool.new(
    name: 'Hammer',
    category: 'Hand Tools',
    price: 250,
    description: 'really good hammer yo',
    location: '26 Shelley st, Elwood',
    user: demo_user
    )

  file = URI.open('https://images.pexels.com/photos/209235/pexels-photo-209235.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
  tool.photos.attach(io: file, filename: 'drill.png', content_type: 'image/png')
  tool.save!

  tool = Tool.new(
    name: 'Wheelbarrow',
    category: 'Landscaping',
    price: 250,
    description: 'really good tool yo',
    location: '26 Shelley st, Elwood',
    user: demo_user
    )

  file = URI.open('https://images.unsplash.com/photo-1578768400368-eedb2f45923b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
  tool.photos.attach(io: file, filename: 'drill.png', content_type: 'image/png')
  tool.save!

  tool = Tool.new(
    name: 'Car Jack',
    category: 'Automotive',
    price: 250,
    description: 'really good tool yo',
    location: '26 Shelley st, Elwood',
    user: demo_user
    )

  file = URI.open('https://www.holtsauto.com/holts/wp-content/uploads/sites/6/2018/10/iStock-183354286.jpg')
  tool.photos.attach(io: file, filename: 'drill.png', content_type: 'image/png')
  tool.save!

  tool = Tool.new(
    name: 'Excavator',
    category: 'Machinery',
    price: 250,
    description: 'really good tool yo',
    location: '26 Shelley st, Elwood',
    user: demo_user
    )

  file = URI.open('https://images.unsplash.com/photo-1533792196748-d4698a011bcf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  tool.photos.attach(io: file, filename: 'drill.png', content_type: 'image/png')
  tool.save!

  tool = Tool.new(
    name: 'Groovy Vacuum Cleaner',
    category: 'Other Tools',
    price: 250,
    description: 'really good tool yo',
    location: '26 Shelley st, Elwood',
    user: demo_user
    )

  file = URI.open('https://images.unsplash.com/photo-1569698134101-f15cde5cd66c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
  tool.photos.attach(io: file, filename: 'drill.png', content_type: 'image/png')
  tool.save!

# 10.times do
#   ref = demo_user.id
#   category = (['Power Tools', 'Hand Tools', 'Landscaping', 'Automotive', 'Machinery', 'Other Tools']).sample
#   price = rand(10000..50000)
#   description = Faker::Lorem.sentence(word_count: 4)
#   photo = Faker::LoremFlickr.image(size: "700x500", search_terms: ['tools'])
#   tool = Tool.new(
#     name: Faker::Appliance.equipment,
#     category: category,
#     price: price,
#     description: description,
#     photo: photo,
#     location: Faker::Address.city,
#     user_id: ref
#     )
#   tool.save!
# end


# 10.times do
#   user = User.new(
#     email: rand(10..9999).to_s + "@noemail.com",
#     password: 'password',
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     bio: "this is a bad ass bio about me.",
#     phone_number: "041 234 " + rand(1000..9999).to_s
#   )
#   user.save!
# end

# 5.times do
#   users = User.all
#   users.each do |user|
#     ref = user.id
#     category = (['Power Tools', 'Hand Tools', 'Automotive Tools', 'Plumbing Tools', 'Gardening Tools', 'Other Tools']).sample
#     price = rand(10000..50000)
#     description = Faker::Lorem.sentence(word_count: 4)
#     photo = Faker::LoremFlickr.image(size: "700x500", search_terms: ['tools'])
#     tool = Tool.new(
#       name: Faker::Appliance.equipment,
#       category: category,
#       price: price,
#       description: description,
#       photo: photo,
#       location: Faker::Address.city,
#       user_id: ref
#     )
#     tool.save!
#   end
# end


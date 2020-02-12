# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
content_list = [
  [
    User.first,
    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "app/assets/images/contents/photo1.jpg"
  ],
  [
    User.first,
    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "app/assets/images/contents/photo2.jpg"
  ],
  [
    User.first,
    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "app/assets/images/contents/photo3.jpg"
  ],

]

content_list.each do |user, description, file |
  content = Content.new( user: user, description: description)
  media = File.open(file)
  content.photo.attach(io: media, filename:'nes.png', content_type: 'image/jpg')
  content.save!
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

content_list = [
  [ User.first, "1" ],
  [ User.first, "2" ],
  [ User.first, "3" ],
  [ User.first, "4" ]
]

content_list.each do |user, description |
  Content.create( user: user, description: description,  )
end

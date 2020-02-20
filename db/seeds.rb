# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'hello@ogram.com', password: 'mdpmdp')

content_list = [
  [
    "What's your favorite movie by Leo di Caprio?",
    "app/assets/images/contents/photo1.jpg"
  ],
  [
    "What's your all time favorite movie?",
    "app/assets/images/contents/photo2.jpeg"
  ],
  [
    "Trying to watch the last episode of TNO, any link?",
    "app/assets/images/contents/photo3.jpg"
  ],
  [
    "Any good tips for a travel in Mexico?",
    "app/assets/images/contents/photo4.jpg"
  ],

]

content_list.each do |description, file |
  content = Content.new(user: User.first, description: description)
  media = File.open(file)
  content.file.attach(io: media, filename: 'nes.png')
  content.save!
end

comments = [
  [
    Content.first,
    User.first.id,
    "Titanic for sure..."
  ],
  [
    Content.first,
    User.first.id,
    "The wold of wall street, definitely!"
  ],
  [
    Content.first,
    User.first.id,
    "Any advise for a good burger in Paris?"
  ],
  [
    Content.first,
    User.first.id,
    "For me its the Departed"
  ],
  [
    Content.first,
    User.first.id,
    "Inception was a mind-blowing one guys!"
  ]
]

comments.each do |content, user_id, description |
  comment = Comment.create( content: content, user_id: user_id, description: description)
end

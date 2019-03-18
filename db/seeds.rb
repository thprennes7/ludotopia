# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

User.destroy_all
Article.destroy_all
Comment.destroy_all
Like.destroy_all
Status.destroy_all
Support.destroy_all
Game.destroy_all

Status.create!(name: "Membre")
Status.create!(name: "Donateur")
Status.create!(name: "Banni")
Status.create!(name: "Admin")

puts "Status create"

10.times do |i|
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Movies::HarryPotter.character, email: "thprennes#{i}@yopmail.com", password: "bonjour", status_id: Status.all.sample.id)
  i += 1
end
puts "User create"

20.times do
  Article.create!(title: Faker::Movies::HarryPotter.book, description: Faker::Movies::HarryPotter.quote)
end
puts 'Article create'

50.times do
  Comment.create!(description: Faker::Books::Lovecraft.fhtagn, user_id: User.all.sample.id, article_id: Article.all.sample.id)
end
puts 'Comment create'

50.times do
  Like.create!(article_id: Article.all.sample.id, user_id: User.all.sample.id, comment_id: Comment.all.sample.id)
end
puts "Like create"

50.times do |i|
  Support.create!(last_name: Faker::Name.last_name, email: "thprennes#{i}@yopmail.com", description: Faker::Books::Lovecraft.fhtagn, title: Faker::Movies::HarryPotter.book)
end
puts "Support messages created"

50.times do |i|
  Game.create!(title: "Game#{i}", description: Faker::Books::Lovecraft.fhtagn, link: "#")
end

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
Support.destroy_all
Game.destroy_all
# Donation.destroy.all
if Status.all.any?
	Status.create!(name: "Membre")
	Status.create!(name: "Donateur")
	Status.create!(name: "Admin")
	puts "Status create"
end

5.times do |i|
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: "damien#{i}", email: "thprennes#{i}@yopmail.com", password: "bonjour", status_id: Status.all.sample.id)
  i += 1
end
puts "User create"

10.times do
  Article.create!(title: Faker::Movies::HarryPotter.book, description: Faker::Movies::HarryPotter.quote)
end
puts 'Article create'

20.times do
  Comment.create!(description: Faker::Books::Lovecraft.fhtagn, user_id: User.all.sample.id, article_id: Article.all.sample.id)
end
puts 'Comment create'

20.times do
  Like.create!(article_id: Article.all.sample.id, user_id: User.all.sample.id)
end
puts "Like create"

10.times do |i|
  Support.create!(last_name: Faker::Name.last_name, email: "thprennes#{i}@yopmail.com", description: Faker::Books::Lovecraft.fhtagn, title: Faker::Movies::HarryPotter.book)
end
puts "Support messages created"

5.times do |i|
  Game.create!(title: "Game#{i}", description: Faker::Books::Lovecraft.fhtagn, link: "#")
end
puts "Game create"
10.times do
  Donation.create!(game_id: Game.all.sample.id, user_id: User.all.sample.id, stripe_customer_id: "lol", amount: rand(10..50))
end
puts "Donation create"

 Score.create!(game_id: Game.all.sample.id, user_id: User.all.sample.id, victory: true)
 puts "score"

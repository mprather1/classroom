# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Assignment.destroy_all

User.create(first_name: "Kill", last_name: "Bill", username: "killb", email: "killb@dead.com", password: "dead", password_confirmation: "dead", admin: false)
#User.create(first_name: "Nick", last_name: "Cage", username: "cagen", email: "nickcage@nickcageisawesome.com", password: "awesome", password_confirmation: "awesome", admin: false)
User.create(first_name: "admin", last_name: "admin", username: "admin", email: "admin@admin.com", password: "admin", password_confirmation: "admin", admin: true)
10.times do |x|
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.safe_email, password: Faker::Internet.password(8), admin: false )
end

50.times do |x|
  Assignment.create(title: Faker::Book.title, content: Faker::Lorem.paragraph(3, true, 5), user_id: Faker::Number.between(1, 10))
end

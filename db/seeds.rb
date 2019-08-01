# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
100.times do
	Movie.create(name: Faker::Movie.quote, year: Faker::Date.between(from:1990, to:2020), 
		genre: Faker::Book.genre, 
		synopsis: Faker::Lorem.sentence(word_count: 10, supplemental: true), director: Faker::Name.name, 
		allocine_string: Faker::Number.between(from: 0, to: 5), already_seen: Faker::Boolean.boolean(true_ratio: 0.2))
end

puts "100 users added"
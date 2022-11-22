# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning DB'

FootballField.destroy_all
User.destroy_all

puts 'Creating users'

john = User.create!(email: 'john@gmail.com', password: '123456')
lucy = User.create!(email: 'lucy@gmail.com', password: '123456')

puts 'users created!'

puts 'Creating football fields'
FootballField.create!(name: 'Copa Leme', address: 'Leme, Rio de Janeiro', price: 100, user: john)
FootballField.create!(name: 'Casa do Minho', address: 'Cosme Velho, Rio de Janeiro', price: 80, user: lucy)

puts 'fields created!'

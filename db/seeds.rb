# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed command (or created
# alongside the database with db:setup).
#
# Examples:
#
#  movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#  Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Dishoom',
    address: '7 Boundary St, London E2 7JE',
    phone_number: '000000',
    category: 'chinese'
  },
  {
    name: 'Pizza East',
    address: '56A Shoreditch High St, London E1 6PQ',
    phone_number: '1111111',
    category: 'italian'
  },
  {
    name: 'Arturito',
    address: 'R. Artur de Azevedo, 542 - Pinheiros, São Paulo - SP',
    phone_number: '(11) 3063-4951',
    category: 'japanese'
  },
  {
    name: 'Dom',
    address: 'R. Barão de Capanema, 549 - Jardins, São Paulo - SP',
    phone_number: '(11) 3088-0761',
    category: 'french'
  },
  {
    name: 'Sal Gastronomia',
    address: 'R. Minas Gerais, 352 - Higienópolis, São Paulo - SP',
    phone_number: '(11) 3151-3085',
    category: 'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '0647558386',
    category:     'belgian'
  },

  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '0748963525',
    category:      'italian'
  },

  {
    name:         'Reste au vent',
    address:      '30 rue des fontaines, 57400 Sarrebourg',
    phone_number:  '0748963525',
    category:      'french'
  },

   {
    name:         'Chez Dihn',
    address:      '523 rue des chinois chiants, Hong Kong',
    phone_number:  '035697756',
    category:      'chinese'
  },

  {
    name:         'Orochimaru',
    address:      '8888 rue du sushi, Tokyo',
    phone_number:  '0744463525',
    category:      'japanese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

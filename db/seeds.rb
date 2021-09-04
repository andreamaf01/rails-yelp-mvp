# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

uliassi = {
  name: 'Uliassi',
  address: 'Banchina di Levante, 6, 60019 Senigallia AN',
  category: 'italian',
  phone_number: '07165463'
}

la_pagaia = {
  name: 'La Pagaia',
  address: 'Via Bovio, 1/bis, 60019 Senigallia AN',
  category: 'italian',
  phone_number: '0717922557'
}

yum_yum_sushi = {
  name: 'Yum Yum',
  address: 'Via Arsilli, 88, 60019 Senigallia AN',
  category: 'japanese',
  phone_number: '0710964740'
}

dao_restaurant = {
  name: 'Dao Restaurant',
  address: 'Viale Jonio, 328/330, 00141 Roma RM',
  category: 'chinese',
  phone_number: '06 8719 7573'
}

osteria_francescana = {
  name: 'Osteria Francescana',
  address: 'Via Stella, 22, 41121 Modena MO',
  category: 'italian',
  phone_number: '059 223912'
}

[ uliassi, la_pagaia, yum_yum_sushi, dao_restaurant, osteria_francescana ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"



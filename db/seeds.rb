# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

Restaurant.create(name: 'Chez Leon', address: '5 kensignton road', category: 'belgian', phone_number: "0323232323")
Restaurant.create(name: 'Mauris', address: '20 kensignton road', category: 'belgian', phone_number:"03232320023")
Restaurant.create(name: 'Flower Imperial', address: '5 kensignton road', category: 'chinese', phone_number:"0320232323")
Restaurant.create(name: 'Fouquets', address: '523 kensignton road', category: 'french', phone_number:"0323232320")
Restaurant.create(name: 'Flams', address: '5 kensignton road', category: 'belgian', phone_number:"0323232023")
Restaurant.create(name: 'Pizza Hut', address: '335 kensignton road', category: 'italian', phone_number:"0393232323")

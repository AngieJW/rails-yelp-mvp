# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
names = ['La Rotonde', 'Queen Victoria', "Mama's Kitchen", 'Blue Jay', "Paul's"]
addresses = [ 'Hyde Park LONDON', "Times Square NEW YORK", '21 rue Haxo MARSEILLE', 'Rue du Panier MARSEILLE', "Avenue du Louvre PARIS"]
Restaurant.create(name: "Monsieur WU", category: 'chinese', address: '18 rue Damrémont PARIS')
5.times { Restaurant.create(name: names.sample, category: Restaurant::CATEGORIES.sample, address: addresses.sample) }

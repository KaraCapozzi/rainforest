# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.create(name:"ring", description:"shiny, silver, unique", price_in_cents:3000.00)
Product.create(name:"bracelet", description:"shiny, red, unique", price_in_cents:4000.00)
Product.create(name:"necklace", description:"shiny, gold, unique", price_in_cents:5000.00)
Product.create(name:"earrings", description:"shiny, ruby, unique", price_in_cents:6000.00)

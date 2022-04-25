# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Category.create(name: 'Cow Milk', desc: 'milk desc')
Category.create(name: 'Goat Milk', desc: 'milk desc')
Product.create(name: 'Milk', brand: 'Aavin', price: '60', desc: 'Milk', is_active: true, category_id: 1)
Product.create(name: 'Milk', brand: 'Aavin', price: '60', desc: 'Milk', is_active: true, category_id: 2)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Shirt = Product.create(name: 'Shirt', price: 2.99, url: 'http://www.google.com')
IPhone = Product.create(name: 'IPhone', price: 3.75, url: 'http://www.google.com')
Hoodie = Product.create(name: 'Hoodie', price: 3.99, url: 'http://www.google.com')

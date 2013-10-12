# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Shirt = Product.create(name: 'Shirt', price: 2.99, url: 'http://pjb3.github.io/betastore/products/shirt.jpg')
IPhone = Product.create(name: 'IPhone', price: 3.75, url: 'http://pjb3.github.io/betastore/products/iphone_case.jpg')
Hoodie = Product.create(name: 'Hoodie', price: 3.99, url: 'http://pjb3.github.io/betastore/products/hoodie.jpg')
Journal = Product.create(name: 'Journal', price: 3.99, url: 'http://pjb3.github.io/betastore/products/journal.jpg')
Sticker = Product.create(name: 'Sticker', price: 3.99, url: 'http://pjb3.github.io/betastore/products/sticker.jpg')
Hat = Product.create(name: 'Hat', price: 3.99, url: 'http://pjb3.github.io/betastore/products/hat.jpg')


Tuan = Customer.create(name: 'Tuan', email: 'tuan@tuan.com', password:'secret')
Tuan = Customer.create(name: 'Stephen', email: 'Stephen@stephen.com', password:'secret')
Tuan = Customer.create(name: 'Tony', email: 'Tony@tony.com', password:'tony')
Tuan = Customer.create(name: 'Rob', email: 'Rob@rob.com', password:'secret')
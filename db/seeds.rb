# useless_variable_assignment = Product.create(name: 'Shirt', price: 2.99, url: 'http://pjb3.github.io/betastore/products/shirt.jpg')
# useless_variable_assignment = Product.create(name: 'IPhone', price: 3.75, url: 'http://pjb3.github.io/betastore/products/iphone_case.jpg')
# useless_variable_assignment = Product.create(name: 'Hoodie', price: 3.99, url: 'http://pjb3.github.io/betastore/products/hoodie.jpg')
# useless_variable_assignment = Product.create(name: 'Journal', price: 3.99, url: 'http://pjb3.github.io/betastore/products/journal.jpg')
# useless_variable_assignment = Product.create(name: 'Sticker', price: 3.99, url: 'http://pjb3.github.io/betastore/products/sticker.jpg')
# useless_variable_assignment = Product.create(name: 'Hat', price: 3.99, url: 'http://pjb3.github.io/betastore/products/hat.jpg')


# useless_variable_assignment = Customer.create(name: 'Tuan', email: 'tuan@tuan.com', password:'secret')
# useless_variable_assignment = Customer.create(name: 'Stephen', email: 'Stephen@stephen.com', password:'secret')
# useless_variable_assignment = Customer.create(name: 'Tony', email: 'Tony@tony.com', password:'tony')
# useless_variable_assignment = Customer.create(name: 'Rob', email: 'Rob@rob.com', password:'secret')

# There is no use to assigning each customer to variables you are not doing anything with them, I renamed to useless_variable_assignment

ARRAY_OF_IMGS = ['http://pjb3.github.io/betastore/products/shirt.jpg', 'http://pjb3.github.io/betastore/products/iphone_case.jpg', 'http://pjb3.github.io/betastore/products/hoodie.jpg', 'http://pjb3.github.io/betastore/products/journal.jpg', 'http://pjb3.github.io/betastore/products/sticker.jpg', 'http://pjb3.github.io/betastore/products/hat.jpg']

10.times do |x|
Product.create(name: Faker::Commerce.product_name, price: rand(0.99...9999.0).round(2), url: ARRAY_OF_IMGS.sample)
p "product created"
end
  

10.times do |x|
Customer.create(name: Faker::Name.name, email: Faker::Internet.email, password:'secret', password_confirmation: 'secret')
p "customer created"
end

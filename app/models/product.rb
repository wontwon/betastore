class Product < ActiveRecord::Base
  #validations?

  validates_presence_of :name, :price, :url

end

class Order < ActiveRecord::Base
  belongs_to :customer
  #validations?
end

class Order < ActiveRecord::Base
  belongs_to :customer
  
  validates_presence_of :customer, :id
end

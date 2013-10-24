class Order < ActiveRecord::Base
  belongs_to :customer
  
  validates_presence_of :customer, :id

  def self.recent
    where("placed_at > ?", 7.days.ago)
  end

  def self.by(customer)
    where(customer_id: customer.id)
  end


end

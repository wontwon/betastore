class Return < ActiveRecord::Base
	belongs_to :customer
	has_many :products

end
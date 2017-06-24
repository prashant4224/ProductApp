class Product < ApplicationRecord
	validates_presence_of :name
	validates_presence_of :price
	validates_presence_of :status
	validates_presence_of :inward_date
	validates_presence_of :type
	validates_presence_of :description

	def self.price_sum(productType)
		where(type: productType).sum(:price)
	end
end

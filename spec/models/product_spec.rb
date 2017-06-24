require "rails_helper"

RSpec.describe Product, :type => :model do
  it "sum of products based on type" do
  	product1 = Product.create!(name: "New Pen", price: 183.6, color: "Blue", status: 1, inward_date: Date.today, type: "Pen", description: "New product Pen")
	product2 = Product.create!(name: "New Pen", price: 123.4, color: "Red", status: 0, inward_date: Date.today, type: "Pen", description: "New product Pen")

	expect(Product.price_sum("Pen")).to eq(Product.sum(:price))
  end
end
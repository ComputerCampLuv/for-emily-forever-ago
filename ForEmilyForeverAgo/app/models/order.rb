class Order < ApplicationRecord
  has_many :line_items
  has_many :products, through: :line_items

  def total
    total = 0
    self.line_items.each do |line|
      total += line.total
    end
    total
  end

  def fill_order
    Product.all.each do |product|
      LineItem.create(:quantity => 0, :unit_price => product.price, :product_id => product.id, :order_id => self.id)
    end
  end
end

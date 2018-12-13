class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  def total
    self.unit_price * self.quantity
  end
end

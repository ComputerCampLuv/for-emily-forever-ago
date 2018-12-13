class Product < ApplicationRecord
  has_many :line_items
  has_many :orders, through: :line_items

  validates :name, :price, presence: true
  validates :price, numericality: true
end

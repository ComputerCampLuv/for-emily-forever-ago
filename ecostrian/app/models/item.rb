class Item < ApplicationRecord
  has_many :lines
  has_many :days, through: :lines
end

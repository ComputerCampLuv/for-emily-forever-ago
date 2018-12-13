class Item < ApplicationRecord
  has_many :lines, dependent: :destroy
end

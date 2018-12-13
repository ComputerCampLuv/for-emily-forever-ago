class Day < ApplicationRecord
  has_many :lines
  has_many :items, through: :lines
  belongs_to :user
end

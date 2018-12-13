class Order < ApplicationRecord
  has_many :lines, dependent: :destroy
  has_many :items, through: :lines
  belongs_to :user
  validates :ordered_at, presence: true
  accepts_nested_attributes_for :lines, reject_if: :all_blank, allow_destroy: true
end

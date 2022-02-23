class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :phone_number, :address, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian),
    message: "%{value} is not a valid category" }, allow_nil: false
end

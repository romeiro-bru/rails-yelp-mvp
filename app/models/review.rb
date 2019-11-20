class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true
  validates :restaurant, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than: 6 }

  belongs_to :restaurant
end

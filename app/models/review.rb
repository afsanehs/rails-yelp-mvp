class Review < ActiveRecord::Base
  # A review must belong to a restaurant.
  belongs_to :restaurant
  # A review must have content and a rating.
  validates :content, :rating, presence: true
  # A review’s rating must be a number between 0 and 5.
  validates :rating, numericality: { only_integer: true }, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end

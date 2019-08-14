class Review < ApplicationRecord
  RATING = (0..5).to_a
  # A review must have a parent restaurant.
  belongs_to :restaurant
  # A review must have content and a rating. The rating should be a number between 0 and 5.
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: RATING }, numericality: { only_integer: true }
end

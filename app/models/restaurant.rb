class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  # A review must have a parent restaurant.
  # When a restaurant is destroyed, all of its reviews should be destroyed as well.
  has_many :reviews, dependent: :destroy
  # A restaurant must have at least a name, an address and a category.
  # The restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"]
  # When a restaurant is destroyed, all of its reviews should be destroyed as well.
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }# inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end

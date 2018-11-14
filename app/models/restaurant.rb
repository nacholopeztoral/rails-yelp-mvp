class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian) },
            presence: true

end
#   has a name
#   has an address
#   has a phone number (FAILED - 1)
#   has a category
#   name cannot be blank (FAILED - 2)
#   address cannot be blank (FAILED - 3)
#   category cannot be blank (FAILED - 4)
#   neptunian is not a valid category (FAILED - 5)
#   chinese is a valid category (FAILED - 6)
#   italian is a valid category (FAILED - 7)
#   japanese is a valid category (FAILED - 8)
#   french is a valid category (FAILED - 9)
#   belgian is a valid category (FAILED - 10)
#   has many reviews (FAILED - 11)
#   should destroy child reviews when destroying self (FAILED - 12)

# Review
#   has a content
#   has a rating (stored as integer)
#   content cannot be blank (FAILED - 13)
#   rating cannot be blank (FAILED - 14)
#   parent restaurant cannot be nil (FAILED - 15)
#   rating should be an integer (FAILED - 16)
#   rating should be a number between 0 and 5 (FAILED - 17)


# The restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"].
# A review must have a parent restaurant.
# A review must have content and a rating. The rating should be a number between 0 and 5.
# When a restaurant is destroyed, all of its reviews should be destroyed as well.

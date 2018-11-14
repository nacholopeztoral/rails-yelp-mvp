class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, inclusion: { within: 0..5 }, presence: true,  numericality: true
  validates :content, presence: true
end

class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  # validates_numericality_of :rating, greater_than_or_equal_to: 1, less_than_or_equal_to: 5, message: 'Between 1 & 5', presence: true
  validates :rating, numericality: { only_integer: true }
  validates_inclusion_of :rating, :in => 0..5
  # For example, a review with a rating of 2.5 should be invalid!
end

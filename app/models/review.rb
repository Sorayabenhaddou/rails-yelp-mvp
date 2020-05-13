class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  validates_numericality_of :rating, :greater_than_or_equal_to => 0.0, :less_than_or_equal_to => 6.0
  validates_inclusion_of :rating, :in => (0.0..5.0)
end

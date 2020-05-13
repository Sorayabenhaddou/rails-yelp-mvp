class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :category, presence: true
  validates :address, presence: true
  validates_exclusion_of :category, :in => %w(neptunian)
end



class Car < ApplicationRecord
  has_many :reviews
  has_many :favourites
  belongs_to :owner
  validates :brand, :model, :year, :fuel, presence: true
  validates :year, numericality: { only_integer: true }
end

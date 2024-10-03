class Owner < ApplicationRecord
  has_many :cars
  validates :nickname, presence: true
  validates :nickname, uniqueness: true
end

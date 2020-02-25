class Tool < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :category, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :photo, presence: true
  validates :location, presence: true
end

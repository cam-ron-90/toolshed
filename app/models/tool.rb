class Tool < ApplicationRecord
  CATEGORY = %w[power hand automotive plumbing gardening other]
  belongs_to :user
  has_many :bookings

  validates :category, inclusion: { in: CATEGORY }
  validates :price, presence: true
  validates :description, presence: true
  validates :photo, presence: true
  validates :location, presence: true
end

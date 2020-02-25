class Tool < ApplicationRecord
  belongs_to :user
  CATEGORY = %w[power hand automotive plumbing gardening other]
  validates :category, inclusion: { in: CATEGORY }
  validates :price, presence: true
  validates :description, presence: true
  validates :photo, presence: true
  validates :location, presence: true
end

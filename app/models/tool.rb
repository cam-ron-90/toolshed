class Tool < ApplicationRecord
  CATEGORY = ['Power Tools', 'Hand Tools', 'Automotive Tools', 'Plumbing Tools', 'Gardening Tools', 'Other Tools']
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  validates :category, inclusion: { in: CATEGORY }
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :location, presence: true
  #some code change
end

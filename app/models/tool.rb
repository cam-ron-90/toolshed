class Tool < ApplicationRecord
  belongs_to :user

  validates :category, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :photo, presence: true
  validates :location, presence: true
end

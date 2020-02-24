class Booking < ApplicationRecord
  belongs_to :tool
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :price_total, presence: true
  validates :user_id, presence: true, uniqueness: { scope: :tool_id }
  validates :tool_id, presence: true, uniqueness: { scope: :user_id }
end

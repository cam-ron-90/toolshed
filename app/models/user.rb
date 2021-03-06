class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :tools, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :bio, presence: true
  validates :phone_number, presence: true
end

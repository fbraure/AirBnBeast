class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, dependent: :destroy
  has_many :offers
  has_many :bookings, -> { where(status: 1) }
  has_many :booked_offers, through: :bookings, source: :offer
  # has_many :cancelled_bookings, -> { where(status: 0) }, class_name: "booking"
  # has_many :cancelled_booked_offers, through: :cancelled_bookings, source: :offer
  validates :avatar_url, presence: true
end

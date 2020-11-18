class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, dependent: :destroy
  has_many :offers
  has_many :bookings
  has_many :booked_offers, through: :bookings, source: :offer
  validates :avatar_url, presence: true
end

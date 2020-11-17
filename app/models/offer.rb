class Offer < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  validates :date, presence: true
end

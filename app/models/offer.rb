class Offer < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  validates :date, presence: true
  validates :photo_url, presence: true
  validates :target, presence: true
end

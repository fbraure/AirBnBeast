class Offer < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :user

  include PgSearch::Model
  # Following Gem Setup
  pg_search_scope :search_by_title_and_decription,
    against: [:title, :description],
    using: {
      tsearch: { prefix: true } # Allowing approx search
    }

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  validates :date, presence: true
  validates :photo_url, presence: true
end

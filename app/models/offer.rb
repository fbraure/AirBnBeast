 class Offer < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_one_attached :photo_url

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

  def is_past?
    self.date < Date.current
  end

  def is_booked?
    self.bookings.any?{ |booking| booking.status == 1}
  end
end

class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  # 1 : liaison active, 0:  réservation annulée
  validates :status, presence: true, numericality: { in: [0, 1] }
  validates :target, presence: true
end

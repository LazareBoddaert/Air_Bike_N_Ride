class Bicycle < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :category, :price_per_day, :size, :rating, presence: true
  # validates :photo, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { in: 0..5}
  validates :size, numericality: { in: 10..70}
  validates :title, length: { maximum: 30 }
  validates :category, inclusion: { in: ['enfant', 'VTC', 'ville', 'cargo', 'tandem'] }
end

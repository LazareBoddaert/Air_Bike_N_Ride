class Bicycle < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :category, :price_per_day, :size, :photo, presence: true
  validates :size, numericality: { in: 10..70}
  validates :title, length: { maximum: 30 }
  validates :category, inclusion: { in: ['enfant', 'VTC', 'ville', 'cargo', 'tandem'] }
end

class Bicycle < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  has_one_attached :photo
  validates :title, :category, :price_per_day, :size, :address, presence: true
  # validates :photo, presence: true
  validates :size, numericality: { in: 10..70 }
  validates :title, length: { maximum: 30 }
  validates :category, inclusion: { in: ['Child', 'City', 'Cargo', 'Tandem', 'Mountain', 'Road'] }
end

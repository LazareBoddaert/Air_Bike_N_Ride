class Bicycle < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  validates :title, :category, :price_per_day, :size, presence: true
  # validates :photo, presence: true
  validates :size, numericality: { in: 10..70 }
  validates :title, length: { maximum: 30 }
  validates :category, inclusion: { in: ['enfant', 'VTC', 'ville', 'cargo', 'tandem'] }

  include PgSearch::Model
  pg_search_scope :search_by_category_and_size,
    against: [ :category, :size ],
    using: {
      tsearch: { prefix: true } #
    }
end

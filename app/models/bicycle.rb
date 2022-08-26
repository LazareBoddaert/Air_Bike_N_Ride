class Bicycle < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_one_attached :photo
  # validates :photo, presence: true
  validates :title, :category, :price_per_day, :size, :address, presence: true
  validates :size, numericality: { in: 10..70 }
  validates :title, length: { maximum: 30 }
  validates :category, inclusion: { in: ['Child', 'City', 'Cargo', 'Tandem', 'Mountain', 'Road'] }

  def total_rating
    d = 0
    reviews.each do |rev|
      d += rev.rating.to_f
    end
    if reviews.length.zero?
      t = 0
    else
      t = (d/reviews.length).round(1)
    end
  end

  include PgSearch::Model
  pg_search_scope :search_by_category_and_size,
    against: [ :category, :size ],
    using: {
      tsearch: { prefix: true }
    }
end

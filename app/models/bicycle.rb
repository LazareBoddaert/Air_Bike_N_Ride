class Bicycle < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :title, :category, :price_per_day, :size, presence: true
  # validates :photo, presence: true
  validates :size, numericality: { in: 10..70 }
  validates :title, length: { maximum: 30 }
  validates :category, inclusion: { in: ['enfant', 'VTC', 'ville', 'cargo', 'tandem'] }

  def total_rating
    d = 0
    reviews.each do |rev|
      d += rev.rating
    end
    if Review.all.length.zero?
      t = 0
    else
      t = (d/Review.all.length).to_f
    end
  end
end

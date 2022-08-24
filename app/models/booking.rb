class Booking < ApplicationRecord
  belongs_to :bicycle
  belongs_to :user
  validates :start_date, :end_date, presence: true
  # end_date must be after start_date
  validates :end_date, comparison: { greater_than: :start_date }
  # start_date must be after today's date
  validates :start_date, comparison: { greater_than: Date.today }


  def duration
    # Calculate the duration of the rental
    (end_date - start_date).to_i
  end
  
  def total_price
    # Multiply duration of rental by the bicycle's price per day
    duration * bicycle.price_per_day
  end
end

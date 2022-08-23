class Booking < ApplicationRecord
  belongs_to :bicycle
  belongs_to :user
  validates :start_date, :end_date, presence: true

  def total_price
    # Calculate the duration of the rental
    duration = (self.end_date - self.start_date).to_i

    # Multiply duration of rental by the bicycle's price per day
    duration * self.bicycle.price_per_day
  end
end

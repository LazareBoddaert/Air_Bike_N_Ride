class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { in: 0..5 }
  validates :content, :rating, presence: true
end

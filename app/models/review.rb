class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  belongs_to :bicycle
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { in: 0..5 }
  validates :content, presence: true
end

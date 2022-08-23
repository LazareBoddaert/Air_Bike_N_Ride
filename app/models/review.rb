class Review < ApplicationRecord
  belongs_to :user
  belongs_to :bicycle
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { in: 0..5 }
end

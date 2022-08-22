class Booking < ApplicationRecord
  belongs_to :bicycle
  belongs_to :user
end

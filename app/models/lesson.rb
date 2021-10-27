class Lesson < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :bookings
  belongs_to :location, :optional => true
end

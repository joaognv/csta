class Spot < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  mount_uploader :photo, PhotoUploader
end

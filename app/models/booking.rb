class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :spot
  validates :time_arrive, presence: true
  validates :time_leave, presence: true
  validates :status, inclusion: { in: ["Pending confirmation", "Confirmed", "Canceled", "Declined"] }
end

class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :football_field
end

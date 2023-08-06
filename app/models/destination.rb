class Destination < ApplicationRecord
    # belongs_to :itinerary
    has_many :itineraries
    has_many :users, through: :itineraries
end

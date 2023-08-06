class Destination < ApplicationRecord
    # belongs_to :itinerary
    has_many :Itineraries
end

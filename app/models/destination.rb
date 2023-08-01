class Destination < ApplicationRecord
    belongs_to :itinerary
    has_many :users, through: :itinerary
end

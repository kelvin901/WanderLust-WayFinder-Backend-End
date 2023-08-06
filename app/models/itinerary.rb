class Itinerary < ApplicationRecord
  belongs_to :user
  # has_many :destinations
  belongs_to :destinations
end

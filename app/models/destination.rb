class Destination < ApplicationRecord
    has_many :itineraries

    validates :name, presence: true
    validates :description, presence: true
    validates :location, presence: true

  end
  


Rails.application.routes.draw do
  # User Registration and Profile Creation
  resources :users, only: [:create, :show, :update]

  # Destination Recommendation Engine
  resources :destinations, only: [:index]

  # Itinerary Creation and Management
  resources :itineraries, only: [:create, :show, :update, :destroy]

  # Curated Travel Information
  resources :destination_infos, only: [:create, :show, :update, :destroy]

  # External Booking Integration - Not specified in the MVP, you can add it separately.

  # Other routes for custom actions may be defined here.

  # Root route (optional)
  root to: 'welcome#index'
end

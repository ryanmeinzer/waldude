Rails.application.routes.draw do
  root to: 'attendees#new', as: 'home'
  get '/auth/facebook/callback' => 'attendees#create'
  resources :locations
  resources :plans
  resources :attendees
  resources :stages
  resources :shows do
    # nested resource for locations
    resources :locations do
      # nested resource for attendees
      resources :attendees
    end
  end
  resources :artists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

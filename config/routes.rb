Rails.application.routes.draw do
  get "public/show"
  resources :comments
  resources :photos
  resources :relationships
  devise_for :users
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  get "/manifest.json" => "rails/pwa#manifest"
  get "/service-worker.js" => "rails/pwa#service_worker"

  # Defines the root path route ("/")
  # root "posts#index"
  get "/love/:id", to: "public#show", as: :public_relationship
  get "/theme/:theme", to: "theme#switch", as: :switch_theme
end

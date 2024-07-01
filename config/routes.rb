Rails.application.routes.draw do
  resources :wind_sessions
  get 'wind_sessions/index'
  get 'wind_sessions/new'
  get 'wind_sessions/edit'
  get 'wind_sessions/show'
  get 'wind_sessions/create'
  get 'wind_sessions/update'
  get 'wind_sessions/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "wind_sessions#index"
end

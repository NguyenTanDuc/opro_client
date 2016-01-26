Rails.application.routes.draw do
  root "pages#index"
  get "/oauth/callback", to: "sessions#create"
  resources :api_tests, only: [:index]
end

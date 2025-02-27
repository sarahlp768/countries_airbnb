Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :countries do
    resources :bookings
  end

  get "up" => "rails/health#show", as: :rails_health_check
end

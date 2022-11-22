Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :football_fields, only: [:index, :show]
  resources :bookings, only: [:new]
end

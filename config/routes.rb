Rails.application.routes.draw do
  get 'reviews/create'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :bicycles do
    resources :bookings, only: %I[new create show]
    resources :reviews, only: :create
  end

  resources :bookings, only: :destroy
end

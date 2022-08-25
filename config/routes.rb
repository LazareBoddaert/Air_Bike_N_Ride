Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :bicycles do
    resources :bookings, only: %I[new create show]
  end

  resources :bookings, only: %I[index destroy] do
    resources :reviews, only: [:new, :create]
  end

  get "/confirm/:id", to: "bookings#confirm"
  get "/cancel/:id", to: "bookings#cancel"
end

Rails.application.routes.draw do
  resources :types
  resources :force_units
  resources :forces
  resources :products
  resources :models
  resources :units
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

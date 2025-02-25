Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root to: "rooms#index"
   resources :users, only: [:edit, :update]
   resources :rooms, only: [:new, :create, :destroy] do
     resources :messages, only: [:index, :create]
   end
end

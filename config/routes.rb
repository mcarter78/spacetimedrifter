Rails.application.routes.draw do
  resources :users
  resources :destinations, only: [:index, :show]
  resources :posts, only: [:create, :update, :destroy]
end

Rails.application.routes.draw do
  resources :users
  resources :destinations, only: [:index, :show]
end

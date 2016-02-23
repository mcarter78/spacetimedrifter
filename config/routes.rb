Rails.application.routes.draw do
  root to: "home#index"
  resources :users
  resources :destinations, only: [:index, :show]
  get "/destinations/:id/posts/new", to: "posts#new", as: :new_post
  post "/destinations/:id/posts", to: "posts#create", as: :destination_posts
  delete "/destinations/:id/posts/:id", to: "posts#destroy"
  get "/sign_in", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"
end

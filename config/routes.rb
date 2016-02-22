Rails.application.routes.draw do
  resources :users
  resources :destinations, only: [:index, :show]
  get "/destinations/:id/posts/new", to: "posts#new", as: :new_post
  post "/destinations/:id/posts", to: "posts#create", as: :destination_posts
  delete "/destinations/:id/posts/:id", to: "posts#destroy"
end

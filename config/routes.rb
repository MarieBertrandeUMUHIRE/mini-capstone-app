Rails.application.routes.draw do
  get "/products", to:'products#index'
  get "/products/new", to: 'products#new'
  get "/products/:id", to:'products#show'
  post "/products", to: 'products#create'
  get "/products/:id/edit", to:'products#edit'
  patch "/products/:id", to:'products#update'
  delete "/products/:id", to: 'products#destroy'
  get "/signup" => "users#new"
  post "/products/search", to: 'products#search'
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
  get "/images", to:'images#new'
  post "/images", to:'images#create'
  get "/orders", to:'orders#new'
  post "/carted_products", to:'carted_products#create'
  get "/carted_products/:id", to:'carted_products#show'

end



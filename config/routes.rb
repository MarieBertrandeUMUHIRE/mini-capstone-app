Rails.application.routes.draw do
  get "/products", to:'products#index'
  get "/products/new", to: 'products#new'
  get "/products/:id", to:'products#show'
  post "/products", to: 'products#create'
  get "/products/:id/edit", to:'products#edit'
  patch "/products/:id", to:'products#update'
  delete "/products/:id", to: 'products#destroy'
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
  get "/images", to:'images#new'
  post "/images", to:'images#create'
  get "/orders", to:'orders#new'
  post "/orders", to:'orders#create'
end



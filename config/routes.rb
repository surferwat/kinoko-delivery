Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#index"

  get "subscriptions/new", to: "subscriptions#new", as: "new_subscription"
  get "subscriptions/:id", to: "subscriptions#show"
  post "subscriptions", to: "subscriptions#create"

  resources :boxes

  get "settings", to: "settings#index"

  get "sign-up", to: "registration#new"
  post "sign-up", to: "registration#create"
  
  get "sign-in", to: "sessions#new"
  post "sign-in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  get "companies", to: "company#index"
  get "companies/new", to: "company#new", as: "new_company"
  post "companies", to: "company#create"
  get "companies/:id", to: "company#show"
  get "companies/:id/edit", to: "company#edit", as: "edit_company"
  put "companies/:id", to: "company#update", as: "company"

  get "products", to: "products#index"
  get "companies/:company_id/products/new", to: "products#new", as: "new_company_product"
  post "companies/:company_id/products", to: "products#create", as: "company_products"
  get "products/:id", to: "products#show"
  get "products/:id/edit", to: "products#edit", as: "edit_product"
  put "products/:id", to: "products#update", as: "product"

  get "profile", to: "users#edit", as: "edit_user"
  patch "profile", to: "users#update", as: "users"

  get "password", to: "passwords#edit", as: "edit_password"
  patch "password", to: "passwords#update"

  get "policies", to: "policies#index"
  get "terms", to: "terms#index"
end

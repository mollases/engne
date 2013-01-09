Engne::Application.routes.draw do

  devise_for :members

 # get "log_in" => "sessions#new", :as => "log_in"
 # get "log_out" => "sessions#destroy", :as => "log_out"
 # get "sign_up" => "members#new", :as => "sign_up"
  get "index" => "home#index"
  
  get "categories/new" => "home#index"
  get "/categories/:id/edit(.:format)" => "categories#show"
  delete "/categories/:id" => "categories#show"

  root :to => "home#index", :as => "index"
  
  resources :categories
  resources :projects

  end

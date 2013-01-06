Engne::Application.routes.draw do

  devise_for :members

  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "sign_up" => "members#new", :as => "sign_up"
  get "index" => "home#index"
  

  root :to => "home#index"
  
  resources :sessions
  
  resources :categories

  resources :projects
  end

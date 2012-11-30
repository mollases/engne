Engne::Application.routes.draw do
  get "scratch_test/home"

  get "scratch_test/index"

  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "sign_up" => "members#new", :as => "sign_up"
  get "index" => "home#index"
  get "test" => "scratch_test#home"
  get "test_one" => "scratch_test#index"

  root :to => "home#index"
  
  resources :sessions
  
  resources :categories

  resources :projects

  resources :members

  end
